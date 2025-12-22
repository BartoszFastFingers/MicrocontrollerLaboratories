################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables_f16.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs_f16.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables_f16.c 

OBJS += \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables_f16.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs_f16.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables_f16.o 

C_DEPS += \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables_f16.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs_f16.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables_f16.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/%.o Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/%.su Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/%.cyclo: ../Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/%.c Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I"/home/Bartosz/Desktop/MicrocontrollerLaboratories/Laboratory10/zad1/Components/Inc" -I"/home/Bartosz/Desktop/MicrocontrollerLaboratories/Laboratory10/zad1/Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I/home/Bartosz/Desktop/MicrocontrollerLaboratories/Laboratory10/zad1/Components/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/ARM_CMSIS/PrivateInclude/ -I../Middlewares/Third_Party/ARM_CMSIS/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/Include -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-CommonTables

clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-CommonTables:
	-$(RM) ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables.d ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables.o ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables.su ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_common_tables_f16.su ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs.d ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs.o ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs.su ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_const_structs_f16.su ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables.d ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables.o ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables.su ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables_f16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables_f16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables_f16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/arm_mve_tables_f16.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-CommonTables

