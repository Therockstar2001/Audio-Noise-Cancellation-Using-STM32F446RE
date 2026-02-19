################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/DSP_source/StatisticsFunctions/arm_rms_f32.c 

OBJS += \
./Core/DSP_source/StatisticsFunctions/arm_rms_f32.o 

C_DEPS += \
./Core/DSP_source/StatisticsFunctions/arm_rms_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Core/DSP_source/StatisticsFunctions/%.o Core/DSP_source/StatisticsFunctions/%.su Core/DSP_source/StatisticsFunctions/%.cyclo: ../Core/DSP_source/StatisticsFunctions/%.c Core/DSP_source/StatisticsFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/STM32/DSP/Core/DSP_include" -I"D:/STM32/DSP/Core/DSP_source" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-DSP_source-2f-StatisticsFunctions

clean-Core-2f-DSP_source-2f-StatisticsFunctions:
	-$(RM) ./Core/DSP_source/StatisticsFunctions/arm_rms_f32.cyclo ./Core/DSP_source/StatisticsFunctions/arm_rms_f32.d ./Core/DSP_source/StatisticsFunctions/arm_rms_f32.o ./Core/DSP_source/StatisticsFunctions/arm_rms_f32.su

.PHONY: clean-Core-2f-DSP_source-2f-StatisticsFunctions

