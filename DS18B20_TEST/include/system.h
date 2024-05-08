#ifndef __SYSTEM_H__
#define __SYSTEM_H__

/*包含相关头文件*/
#include "board.h"

/*系统宏定义*/
#define GPIO_PIN_SET 1
#define GPIO_PIN_RESET 0

/*重定义延时函数*/
#define delay_ms(ms) UTIL_IdleMs(ms)
#define delay_us(us) UTIL_IdleUs(us)


/*函数声明*/
uint8_t GPIO_Read_Pin(GPIO_TypeDef *gpio, uint8_t bits);
void GPIO_Set_Pin(GPIO_TypeDef *gpio, uint8_t bits,uint8_t value);

#endif