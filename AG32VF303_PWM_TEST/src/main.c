#include "board.h"
#include "pwm.h"

/*PWM占空比*/
float pwm_ratio = 0;

/*呼吸灯标志定义*/
 uint8_t i=0;
 uint8_t j=0;

int main(void)
{
  /*板级初始化*/
  board_init();

  /*开启Gptimer4时钟*/
  SYS_EnableAPBClock(APB_MASK_GPTIMER4);

  /***********************
  *初始化部分其他GPTimer同理*
  *************************/

  /*初始化通用定时器4*/
  GPTIMER_InitTypeDef tm_init;
  GPTIMER_StructInit(&tm_init);
  const uint32_t frequency = 10000; // In Hz
  tm_init.Autoreload = SYS_GetPclkFreq() / frequency;
  GPTIMER_Init(GPTIMER4, &tm_init);
    
  /*初始化通用定时器4输出通道0*/
  GPTIMER_OC_InitTypeDef oc_init;
  oc_init.OCState = GPTIMER_OCSTATE_ENABLE;
  oc_init.OCMode = GPTIMER_OCMODE_PWM1;
  oc_init.CompareValue = tm_init.Autoreload * pwm_ratio;
  GPTIMER_OC_Init(GPTIMER4, GPTIMER_CHANNEL_CH0, &oc_init);

  /*使能通用定时器4输出通道*/
  GPIO_AF_ENABLE(GPTIMER4_CH0);

  /*使能通用定时器4计数*/
  GPTIMER_EnableAllOutputs(GPTIMER4);
  GPTIMER_EnableCounter(GPTIMER4);

  while(1)
  {

    /*呼吸灯*/
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