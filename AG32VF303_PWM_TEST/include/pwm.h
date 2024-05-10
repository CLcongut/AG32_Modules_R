#ifndef __PWM_H__
#define __PWM_H__

#include "board.h"

extern GPTIMER_OC_InitTypeDef oc_init;

/*����ռ�ձ� ���� 1��С 0���*/
#define PWM_Update(pwm_ratio) do{ \
      oc_init.CompareValue = tm_init.Autoreload * pwm_ratio;    \
    GPTIMER_OC_Init(GPTIMER4, GPTIMER_CHANNEL_CH0, &oc_init);  \
    }while(0)
    

#endif