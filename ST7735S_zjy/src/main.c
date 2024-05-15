#include "board.h"
#include "lcd_init.h"
#include "lcd.h"
#include "pic.h"

int main(void)
{
    float t = 0;
    board_init();
    LCD_Init();
    LCD_Fill(0, 0, LCD_W, LCD_H, WHITE);
    while (1)
    {
        /*偶数位中文字体无法显示*/
        LCD_ShowChinese(0, 30, "中景园电子", RED, WHITE, 16, 0);

        // LCD_ShowString(0, 0, "LCD_W:", RED, WHITE, 16, 0);
        // LCD_ShowIntNum(72, 30, LCD_W, 3, RED, WHITE, 16);
        // LCD_ShowString(24, 50, "LCD_H:", RED, WHITE, 16, 0);
        // LCD_ShowIntNum(72, 50, LCD_H, 3, RED, WHITE, 16);
        // LCD_ShowFloatNum1(20, 80, t, 4, RED, WHITE, 16);
        // t += 0.11;
        // LCD_ShowPicture(65, 80, 40, 40, gImage_1);
        // LCD_Fill(0, 0, LCD_W, LCD_H, BLACK);
        // UTIL_IdleMs(1000);
        // LCD_Fill(0, 0, LCD_W, LCD_H, WHITE);
        // UTIL_IdleMs(1000);
    }
}