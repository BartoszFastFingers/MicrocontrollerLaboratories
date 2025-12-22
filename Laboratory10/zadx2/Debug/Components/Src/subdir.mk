################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/Src/FIR1_fir.c \
../Components/Src/X1_vec.c \
../Components/Src/Y1_REF_vec.c \
../Components/Src/Y1_vec.c 

OBJS += \
./Components/Src/FIR1_fir.o \
./Components/Src/X1_vec.o \
./Components/Src/Y1_REF_vec.o \
./Components/Src/Y1_vec.o 

C_DEPS += \
./Components/Src/FIR1_fir.d \
./Components/Src/X1_vec.d \
./Components/Src/Y1_REF_vec.d \
./Components/Src/Y1_vec.d 


# Each subdirectory must supply rules for building sources it contributes
Components/Src/%.o Components/Src/%.su Components/Src/%.cyclo: ../Components/Src/%.c Components/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Components/Inc -I../Middlewares/Third_Party/ARM_CMSIS/Include -I../Middlewares/Third_Party/ARM_CMSIS/PrivateInclude -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Components-2f-Src

clean-Components-2f-Src:
	-$(RM) ./Components/Src/FIR1_fir.cyclo ./Components/Src/FIR1_fir.d ./Components/Src/FIR1_fir.o ./Components/Src/FIR1_fir.su ./Components/Src/X1_vec.cyclo ./Components/Src/X1_vec.d ./Components/Src/X1_vec.o ./Components/Src/X1_vec.su ./Components/Src/Y1_REF_vec.cyclo ./Components/Src/Y1_REF_vec.d ./Components/Src/Y1_REF_vec.o ./Components/Src/Y1_REF_vec.su ./Components/Src/Y1_vec.cyclo ./Components/Src/Y1_vec.d ./Components/Src/Y1_vec.o ./Components/Src/Y1_vec.su

.PHONY: clean-Components-2f-Src

