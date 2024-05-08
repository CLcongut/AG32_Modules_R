#include "system.h"

/******************************************************************************
      函数说明：读取GPIO引脚
      入口数据：GPIO：端口 bit：引脚
      返回值：  bit状态 SET或RESET
******************************************************************************/
uint8_t GPIO_Read_Pin(GPIO_TypeDef *gpio, uint8_t bits)
{
    /*判断GPIO输入电平*/
    if((GPIO_GetValue(gpio,bits)&bits)!=0)
    {
        return GPIO_PIN_SET;   //判断数据位为1时返回
    }
    else
    {
        return GPIO_PIN_RESET; //判断数据位为0时返回
    }
}

/******************************************************************************
      函数说明：置位GPIO引脚
      入口数据：GPIO：端口 bit：引脚 value：置1或0
      返回值：  无
******************************************************************************/
void GPIO_Set_Pin(GPIO_TypeDef *gpio, uint8_t bits,uint8_t value)
{
    /*GPIO配置输出引脚以及电平*/
    GPIO_SetValue(gpio, bits, (bits | bits * value));
}