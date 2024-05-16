#include "board.h"
#include "Step_Motor.h"

#define Motor_GPIO_MASK APB_MASK_GPIO4
#define Motor_GPIO_PORT GPIO4

#define Motor_A_Bit GPIO_BIT0
#define Motor_B_Bit GPIO_BIT1
#define Motor_C_Bit GPIO_BIT2
#define Motor_D_Bit GPIO_BIT3

#define MOTOR_A_H GPIO_SetHigh(Motor_GPIO_PORT, Motor_A_Bit)
#define MOTOR_A_L GPIO_SetLow(Motor_GPIO_PORT, Motor_A_Bit)

#define MOTOR_B_H GPIO_SetHigh(Motor_GPIO_PORT, Motor_B_Bit)
#define MOTOR_B_L GPIO_SetLow(Motor_GPIO_PORT, Motor_B_Bit)

#define MOTOR_C_H GPIO_SetHigh(Motor_GPIO_PORT, Motor_C_Bit)
#define MOTOR_C_L GPIO_SetLow(Motor_GPIO_PORT, Motor_C_Bit)

#define MOTOR_D_H GPIO_SetHigh(Motor_GPIO_PORT, Motor_D_Bit)
#define MOTOR_D_L GPIO_SetLow(Motor_GPIO_PORT, Motor_D_Bit)

void Motor_Init(void)
{
    SYS_EnableAPBClock(Motor_GPIO_MASK);
    GPIO_SetOutput(Motor_GPIO_PORT, Motor_A_Bit | Motor_B_Bit | Motor_C_Bit | Motor_D_Bit);
    GPIO_SetLow(Motor_GPIO_PORT, Motor_A_Bit | Motor_B_Bit | Motor_C_Bit | Motor_D_Bit);
}

void Motor_Stop(void)
{
    MOTOR_A_L;
    MOTOR_B_L;
    MOTOR_C_L;
    MOTOR_D_L;
}

void Motor_Control(uint8_t direction, uint32_t speed)
{

    if (direction)
    {
        for (uint8_t step = 0; step < 8; step++)
        {
            switch (step)
            {
            case 0:
                MOTOR_A_H;
                MOTOR_B_L;
                MOTOR_C_L;
                MOTOR_D_L;
                break;
            case 1:
                MOTOR_A_H;
                MOTOR_B_H;
                MOTOR_C_L;
                MOTOR_D_L;
                break;
            case 2:
                MOTOR_A_L;
                MOTOR_B_H;
                MOTOR_C_L;
                MOTOR_D_L;
                break;
            case 3:
                MOTOR_A_L;
                MOTOR_B_H;
                MOTOR_C_H;
                MOTOR_D_L;
                break;
            case 4:
                MOTOR_A_L;
                MOTOR_B_L;
                MOTOR_C_H;
                MOTOR_D_L;
                break;
            case 5:
                MOTOR_A_L;
                MOTOR_B_L;
                MOTOR_C_H;
                MOTOR_D_H;
                break;
            case 6:
                MOTOR_A_L;
                MOTOR_B_L;
                MOTOR_C_L;
                MOTOR_D_H;
                break;
            case 7:
                MOTOR_A_H;
                MOTOR_B_L;
                MOTOR_C_L;
                MOTOR_D_H;
                break;
            }
            UTIL_IdleUs(speed);
        }
    }
    else
    {
        for (uint8_t step = 0; step < 8; step++)
        {
            switch (step)
            {
            case 0:
                MOTOR_A_H;
                MOTOR_B_L;
                MOTOR_C_L;
                MOTOR_D_H;
                break;
            case 1:
                MOTOR_A_L;
                MOTOR_B_L;
                MOTOR_C_L;
                MOTOR_D_H;
                break;
            case 2:
                MOTOR_A_L;
                MOTOR_B_L;
                MOTOR_C_H;
                MOTOR_D_H;
                break;
            case 3:
                MOTOR_A_L;
                MOTOR_B_L;
                MOTOR_C_H;
                MOTOR_D_L;
                break;
            case 4:
                MOTOR_A_L;
                MOTOR_B_H;
                MOTOR_C_H;
                MOTOR_D_L;
                break;
            case 5:
                MOTOR_A_L;
                MOTOR_B_H;
                MOTOR_C_L;
                MOTOR_D_L;
                break;
            case 6:
                MOTOR_A_H;
                MOTOR_B_H;
                MOTOR_C_L;
                MOTOR_D_L;
                break;
            case 7:
                MOTOR_A_H;
                MOTOR_B_L;
                MOTOR_C_L;
                MOTOR_D_L;
                break;
            }
            UTIL_IdleUs(speed);
        }
    }
}

// 由于   *一个脉冲*   *输出轴*  转0.08789度（电机实转0.08789*64=5.625度），即步进角为5.625度。则转完A-B-C-D为  *8个脉冲*
// ，即0.08789*8=0.70312度。若称A-B-C-D为一个周期，则j为需要的转完angle角度所需的周期数。
// 步进电机正转角度函数
void Motor_Just_Angle(uint16_t angle, uint32_t speed)
{
    int i, j;
    j = (int)(angle / 0.70312);
    for (i = 0; i < j; i++)
    {
        Motor_Control(1, speed);
    }
    Motor_Stop();
}

// 步进电机反转角度函数
void Motor_Back_Angle(uint16_t angle, uint32_t speed)
{
    int i, j;
    j = (int)(angle / 0.70312);
    for (i = 0; i < j; i++)
    {
        Motor_Control(0, speed);
    }
    Motor_Stop();
}

// 步进电机反转圈函数
void Motor_Back_Circle(uint8_t ring, uint32_t speed)
{
    int i;
    for (i = 0; i < ring; i++)
    {
        Motor_Back_Angle(360, speed);
    }
}

// 步进电机正转圈函数
void Motor_Just_Circle(uint8_t ring, uint32_t speed) // 步进电机正转角度函数
{
    int i;
    for (i = 0; i < ring; i++)
    {
        Motor_Just_Angle(360, speed);
    }
}