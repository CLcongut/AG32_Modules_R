#include "board.h"
#include "oled.h"
#include "esp8266.h"

int main(void)
{   
    board_init(); 
    SYS_EnableAPBClock(APB_MASK_GPIO5);
    GPIO_SetOutput(GPIO5,GPIO_BIT1);
    GPIO_SetLow(GPIO5,GPIO_BIT1);

    ESP8266_Init();
    OLED_Init();
	OLED_Clear();

    while (1)
    {
         UTIL_IdleUs(500e3);
        if(isRec==1)
        {
        OLED_ShowString(8,2,rxbuf,RxCounter); 
        RxCounter=0;
        isRec=0;
        }

        GPIO_Toggle(GPIO5,GPIO_BIT1);
        delay_ms(500);
        OLED_Clear();
    }
    
    
}