#include "board.h"
#include "Step_Motor.h"

int main(void)
{
    board_init();
    Motor_Init();
    while (1)
    {
        Motor_Control(0, 1000);
        // UTIL_IdleMs(500);
    }
}