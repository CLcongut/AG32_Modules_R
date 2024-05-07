/***************************************************************************************
 * Encoding with UTF-8
 * ADC 引脚固定，无法在 ve文件中更改,具体ADC引脚参考 AG32 手册
 * 文件中凡是带有 IO 字段的，都可以被配置
 * 如果一路 ADC 引脚已经被 ADC 使用，那么此管脚只能用于这路 ADC，
 * 如果没有被 ADC 使能，那仍然可以被配置用于其他功能
 *
 * ADC/DAC 包含模拟电路，需要 fpga 部分的支持
 * 在默认的 ip 中，支持 3 路 ADC 和 2 路 DAC，1 路比较器 CMP（双通道，可独立运行）
 * ADC 不需要在 ve 里管脚映射，不需要设置 IO 复用
 *
 * 使用时在 ini文件中配置：(大约在112行)
 * ip_name = analog_ip
 * 注意，第一次打开 ADC/DAC 功能时，需要重新编译烧录一次 ve
 *
 * 此为MQ-135空气质量传感器驱动，可检测丙烷，烟雾等多种可燃性气体
 *
 * 目前版本为：1.0
 * Encoding with UTF-8
 ***************************************************************************************
 */

#include "board.h"
#include "analog_ip.h"

#define MQ135_CHANNEL ADC_CHANNEL10
#define MQ135_ADC ADC0

static uint32_t sclk_div = 9; // Divided by 20 = (9 + 1) * 2

void MQ135AS_Init(void)
{
    ADC_SetChannel(MQ135_ADC, MQ135_CHANNEL);
}

#if 1

uint32_t MQ135AS_Read(void)
{
    uint32_t mq135_value = 0;
    for (uint8_t i = 0; i < 50; i++)
    {
        ADC_Start(MQ135_ADC, sclk_div);
        ADC_WaitForEoc(MQ135_ADC);
        mq135_value += ADC_GetData(MQ135_ADC);
    }
    return mq135_value / 50;
}

#elif 0

uint32_t MQ135AS_Read(void)
{
    uint32_t mq135_value;
    ADC_Start(MQ135_ADC, sclk_div);
    ADC_WaitForEoc(MQ135_ADC);
    mq135_value = ADC_GetData(MQ135_ADC);
    return mq135_value;
}

#endif

float_t _t_MQ135AS_Read_percent(void)
{
    uint32_t _t_mq135value = 0;
    _t_mq135value = MQ135AS_Read();
    return _t_mq135value * 100 / 4094.0;
}