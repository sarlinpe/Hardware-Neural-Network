################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

CPP_SRCS += \
../src/hw_imp.cpp \
../src/main.cpp \
../src/sw_imp.cpp \
../src/utility.cpp 

OBJS += \
./src/hw_imp.o \
./src/main.o \
./src/sw_imp.o \
./src/utility.o 

CPP_DEPS += \
./src/hw_imp.d \
./src/main.d \
./src/sw_imp.d \
./src/utility.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 g++ compiler'
	arm-none-eabi-g++ -Wall -O0 -g3 -I/home/pe_s/Documents/Libraries/Eigen -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=neon -mfpu=vfpv3 -mfloat-abi=hard -I../../SW_HW_serial_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


