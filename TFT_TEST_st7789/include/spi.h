#ifndef __SPI_H__
#define __SPI_H__		  	 

/*����AG32�弶ͷ�ļ�*/
#include "board.h"
#include "tft.h"

/*ʹ����Ӳ��SPI*/
#define USING_HARDWARE_SPI 0
#define USING_SOLFTWARE_SPI 1

/*��������*/
void SPI0_DMA_Init(void);
void SPI_Cmd(SPI_TypeDef* Spi, uint8_t NewState);
uint8_t SPI0_ReadWriteByte(uint8_t TxData);


#endif
