#ifndef __SYSTEM_H__
#define __SYSTEM_H__

/*�������ͷ�ļ�*/
#include "board.h"

/*ϵͳ�궨��*/
#define GPIO_PIN_SET 1
#define GPIO_PIN_RESET 0

/*�ض�����ʱ����*/
#define delay_ms(ms) UTIL_IdleMs(ms)
#define delay_us(us) UTIL_IdleUs(us)


/*��������*/
uint8_t GPIO_Read_Pin(GPIO_TypeDef *gpio, uint8_t bits);
void GPIO_Set_Pin(GPIO_TypeDef *gpio, uint8_t bits,uint8_t value);

#endif