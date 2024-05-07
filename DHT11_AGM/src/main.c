#include "board.h"
#include "DHT11.h"

uint8_t buf[5];
int32_t rt;

int main()
{
    board_init();
    dht11_Init();
    while (1)
    {
        rt = dht11_Read(buf);

        if (rt == 0)
        {
            printf("T:%d.%d H:%d.%d\r\n", buf[2], buf[3], buf[0], buf[1]);
        }
        else
        {
            printf("dht11 read error : %d", rt);
        }
        UTIL_IdleMs(500);

        // _t_dhtt11();
    }
}