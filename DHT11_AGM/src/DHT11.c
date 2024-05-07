/***************************************************************************************
 * Encoding with UTF-8
 * 使用GPIO来和单片机进行通信，无固定引脚，可在 ve文件中随意定义
 *
 * DHT11 采用单总线协议与单片机通信，单片机发送一次复位信号后，DHT11 从低功耗模式转换到高速模式，
 * 等待主机复位结束后，DHT11 发送响应信号，并拉高总线准备传输数据
 *
 * 此为DHT11温湿度传感器驱动，温度测量范围为 0~50℃，误差在±2℃；
 * 湿度的测量范围为 20%~90%RH（Relative Humidity 相对湿度—指空气中水汽压与饱和水汽压的百分比），误差在±5%RH
 *
 * 目前版本为：1.0
 * Encoding with UTF-8
 ***************************************************************************************
 */

#include "board.h"

#define DHT11_GPIO_MASK APB_MASK_GPIO4
#define DHT11_PORT GPIO4
#define DHT11_BITS GPIO_BIT5

#define DHT11_SETOUTPUT GPIO_SetOutput(DHT11_PORT, DHT11_BITS)
#define DHT11_SETINPUT GPIO_SetInput(DHT11_PORT, DHT11_BITS)

#define DHT11_SETHIGH GPIO_SetHigh(DHT11_PORT, DHT11_BITS)
#define DHT11_SETLOW GPIO_SetLow(DHT11_PORT, DHT11_BITS)

#define DHT11_GET GPIO_PIN_GETVALUE(DHT11_PORT, DHT11_BITS)

void dht11_Init(void)
{
    // 在ve文件当中设置dht11数据引脚为开漏输出
    SYS_EnableAPBClock(DHT11_GPIO_MASK);
    GPIO_SetOutput(DHT11_PORT, DHT11_BITS);
    GPIO_SetHigh(DHT11_PORT, DHT11_BITS);
}

int32_t dht11_Read(uint8_t *buf)
{
    uint32_t t = 0;
    int32_t i = 0, j = 0;
    uint8_t d = 0;
    uint8_t *p = buf;
    uint8_t check_sum = 0;

    DHT11_SETOUTPUT;

    DHT11_SETLOW;
    UTIL_IdleMs(20);

    DHT11_SETHIGH;
    UTIL_IdleUs(30);

    DHT11_SETINPUT;

    // 等待低电平出现
    t = 0;
    while (DHT11_GET)
    {
        t++;
        UTIL_IdleUs(1);

        if (t >= 4000)
            return -1;
    }

    // 用超时检测的方法测量低电平的合法性
    t = 0;
    while (!DHT11_GET)
    {
        t++;
        UTIL_IdleUs(1);

        if (t >= 100)
            return -2;
    }

    // 用超时检测的方法测量高电平的合法性
    t = 0;
    while (DHT11_GET)
    {
        t++;
        UTIL_IdleUs(1);

        if (t >= 100)
            return -3;
    }

    for (j = 0; j < 5; j++)
    {
        // 接收一个字节的数据
        for (d = 0, i = 7; i >= 0; i--)
        {
            // 用超时检测的方法测量低电平的合法性
            t = 0;
            while (!DHT11_GET)
            {
                t++;
                UTIL_IdleUs(1);

                if (t >= 100)
                    return -4;
            }

            // 延时40us （延时时间在28us ~ 70us）
            UTIL_IdleUs(40);

            if (DHT11_GET)
            {
                d |= 1 << i; // 将d变量对应的bit置1

                // 等待高电平持续完毕
                t = 0;
                while (DHT11_GET)
                {
                    t++;
                    UTIL_IdleUs(1);

                    if (t >= 100)
                        return -5;
                }
            }
        }
        p[j] = d;
    }

    // 延时50us，可以忽略通讯结束的低电平
    UTIL_IdleUs(50);

    // 计算校验和，检查接收到的数据是否准确
    check_sum = (p[0] + p[1] + p[2] + p[3]) & 0xFF;

    if (check_sum == p[4])
        return 0;

    return -6;
}

void _t_dhtt11(void)
{
    // DHT11_SETINPUT;
    // printf("%d", DHT11_GET);
    // DHT11_SETHIGH;
}