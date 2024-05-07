#ifndef MQ135_AIR_SENSOR_H
#define MQ135_AIR_SENSOR_H

#include "board.h"

void MQ135AS_Init(void);
uint32_t MQ135AS_Read(void);
float_t _t_MQ135AS_Read_percent(void);

#endif