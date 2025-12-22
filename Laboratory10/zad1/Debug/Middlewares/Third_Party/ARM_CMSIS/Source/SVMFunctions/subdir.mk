################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f16.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f32.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f16.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f32.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f16.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f32.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f16.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f32.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f16.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f32.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c 

OBJS += \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f16.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f32.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f16.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f32.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f16.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f32.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f16.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f32.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f16.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f32.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o 

C_DEPS += \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f16.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f32.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f16.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f32.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f16.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f32.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f16.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f32.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f16.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f32.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/%.o Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/%.su Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/%.cyclo: ../Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/%.c Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I"/home/Bartosz/Desktop/MicrocontrollerLaboratories/Laboratory10/zad1/Components/Inc" -I"/home/Bartosz/Desktop/MicrocontrollerLaboratories/Laboratory10/zad1/Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I/home/Bartosz/Desktop/MicrocontrollerLaboratories/Laboratory10/zad1/Components/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/ARM_CMSIS/PrivateInclude/ -I../Middlewares/Third_Party/ARM_CMSIS/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/Include -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-SVMFunctions

clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-SVMFunctions:
	-$(RM) ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f16.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f32.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f32.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f32.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_init_f32.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f16.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f32.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f32.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f32.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_linear_predict_f32.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f16.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f32.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f32.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f32.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_init_f32.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f16.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f32.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_polynomial_predict_f32.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f16.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f32.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f32.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f32.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_init_f32.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f16.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f32.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f32.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f32.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_rbf_predict_f32.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f16.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f32.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_init_f32.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-SVMFunctions

