#ifndef __DS18B20_H__
#define __DS18B20_H__

/*�������ͷ�ļ�*/
#include "board.h"
#include "system.h"

/*�������ź궨��*/
#define TEMP_GPIO GPIO3
#define TEMP_GPIO_MASK APB_MASK_GPIO3
#define TEMP_PORT GPIO_BIT5

/*IO״̬����*/
#define DQ_L   GPIO_SetLow(TEMP_GPIO,TEMP_PORT)//IOΪ�͵�ƽ
#define DQ_H   GPIO_SetHigh(TEMP_GPIO,TEMP_PORT)//IOΪ�ߵ�ƽ
#define DQ_Read GPIO_Read_Pin(TEMP_GPIO,TEMP_PORT)//��ȡIO��ƽ

/*ȫ�ֱ�������*/
extern uint8_t flag;  

/*��������*/
void DS18B20_Init(void);
uint16_t DS18B20_ReadTemp(void);
uint8_t DS18B20_Reset(void);


#endif