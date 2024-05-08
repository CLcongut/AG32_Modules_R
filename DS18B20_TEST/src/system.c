#include "system.h"

/******************************************************************************
      ����˵������ȡGPIO����
      ������ݣ�GPIO���˿� bit������
      ����ֵ��  bit״̬ SET��RESET
******************************************************************************/
uint8_t GPIO_Read_Pin(GPIO_TypeDef *gpio, uint8_t bits)
{
    /*�ж�GPIO�����ƽ*/
    if((GPIO_GetValue(gpio,bits)&bits)!=0)
    {
        return GPIO_PIN_SET;   //�ж�����λΪ1ʱ����
    }
    else
    {
        return GPIO_PIN_RESET; //�ж�����λΪ0ʱ����
    }
}

/******************************************************************************
      ����˵������λGPIO����
      ������ݣ�GPIO���˿� bit������ value����1��0
      ����ֵ��  ��
******************************************************************************/
void GPIO_Set_Pin(GPIO_TypeDef *gpio, uint8_t bits,uint8_t value)
{
    /*GPIO������������Լ���ƽ*/
    GPIO_SetValue(gpio, bits, (bits | bits * value));
}