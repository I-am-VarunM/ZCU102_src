################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/classifier/xsysmon/xsysmon_polled_example.c 

OBJS += \
./src/classifier/xsysmon/xsysmon_polled_example.o 

C_DEPS += \
./src/classifier/xsysmon/xsysmon_polled_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/classifier/xsysmon/%.o: ../src/classifier/xsysmon/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -I../../ZCU1021core_bsp/psu_cortexa53_0/include -I/home/manvar00/Downloads/RELEASE_DVD/vivado_designs/Zcu_102_varun/project_2/project_2.sdk/sysmon_ported_zcu102/src/xsysmon_psu -I/home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu102_src/project_2/project_2.sdk/sysmon_ported_zcu102/src/xsysmon -I/home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu102_src/project_2/project_2.sdk/sysmon_ported_zcu102/src/peripheral -I/home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu102_src/project_2/project_2.sdk/sysmon_ported_zcu102/src/interrupts -I/home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu102_src/project_2/project_2.sdk/sysmon_ported_zcu102/src/classifier -I/home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu102_src/project_2/project_2.sdk/sysmon_ported_zcu102/src -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


