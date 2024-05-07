#ifndef DHT11_H
#define DHT11_H

#include "board.h"

void dht11_Init(void);
int32_t dht11_Read(uint8_t *buf);
void _t_dhtt11(void);

#endif