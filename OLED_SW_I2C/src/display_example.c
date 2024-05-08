#include "board.h"
#include "OLED.h"

uint16_t tick = 0;

int main()
{
    board_init();
    OLED_Init();
    OLED_ShowString(1, 1, "Hello World", OLED_8X16);
    OLED_Update();
    while (1)
    {
        UTIL_IdleMs(500);
        OLED_ShowNum(16, 16, tick++, 4, OLED_8X16);
        OLED_Update();
    }
}