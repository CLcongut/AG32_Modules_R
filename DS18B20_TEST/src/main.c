#include "board.h"
#include "system.h"
#include "ds18b20.h"

int main(void)
{    
    /*定义温度数值*/
    uint16_t Temp;

    /*板级初始化*/
    board_init();
    /*传感器初始化*/
    DS18B20_Init();
    while (1)
    {  
        /*判断是否接入S18B20*/
        if(DS18B20_Reset()==0)
		{
			Temp = DS18B20_ReadTemp();
            printf("TEMP:%d.%d\r\n",Temp/10%100,Temp%10);
        }
        else //没检测到DS18B20
        {
            printf("no sensor!\r\n");
            delay_ms(1000);
        }
    }
    
}