#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "fire.h"

// 复位FIRE
void FIRE_Rst(void)
{
	FIRE_IO_Out();	 // SET OUTPUT
	FIRE_DO_OUT(0); // 拉低DO
	delay_ms(20);	 // 拉低至少18ms
	FIRE_DO_OUT(1); // DO=1
	delay_us(30);	 // 主机拉高20~40us
}

// IO设置为输入模式
void FIRE_IO_In(void)
{
	gpio_set_direction(GPIO_PIN_40, GPIO_Mode_In);
}
// IO设置为输出模式
void FIRE_IO_Out(void)
{
	gpio_set_direction(GPIO_PIN_40, GPIO_Mode_Out);
}

// 从DHT11读取一个位
// 返回值：1/0
uint8_t FIRE_Read_Bit(void)
{
	uint8_t retry = 0;
	while (FIRE_DO_IN && retry < 100) // 等待变为低电平
	{
		retry++;
		//delay_us(1);
	}
	retry = 0;
	while (!FIRE_DO_IN && retry < 100) // 等待变高电平
	{
		retry++;
		//delay_us(1);
	}
	delay_us(40); // 等待40us
	if (FIRE_DO_IN)
		return 0;
	else
		return 1;
}
