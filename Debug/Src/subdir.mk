################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/RF24.c \
../Src/RingBuffer.c \
../Src/delay.c \
../Src/dma.c \
../Src/gpio.c \
../Src/main.c \
../Src/radio.c \
../Src/spi.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_it.c \
../Src/tim.c \
../Src/usb_device.c \
../Src/usbd_cdc_if.c \
../Src/usbd_conf.c \
../Src/usbd_desc.c \
../Src/utilities.c 

OBJS += \
./Src/RF24.o \
./Src/RingBuffer.o \
./Src/delay.o \
./Src/dma.o \
./Src/gpio.o \
./Src/main.o \
./Src/radio.o \
./Src/spi.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_it.o \
./Src/tim.o \
./Src/usb_device.o \
./Src/usbd_cdc_if.o \
./Src/usbd_conf.o \
./Src/usbd_desc.o \
./Src/utilities.o 

C_DEPS += \
./Src/RF24.d \
./Src/RingBuffer.d \
./Src/delay.d \
./Src/dma.d \
./Src/gpio.d \
./Src/main.d \
./Src/radio.d \
./Src/spi.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_it.d \
./Src/tim.d \
./Src/usb_device.d \
./Src/usbd_cdc_if.d \
./Src/usbd_conf.d \
./Src/usbd_desc.d \
./Src/utilities.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F407xx -I"C:/Users/paga.MOBICAPL/Documents/stm32/ModulOdbiorczy/Inc" -I"C:/Users/paga.MOBICAPL/Documents/stm32/ModulOdbiorczy/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/paga.MOBICAPL/Documents/stm32/ModulOdbiorczy/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/paga.MOBICAPL/Documents/stm32/ModulOdbiorczy/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/paga.MOBICAPL/Documents/stm32/ModulOdbiorczy/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/paga.MOBICAPL/Documents/stm32/ModulOdbiorczy/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/paga.MOBICAPL/Documents/stm32/ModulOdbiorczy/Drivers/CMSIS/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


