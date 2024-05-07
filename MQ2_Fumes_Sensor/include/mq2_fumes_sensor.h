#ifndef MQ2_FUMES_SENSOR_H
#define MQ2_FUMES_SENSOR_H

#include "board.h"

void MQ2FS_Init(void);
uint32_t MQ2FS_Read(void);
float_t _t_MQ2FS_Read_percent(void);

#endif