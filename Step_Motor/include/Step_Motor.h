#ifndef STEP_MOTOR_H
#define STEP_MOTOR_H

#include "board.h"

void Motor_Init(void);                                 // 步进电机初始化
void Motor_Stop(void);                                 // 步进电机停止函数
void Motor_Control(uint8_t direction, uint32_t speed); // 步进电机转向控制函数
void Motor_Just_Angle(uint16_t angle, uint32_t speed); // 步进电机正转角度函数
void Motor_Back_Angle(uint16_t angle, uint32_t speed); // 步进电机反转角度函数
void Motor_Just_Circle(uint8_t ring, uint32_t speed);  // 步进电机正转圈函数
void Motor_Back_Circle(uint8_t ring, uint32_t speed);  // 步进电机反转圈函数

#endif