#ifndef __LCD_INIT_H
#define __LCD_INIT_H

#include "board.h"

#define USE_HORIZONTAL 1 // 设置横屏或者竖屏显示 0或1为竖屏 2或3为横屏

#if USE_HORIZONTAL == 0 || USE_HORIZONTAL == 1
#define LCD_W 128
#define LCD_H 160

#else
#define LCD_W 160
#define LCD_H 128
#endif

#define LCD_GPIO_MASK APB_MASK_GPIO4
#define LCD_GPIO_PORT GPIO4

#define LCD_GPIO_SCLK GPIO_BIT0
#define LCD_GPIO_MOSI GPIO_BIT1
#define LCD_GPIO_RES GPIO_BIT2
#define LCD_GPIO_DC GPIO_BIT3
#define LCD_GPIO_CS GPIO_BIT4
#define LCD_GPIO_BLK GPIO_BIT5

//-----------------LCD端口定义----------------

#define LCD_SCLK_Clr() GPIO_SetLow(LCD_GPIO_PORT, LCD_GPIO_SCLK) // SCL=SCLK
#define LCD_SCLK_Set() GPIO_SetHigh(LCD_GPIO_PORT, LCD_GPIO_SCLK)

#define LCD_MOSI_Clr() GPIO_SetLow(LCD_GPIO_PORT, LCD_GPIO_MOSI) // SDA=MOSI
#define LCD_MOSI_Set() GPIO_SetHigh(LCD_GPIO_PORT, LCD_GPIO_MOSI)

#define LCD_RES_Clr() GPIO_SetLow(LCD_GPIO_PORT, LCD_GPIO_RES) // RES
#define LCD_RES_Set() GPIO_SetHigh(LCD_GPIO_PORT, LCD_GPIO_RES)

#define LCD_DC_Clr() GPIO_SetLow(LCD_GPIO_PORT, LCD_GPIO_DC) // DC
#define LCD_DC_Set() GPIO_SetHigh(LCD_GPIO_PORT, LCD_GPIO_DC)

#define LCD_CS_Clr() GPIO_SetLow(LCD_GPIO_PORT, LCD_GPIO_CS) // CS
#define LCD_CS_Set() GPIO_SetHigh(LCD_GPIO_PORT, LCD_GPIO_CS)

#define LCD_BLK_Clr() GPIO_SetLow(LCD_GPIO_PORT, LCD_GPIO_BLK) // BLK
#define LCD_BLK_Set() GPIO_SetHigh(LCD_GPIO_PORT, LCD_GPIO_BLK)

void LCD_GPIO_Init(void);                                                 // 初始化GPIO
void LCD_Writ_Bus(uint8_t dat);                                           // 模拟SPI时序
void LCD_WR_DATA8(uint8_t dat);                                           // 写入一个字节
void LCD_WR_DATA(uint16_t dat);                                           // 写入两个字节
void LCD_WR_REG(uint8_t dat);                                             // 写入一个指令
void LCD_Address_Set(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2); // 设置坐标函数
void LCD_Init(void);                                                      // LCD初始化
#endif
