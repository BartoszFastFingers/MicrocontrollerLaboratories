################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/Src/A_mat.c \
../Components/Src/B_mat.c \
../Components/Src/C_REF_mat.c \
../Components/Src/C_mat.c 

OBJS += \
./Components/Src/A_mat.o \
./Components/Src/B_mat.o \
./Components/Src/C_REF_mat.o \
./Components/Src/C_mat.o 

C_DEPS += \
./Components/Src/A_mat.d \
./Components/Src/B_mat.d \
./Components/Src/C_REF_mat.d \
./Components/Src/C_mat.d 


# Each subdirectory must supply rules for building sources it contributes
Components/Src/%.o Components/Src/%.su Components/Src/%.cyclo: ../Components/Src/%.c Components/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Components/Inc -I../Middlewares/Third_Party/ARM_CMSIS/Include -I../Middlewares/Third_Party/ARM_CMSIS/PrivateInclude -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Components-2f-Src

clean-Components-2f-Src:
	-$(RM) ./Components/Src/A_mat.cyclo ./Components/Src/A_mat.d ./Components/Src/A_mat.o ./Components/Src/A_mat.su ./Components/Src/B_mat.cyclo ./Components/Src/B_mat.d ./Components/Src/B_mat.o ./Components/Src/B_mat.su ./Components/Src/C_REF_mat.cyclo ./Components/Src/C_REF_mat.d ./Components/Src/C_REF_mat.o ./Components/Src/C_REF_mat.su ./Components/Src/C_mat.cyclo ./Components/Src/C_mat.d ./Components/Src/C_mat.o ./Components/Src/C_mat.su

.PHONY: clean-Components-2f-Src

