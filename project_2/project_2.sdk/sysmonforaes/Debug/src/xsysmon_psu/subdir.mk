################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/xsysmon_psu/xsysmonpsu_polled_example.c 

OBJS += \
./src/xsysmon_psu/xsysmonpsu_polled_example.o 

C_DEPS += \
./src/xsysmon_psu/xsysmonpsu_polled_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/xsysmon_psu/%.o: ../src/xsysmon_psu/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../sysmonforaes_bsp/psu_cortexa53_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


