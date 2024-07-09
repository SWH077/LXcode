/******************************************************
 * 实验名称：温湿度监测+风扇控制实验
 *
 * 实验准备：龙芯1C102开发板，zigbee模块，通讯底板，USB-MINI线
            温湿度传感器，杜邦线
 *
 * 实验接线：
 *
 * 实验现象：接收zigbee模块传回的温湿度数据
******************************************************/
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ZigBee.h"
#include "ls1c102_interrupt.h"
#include "iic.h"
#include "UserGpio.h"
#include "oled.h"
#include "dht11.h"
#include "BEEP.h"
#include "key.h"
#include "led.h"
#include "queue.h"
#include "ls1x_clock.h"
#include "ls1c102_ptimer.h"

char str[50];
static uint16_t temperature;
static uint16_t humidity;
int pwm_cmp = 0;
int gpio_state0;

uint8_t received_data = 0;
uint8_t data[6];
uint8_t Read_Buffer[255]; // 设置接收缓冲数组
uint8_t Read_length;
int main(int arg, char *args[])
{
    
    SystemClockInit(); // 时钟等系统配置
    GPIOInit();        // io配置
    OLED_Init();
    timer_init(5);
    
    EnableInt(); // 开总中断
    DL_LN3X_Init(DL_LN3X_NODE,CHANNEL,Network1_Id);//设置为主机（接收端），设置信道为0x12，网络地址为0x0003
    Queue_Init(&Circular_queue);
    BEEP_Init();
    
    DHT11_Init();                               // DHT11初始化  

    while (1)
    {
        DHT11_Read_Data(&temperature, &humidity);      // 读取传感器中温湿度的值

        data[0] = 2;
        data[1] = temperature / 256;
        data[2] = temperature % 256;
        data[3] = humidity / 256;
        data[4] = humidity % 256;
        data[5] = gpio_state0;                        // 打包数据
        
        int tmp = temperature / 10;
        sprintf(str, "温度: %2d ℃", temperature / 10);
        OLED_Show_Str(5, 4, str, 16);    // OLED显示界面
        sprintf(str, "湿度: %2d %%RH", humidity / 10);
        OLED_Show_Str(5, 6, str, 16);    // OLED显示界面
        sprintf(str, "fs: %d ", data[5]);
        OLED_Show_Str(5, 2, str, 16);    // OLED显示界面

        delay_ms(200);
        DL_LN3X_Send(data, 6, ZIGBEE_RX_NODE);

        if(tmp>28)              // 面对不一样的温度值，设置不一样的散热功率
        {
            pwm_cmp=15;
            TIM_SetCompare1(13, pwm_cmp);
        }
        else if(tmp>25)
        {
           pwm_cmp=10;
            TIM_SetCompare1(13, pwm_cmp);
        }
        else
        {
            pwm_cmp=0;
            TIM_SetCompare1(13, pwm_cmp);
        }
    }

    return 0;
}
