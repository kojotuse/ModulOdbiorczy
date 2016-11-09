/*
 * delay.h
 *
 *  Created on: 8 lis 2016
 *      Author: paga
 */

#ifndef DELAY_H_
#define DELAY_H_

#include "stm32f4xx_hal.h"

void TM_Delay_Init(void);
void TM_DelayMicros(uint32_t micros);
void TM_DelayMillis(uint32_t millis);


#endif /* DELAY_H_ */
