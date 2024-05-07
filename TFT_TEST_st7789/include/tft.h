#ifndef __TFT_H__
#define __TFT_H__

#include "board.h"
#include "spi.h"

#define USE_HORIZONTAL 0  //���ú�������������ʾ 0��1Ϊ���� 2��3Ϊ����
#define Chip_Selection 1   //����оƬ��ʼ�� 0ΪILI9341  1ΪST7789
#define USE_BGR 1   //������ɫģʽ
#define USE_RGB 0   

#define TFT_SCK_GPIO GPIO4
#define TFT_SCK_PORT GPIO_BIT1

#define TFT_MOSI_GPIO GPIO4
#define TFT_MOSI_PORT GPIO_BIT2

#define TFT_RST_GPIO GPIO4
#define TFT_RST_PORT GPIO_BIT5 

#define TFT_BLK_GPIO GPIO4
#define TFT_BLK_PORT GPIO_BIT6

#define TFT_DC_GPIO GPIO4
#define TFT_DC_PORT GPIO_BIT3

#define TFT_CS_GPIO GPIO4
#define TFT_CS_PORT GPIO_BIT4

//-----------------LCD�˿ڶ���---------------- 

#define LCD_SCK_Clr()  GPIO_SetLow(GPIO4,GPIO_BIT1)//SCL=SCLK
#define LCD_SCK_Set() GPIO_SetHigh(GPIO4,GPIO_BIT1)

#define LCD_MOSI_Clr()  GPIO_SetLow(GPIO4,GPIO_BIT2)//SDA=MOSI
#define LCD_MOSI_Set()  GPIO_SetHigh(GPIO4,GPIO_BIT2)

#define LCD_RES_Clr()  GPIO_SetLow(GPIO4,GPIO_BIT5)//RES
#define LCD_RES_Set()  GPIO_SetHigh(GPIO4,GPIO_BIT5)

#define LCD_DC_Clr()   GPIO_SetLow(GPIO4,GPIO_BIT3)//DC
#define LCD_DC_Set()   GPIO_SetHigh(GPIO4,GPIO_BIT3)
 		     
#define LCD_CS_Clr()   GPIO_SetLow(GPIO4,GPIO_BIT4)//CS
#define LCD_CS_Set()   GPIO_SetHigh(GPIO4,GPIO_BIT4)

#define LCD_BLK_Clr()  GPIO_SetLow(GPIO4,GPIO_BIT6)//BLK
#define LCD_BLK_Set()  GPIO_SetHigh(GPIO4,GPIO_BIT6)

#if USE_HORIZONTAL==0||USE_HORIZONTAL==1
#define LCD_W 240
#define LCD_H 240

#else
#define LCD_W 320
#define LCD_H 240

#endif

#if USE_RGB
//������ɫ
#define WHITE         	 0xFFFF
#define BLACK         	 0x0000	  
#define BLUE           	 0x001F  
#define BRED             0XF81F
#define GRED 			 0XFFE0
#define GBLUE			 0X07FF
#define RED           	 0xF800
#define MAGENTA       	 0xF81F
#define GREEN         	 0x07E0
#define CYAN          	 0x7FFF
#define YELLOW        	 0xFFE0
#define BROWN 			 0XBC40 //��ɫ
#define BRRED 			 0XFC07 //�غ�ɫ
#define GRAY  			 0X8430 //��ɫ
#define DARKBLUE      	 0X01CF	//����ɫ
#define LIGHTBLUE      	 0X7D7C	//ǳ��ɫ  
#define GRAYBLUE       	 0X5458 //����ɫ
#define LIGHTGREEN     	 0X841F //ǳ��ɫ
#define LGRAY 			 0XC618 //ǳ��ɫ(PANNEL),���屳��ɫ
#define LGRAYBLUE        0XA651 //ǳ����ɫ(�м����ɫ)
#define LBBLUE           0X2B12 //ǳ����ɫ(ѡ����Ŀ�ķ�ɫ)

#endif

#if USE_BGR
//������ɫ
#define WHITE         	 0x0000
#define BLACK         	 0xFFFF	  
#define BLUE           	 0xFFE0
#define BRED             0X07E0
#define GRED 			 0x001F  
#define GBLUE			 0XF800
#define RED           	 0x07FF
#define MAGENTA       	 0x07E0
#define GREEN         	 0xF8FF
#define CYAN          	 0x801F
#define YELLOW        	 0x001F 
#define BROWN 			 0X555B //��ɫ
#define BRRED 			 0X438E //�غ�ɫ
#define GRAY  			 0X4208 //��ɫ
#define DARKBLUE      	 0XE731	//����ɫ
#define LIGHTBLUE      	 0XFA00	//ǳ��ɫ  
#define GRAYBLUE       	 0XBBE9 //����ɫ
#define LIGHTGREEN     	 0X600C //ǳ��ɫ
#define LGRAY 			 0X2965 //ǳ��ɫ(PANNEL),���屳��ɫ
#define LGRAYBLUE        0X49C4 //ǳ����ɫ(�м����ɫ)
#define LBBLUE           0XE56C //ǳ����ɫ(ѡ����Ŀ�ķ�ɫ)

#endif

//-----------------��������---------------- 
void TFT_GPIO_Init(void);//��ʼ��GPIO
void LCD_Writ_Bus(uint8_t dat);//ģ��SPIʱ��
void LCD_WR_DATA8(uint8_t dat);//д��һ���ֽ�
void LCD_WR_DATA(uint16_t dat);//д�������ֽ�
void LCD_WR_REG(uint8_t dat);//д��һ��ָ��
void LCD_Address_Set(uint16_t x1,uint16_t y1,
                    uint16_t x2,uint16_t y2);//�������꺯��
void LCD_Init(void);//LCD��ʼ��

void LCD_Fill(uint16_t xsta,uint16_t ysta,uint16_t xend,uint16_t yend,uint16_t color);//ָ�����������ɫ
void LCD_DrawPoint(uint16_t x,uint16_t y,uint16_t color);//��ָ��λ�û�һ����
void LCD_DrawLine(uint16_t x1,uint16_t y1,uint16_t x2,uint16_t y2,uint16_t color);//��ָ��λ�û�һ����
void LCD_DrawRectangle(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2,uint16_t color);//��ָ��λ�û�һ������
void Draw_Circle(uint16_t x0,uint16_t y0,uint8_t r,uint16_t color);//��ָ��λ�û�һ��Բ

void LCD_ShowChinese(uint16_t x,uint16_t y,uint8_t *s,uint16_t fc,uint16_t bc,uint8_t sizey,uint8_t mode);//��ʾ���ִ�
void LCD_ShowChinese12x12(uint16_t x,uint16_t y,uint8_t *s,uint16_t fc,uint16_t bc,uint8_t sizey,uint8_t mode);//��ʾ����12x12����
void LCD_ShowChinese16x16(uint16_t x,uint16_t y,uint8_t *s,uint16_t fc,uint16_t bc,uint8_t sizey,uint8_t mode);//��ʾ����16x16����
void LCD_ShowChinese24x24(uint16_t x,uint16_t y,uint8_t *s,uint16_t fc,uint16_t bc,uint8_t sizey,uint8_t mode);//��ʾ����24x24����
void LCD_ShowChinese32x32(uint16_t x,uint16_t y,uint8_t *s,uint16_t fc,uint16_t bc,uint8_t sizey,uint8_t mode);//��ʾ����32x32����

void LCD_ShowChar(uint16_t x,uint16_t y,uint8_t num,uint16_t fc,uint16_t bc,uint8_t sizey,uint8_t mode);//��ʾһ���ַ�
void LCD_ShowString(uint16_t x,uint16_t y,const uint8_t *p,uint16_t fc,uint16_t bc,uint8_t sizey,uint8_t mode);//��ʾ�ַ���
uint32_t mypow(uint8_t m,uint8_t n);//����
void LCD_ShowIntNum(uint16_t x,uint16_t y,uint16_t num,uint8_t len,uint16_t fc,uint16_t bc,uint8_t sizey);//��ʾ��������
void LCD_ShowFloatNum1(uint16_t x,uint16_t y,float num,uint8_t len,uint16_t fc,uint16_t bc,uint8_t sizey);//��ʾ��λС������

void LCD_ShowPicture(uint16_t x,uint16_t y,uint16_t length,uint16_t width,const uint8_t pic[]);//��ʾͼƬ

#endif
