/******************************************************
 * 实验名称：主机接收+电机PID+上传云平台实验
 *
 * 实验准备：龙芯1C102开发板，ESP8266模块，通讯底板，
            温湿度传感器，4P小白线，3P小白线
 *
 * 实验接线：ESP8266模块接到龙芯1C102开发板的UART0接口，
            使用通讯底板连接ESP8266模块的TXD和RXD接口
            到开发板的GPIO_Pin_06和GPIO_Pin_07接口，
 *
 * 实验现象：通过ESP8266上传温湿度数据至云平台
******************************************************/
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "esp8266.h"
#include "ZigBee.h"
#include "ls1c102_interrupt.h"
#include "iic.h"
#include "UserGpio.h"
#include "oled.h"
#include "dht11.h"
#include "BEEP.h"
#include "PID.h"
#include "led.h"
#include "queue.h"
#include "ls1x_clock.h"
#include "ls1c102_ptimer.h"

#define LED 20

char str[50];
static uint16_t temp;
static uint16_t humi;
static uint8_t fire;
static uint16_t air;
static uint8_t fs_state;

uint8_t data[8] = {0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBB}; //温湿度数据上云平台    数据包

uint8_t received_data = 0;

uint8_t Read_Buffer[255]; // 设置接收缓冲数组
uint8_t Read_length;

int pwm_cmp=10;     // 电机的pwm波的输入大小
int motor_rp=0;    // 表示电机的转动方向：0为反转，1为正转

unsigned char x=0,y=0;
uint32_t counter = 0;
int16_t v;
int16_t r = 0;
int t;

int main(int arg, char *args[])
{
    SystemClockInit(); // 时钟等系统配置
    GPIOInit();        // io配置
    OLED_Init();
    Uart1_init(9600);
    timer_init(5);
    BEEP_Init();
    EnableInt(); // 开总中断
    DL_LN3X_Init(DL_LN3X_NODE, CHANNEL, Network1_Id);
    Queue_Init(&Circular_queue);
    
    while (1)
    {
       
        sprintf(str, "温度: %2d ℃", data[1]);
        OLED_Show_Str(5, 4, str, 16);    // OLED显示界面
        sprintf(str, "湿度: %2d %%RH", data[2]);
        OLED_Show_Str(5, 6, str, 16);    // OLED显示界面
        sprintf(str, "Fire: %d", data[3]);
        OLED_Show_Str(5, 0, str, 16); // OLED显示界面
        sprintf(str, "Air: %d ppm", data[6]);
        OLED_Show_Str(5, 2, str, 16); // OLED显示界面

        if (Queue_isEmpty(&Circular_queue) == 0) // 判断队列是否为空，即判断是否收到数据
        {
            Read_length = Queue_HadUse(&Circular_queue);           // 返回队列中数据的长度
            Queue_Read(&Circular_queue, Read_Buffer, Read_length); // 读取队列缓冲区的值到接收缓冲区
            if(Read_Buffer[6]==2)                              // 读取第一个zigbee（从机1）发送的值
            {
                temp = Read_Buffer[7] << 8 | Read_Buffer[8];
                humi = Read_Buffer[9] << 8 | Read_Buffer[10];
                fs_state = Read_Buffer[11];
            }
            if(Read_Buffer[6]==3)                             // 读取第二个zigbee（从机2）发送的值
            {
                fire = Read_Buffer[7];
                air = Read_Buffer[8] << 8 | Read_Buffer[9];
            }
            if(fire == 1 || (temp / 10) >29)                 // 当检测到火焰或者温度超过29℃时，立即停止电机转动
            {
                TIM_SetCompare1(13,0);
                TIM_SetCompare1(14,0);
                v = 0;
            }
            else
            {
                TIM_SetCompare1(13,pwm_cmp);               // 提供电机转速
                TIM_SetCompare1(14,0);
            }
        }
        else
        {
            memset(Read_Buffer, 0,  255); // 填充接收缓冲区为0
        }
        x = gpio_get_pin(GPIO_PIN_14);
        y = gpio_get_pin(GPIO_PIN_15);
        if(x==0)   //这里判断检测到的是否是下降沿
		{
			if(y==0)   r++;//B相的电平如果是低，电机就是正转加1
			
		}
		else                  //上升沿
		{ 
			if(y==1)    r++; //B相电平如果为高，电机就是正转加1
			
		}
        int Distance= 2*3*340/(4*11*30);   // 转一圈的距离
        if(t > 30)
        {
            v = (r*200*Distance) / t;
            t = 0;
            r = 0;
        }
        pwm_cmp=pid1(v,20);               // 电机PID算法，预定转速为20r/s
        /*sprintf(str,"v:%d r/s",v);
        OLED_Show_Str(10, 0, str, 16);*/

        
        //data[6] = v;
         data[1] = temp / 10;     //将温湿度数据存放至数据包中
        data[2] = humi / 10;
        data[3] = fire;
        data[4] = v;
        data[5] = fs_state;
        data[6] = air;
        //data[6] = (data[2] + data[3] + data[4] + data[5]) % 256;   //计算校验和
        delay_ms(500);
        UART_SendDataALL(UART1, data, 8);
    }

    return 0;
}
