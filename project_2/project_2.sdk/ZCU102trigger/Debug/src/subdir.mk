################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/platform.c \
../src/trigger.c 

OBJS += \
./src/platform.o \
./src/trigger.o 

C_DEPS += \
./src/platform.d \
./src/trigger.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -I../../ZCU102trigger_bsp/psu_cortexa53_1/include -I/home/manvar00/Downloads/Zcu_102_varun/project_2/project_2.sdk/ZCU102trigger/src -I/home/manvar00/Downloads/Zcu_102_varun/project_2/project_2.sdk/ZCU102trigger/src/xsysmon_psu -I/home/manvar00/Downloads/Zcu_102_varun/project_2/project_2.sdk/ZCU102trigger/src/xsysmon -I/home/manvar00/Downloads/Zcu_102_varun/project_2/project_2.sdk/ZCU102trigger/src/peripheral -I/home/manvar00/Downloads/Zcu_102_varun/project_2/project_2.sdk/ZCU102trigger/src/interrupts -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


