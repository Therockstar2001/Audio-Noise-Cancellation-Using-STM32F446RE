################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/DSP_source/CommonTables/arm_common_tables.c 

OBJS += \
./Core/DSP_source/CommonTables/arm_common_tables.o 

C_DEPS += \
./Core/DSP_source/CommonTables/arm_common_tables.d 


# Each subdirectory must supply rules for building sources it contributes
Core/DSP_source/CommonTables/%.o Core/DSP_source/CommonTables/%.su Core/DSP_source/CommonTables/%.cyclo: ../Core/DSP_source/CommonTables/%.c Core/DSP_source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/STM32/DSP/Core/DSP_include" -I"D:/STM32/DSP/Core/DSP_source" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-DSP_source-2f-CommonTables

clean-Core-2f-DSP_source-2f-CommonTables:
	-$(RM) ./Core/DSP_source/CommonTables/arm_common_tables.cyclo ./Core/DSP_source/CommonTables/arm_common_tables.d ./Core/DSP_source/CommonTables/arm_common_tables.o ./Core/DSP_source/CommonTables/arm_common_tables.su

.PHONY: clean-Core-2f-DSP_source-2f-CommonTables

