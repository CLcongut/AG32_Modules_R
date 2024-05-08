#include "board.h"
#include "system.h"
#include "ds18b20.h"

int main(void)
{    
    /*�����¶���ֵ*/
    uint16_t Temp;

    /*�弶��ʼ��*/
    board_init();
    /*��������ʼ��*/
    DS18B20_Init();
    while (1)
    {  
        /*�ж��Ƿ����S18B20*/
        if(DS18B20_Reset()==0)
		{
			Temp = DS18B20_ReadTemp();
            printf("TEMP:%d.%d\r\n",Temp/10%100,Temp%10);
        }
        else //û��⵽DS18B20
        {
            printf("no sensor!\r\n");
            delay_ms(1000);
        }
    }
    
}