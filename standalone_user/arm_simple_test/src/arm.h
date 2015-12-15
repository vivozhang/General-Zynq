/*
 * arm.h
 *
 *  Created on: 2015��8��19��
 *      Author: harryfan
 */

#ifndef ARM_H_
#define ARM_H_

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "sleep.h"
#include "xgpio.h"
#include "pwm_API.h"
#include "gpio_API.h"
#include "xil_types.h"
#include "math.h"

#define SERVO_PERIOD 2000000

#define SERVO_L 0
#define SERVO_R 1
#define SERVO_ROT 2
#define SERVO_HANDROT 3

#define PUMP_EN 2
#define VALVE_EN 1
#define LIMIT_SW 3

#define HANDROT 0

#define ARM_A                   148    // upper arm
#define ARM_B                   160    // lower arm
#define ARM_2AB                 47360  // 2*A*B
#define ARM_A2                  21904  // A^2
#define ARM_B2                  25600  // B^2
#define ARM_A2B2                47504  // A^2 + B^2
#define ARM_STRETCH_MIN         0
#define ARM_STRETCH_MAX         210
#define ARM_HEIGHT_MIN          -180
#define ARM_HEIGHT_MAX          150
#define ARM_ROTATION_MIN        -90
#define ARM_ROTATION_MAX        90
#define HAND_ROTATION_MIN       -90
#define HAND_ROTATION_MAX       90

#define D150A_SERVO_MIN_PUL     535
#define D150A_SERVO_MAX_PUL     2415
#define D009A_SERVO_MIN_PUL     600
#define D009A_SERVO_MAX_PUL     2550

#define FIXED_OFFSET_L          30
#define FIXED_OFFSET_R          40

#define RAD_TO_DEG              57.2957786

#define ARM_GPIO_DEVICE_ID	XPAR_GPIO_1_DEVICE_ID



int ArmInit(void);
float constrain(float x, float a, float b);
void uArm_ServoWrite(s16 angle, u8 Servo_Channel);
void uArm_SetPosition(float _stretch, float _height, s16 _armRot, s16 _handRot);
void xyToSR(double set_X, double set_Y, float *set_stretch, s16 *set_armRot);
void uArm_GripperCatch(void);
void uArm_GripperRelease(void);
void ArmMove(s16 coX, s16 coY, s16 coZ, s16 handRotation);
void ArmGet(s16 co_x, s16 co_y, s16 co_z, s16 handRotation, u8 limit_en);
void ArmPut(s16 co_x, s16 co_y, s16 co_z, s16 handRotation, u8 limit_en);

#endif /* ARM_H_ */
