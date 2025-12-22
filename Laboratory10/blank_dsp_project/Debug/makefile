################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/WindowFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/TransformFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/StatisticsFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/SVMFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/QuaternionMathFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/MatrixFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/InterpolationFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/FilteringFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/DistanceFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/ControllerFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/ComplexMathFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/CommonTables/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/BayesFunctions/subdir.mk
-include Middlewares/Third_Party/ARM_CMSIS/Source/BasicMathFunctions/subdir.mk
-include Drivers/STM32L4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := blank_dsp_project
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
blank_dsp_project.elf \

MAP_FILES += \
blank_dsp_project.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
blank_dsp_project.list \


# All Target
all: main-build

# Main-build Target
main-build: blank_dsp_project.elf secondary-outputs

# Tool invocations
blank_dsp_project.elf blank_dsp_project.map: $(OBJS) $(USER_OBJS) /home/Bartosz/Desktop/MicrocontrollerLaboratories/Laboratory10/blank_dsp_project/STM32L476RGTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "blank_dsp_project.elf" @"objects.list" $(USER_OBJS) -Wl,--start-group $(LIBS) -Wl,--end-group -mcpu=cortex-m4 -T"/home/Bartosz/Desktop/MicrocontrollerLaboratories/Laboratory10/blank_dsp_project/STM32L476RGTX_FLASH.ld" -Wl,-Map="blank_dsp_project.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -u _printf_float -u _scanf_float -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

blank_dsp_project.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "blank_dsp_project.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) blank_dsp_project.elf blank_dsp_project.list blank_dsp_project.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
