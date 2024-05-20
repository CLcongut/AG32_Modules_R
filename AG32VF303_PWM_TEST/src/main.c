#include "board.h"
#include "pwm.h"

/*PWMռ�ձ�*/
float pwm_ratio = 0;

/*�����Ʊ�־����*/
 uint8_t i=0;
 uint8_t j=0;

int main(void)
{
  /*�弶��ʼ��*/
  board_init();

  /*����Gptimer4ʱ��*/
  SYS_EnableAPBClock(APB_MASK_GPTIMER4);

  /***********************
  *��ʼ����������GPTimerͬ��*
  *************************/

  /*��ʼ��ͨ�ö�ʱ��4*/
  GPTIMER_InitTypeDef tm_init;
  GPTIMER_StructInit(&tm_init);
  const uint32_t frequency = 10000; // In Hz
  tm_init.Autoreload = SYS_GetPclkFreq() / frequency;
  GPTIMER_Init(GPTIMER4, &tm_init);
    
  /*��ʼ��ͨ�ö�ʱ��4���ͨ��0*/
  GPTIMER_OC_InitTypeDef oc_init;
  oc_init.OCState = GPTIMER_OCSTATE_ENABLE;
  oc_init.OCMode = GPTIMER_OCMODE_PWM1;
  oc_init.CompareValue = tm_init.Autoreload * pwm_ratio;
  GPTIMER_OC_Init(GPTIMER4, GPTIMER_CHANNEL_CH0, &oc_init);

  /*ʹ��ͨ�ö�ʱ��4���ͨ��*/
  GPIO_AF_ENABLE(GPTIMER4_CH0);

  /*ʹ��ͨ�ö�ʱ��4����*/
  GPTIMER_EnableAllOutputs(GPTIMER4);
  GPTIMER_EnableCounter(GPTIMER4);

  while(1)
  {

    /*������*/
    for( j=100;j>0;j--)
    {
        pwm_ratio= j/100.0;
        UTIL_IdleMs(10);
        PWM_Update(pwm_ratio);

    }   
     for( i=0;i<100;i++)
    {
         pwm_ratio= i/100.0;
        UTIL_IdleMs(10);
        PWM_Update(pwm_ratio);
    }
   
  }
}