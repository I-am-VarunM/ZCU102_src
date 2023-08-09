################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/xsysmon/xsysmon_polled_example.c 

OBJS += \
./src/xsysmon/xsysmon_polled_example.o 

C_DEPS += \
./src/xsysmon/xsysmon_polled_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/xsysmon/%.o: ../src/xsysmon/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../sysmonforaes_bsp/psu_cortexa53_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


