#include "board.h"
#include "tft.h"
#include "pic.h"

uint8_t counter,i,j;

int main(void)
{    
    // This will init clock and uart on the board
	board_init();
	bool success = true;
	SYS_EnableAPBClock(APB_MASK_GPIO5);
    GPIO_SetOutput(GPIO5,GPIO_BIT1);
    GPIO_SetHigh(GPIO5,GPIO_BIT1); 
    printf("AG32F303_TEST\r\n");
    // This will init TFT on the board
    LCD_Init();
    // This will fill TFT on WHITE
	LCD_Fill(0,0,LCD_W,LCD_H,WHITE);
	LCD_Fill(0,0,LCD_W,LCD_H,RED);
    LCD_Fill(0,0,LCD_W,LCD_H,GREEN);
	LCD_Fill(0,0,LCD_W,LCD_H,BLUE);
	LCD_Fill(0,0,LCD_W,LCD_H,YELLOW);
	LCD_Fill(0,0,LCD_W,LCD_H,GRAY);
	LCD_Fill(0,0,LCD_W,LCD_H,LIGHTBLUE);
	LCD_Fill(0,0,LCD_W,LCD_H,BLACK);
	LCD_Fill(0,0,LCD_W,LCD_H,WHITE);
	LCD_ShowString(50,20,"TFT demo",BROWN,WHITE,32,1);
	LCD_ShowString(20,100,"num is:",RED,WHITE,32,0);
	LCD_ShowString(20,200,"count to 99",BROWN,WHITE,32,0);
    while (1)
	
    {  
		counter++;
		GPIO_Toggle(GPIO5,GPIO_BIT1);
		if(counter>99)
		{
			counter=0;
		}
		LCD_ShowIntNum(150,100,counter,2,BLUE,WHITE,32);
		
		delay_ms(1000);
	}
    
}