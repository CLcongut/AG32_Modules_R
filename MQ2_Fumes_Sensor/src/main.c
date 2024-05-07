#include "board.h"
#include "mq2_fumes_sensor.h"
#include "analog_ip.h"

int main()
{
    board_init();
    MQ2FS_Init();
    while (1)
    {
        UTIL_IdleMs(500);
        uint32_t mq_ve;
        mq_ve = _t_MQ2FS_Read_percent();
        // printf("%d\r\n", mq_ve * 100 / 4094);
        printf("%d\r\n", mq_ve);
    }
}