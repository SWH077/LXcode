/******************************************************
 * 实验名称：火焰检测+空气质量监测实验
 *
 * 实验准备：龙芯1C102开发板，zigbee模块，通讯底板，USB-MINI线
            温湿度传感器，杜邦线
 *
 * 实验接线：
 *
 * 实验现象：从机二的代码，将火焰检测的结果和空气质量利用zigbee模块传回主机
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
#include "fire.h"
#include "BEEP.h"
#include "key.h"
#include "led.h"
#include "queue.h"
#include "ls1x_clock.h"
#include "ls1c102_ptimer.h"
#include "ls1c102_adc.h"

#define LED 20
#define _ADCX_R 510		
#define R0 		0x8B19	

char str[50];
unsigned short value;
uint16_t vol,temp;
uint32_t Rs;

#define LED 20

char str[50];
static uint8_t fire;
static uint16_t air;

uint8_t received_data = 0;
uint8_t data[6];
uint8_t Read_Buffer[255]; // 设置接收缓冲数组
uint8_t Read_length;
int main(int arg, char *args[])
{
    
    SystemClockInit(); // 时钟等系统配置
    GPIOInit();        // io配置
    OLED_Init();
    
    EnableInt(); // 开总中断
    // Uart1_init(9600);
    DL_LN3X_Init(DL_LN3X_NODE,CHANNEL,Network1_Id);//设置为主机（接收端），设置信道为0x12，网络地址为0x0003
    Queue_Init(&Circular_queue);
    BEEP_Init();
    AFIO_RemapConfig(AFIOB, GPIO_Pin_16, 0);        // 初始化ADC通道6引脚
    Adc_powerOn();                                  // 打开ADC电源
    Adc_open(ADC_CHANNEL_I6);                       // 开启ADC通道6

    while (1)
    {
        fire=FIRE_Read_Bit();                      // 接受火焰状态

        value = Adc_Measure(ADC_CHANNEL_I6)*2;        // ADC电压采集  单位：毫伏
        vol = value *33 / 4096;
        Rs = 50000/vol-200;	
        //temp =(61*R0*R0)/(Rs * Rs);
        temp = R0 / Rs;
        air = 61 * temp * temp / 100;                  // 空气质量算法

        data[0] = 3;
        data[1] = fire % 256;
        data[2] = air / 256;
        data[3] = air % 256;                          // 打包数据

        sprintf(str, "fire: %d", fire);
        OLED_Show_Str(5, 4, str, 16);    // OLED显示界面
        sprintf(str, "Air: %d ppm", air);
        OLED_Show_Str(5, 0, str, 16);    // OLED显示界面
        sprintf(str, "ADCx: %d ", value);
        OLED_Show_Str(5, 2, str, 16);    // OLED显示界面
        if(fire==1 || air > 150)         // 当检测到火焰或者空气质量污染量大于150ppm时，发出警报
            {
                gpio_write_pin(LED, 1);
                BEEP_ON;
            }
            else
            {
                gpio_write_pin(LED, 0);
                BEEP_OFF;
            }
        delay_ms(200);
        DL_LN3X_Send(data, 6, ZIGBEE_RX_NODE);
    }

    return 0;
}
