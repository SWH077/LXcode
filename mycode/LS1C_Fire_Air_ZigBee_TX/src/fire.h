#ifndef __FIRE_H
#define __FIRE_H 

#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_ptimer.h"
#include "ls1x_common.h"
#include "ls1x_gpio.h"
#include "ls1x_exti.h"
#include "ls1x_latimer.h"
#include "ls1x_rtc.h"
#include "ls1c102_touch.h"
#include "ls1x_string.h"
#include "ls1x_wdg.h"
#include "ls1x_uart.h"
#include "ls1x_spi.h"
#include "ls1c102_i2c.h"
#include "Config.h"

/******    DHT11端口宏定义  *******/

/*************************************************************
** IO操作函数
*************************************************************/											   
#define	FIRE_DO_OUT(X)   	gpio_write_pin(GPIO_PIN_40,X)//GPIO_WriteBit( DHT11_GPIO,DHT11_PIN,(BitAction)X )// 数据端口输出 
#define	FIRE_DO_IN    		gpio_get_pin(GPIO_PIN_40)//GPIO_ReadInputDataBit( DHT11_GPIO,DHT11_PIN )	   // 数据端口输入

uint8_t FIRE_Read_Bit(void);//读出一个位
void FIRE_Rst(void);//复位FIRE    

void FIRE_IO_Out(void);
void FIRE_IO_In(void);

#endif















