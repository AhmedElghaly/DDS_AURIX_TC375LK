################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Libraries/embeddedRTPS/src/messages/MessageReceiver.cpp \
../Libraries/embeddedRTPS/src/messages/MessageTypes.cpp 

OBJS += \
./Libraries/embeddedRTPS/src/messages/MessageReceiver.o \
./Libraries/embeddedRTPS/src/messages/MessageTypes.o 

COMPILED_SRCS += \
./Libraries/embeddedRTPS/src/messages/MessageReceiver.src \
./Libraries/embeddedRTPS/src/messages/MessageTypes.src 

CPP_DEPS += \
./Libraries/embeddedRTPS/src/messages/MessageReceiver.d \
./Libraries/embeddedRTPS/src/messages/MessageTypes.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/embeddedRTPS/src/messages/%.src: ../Libraries/embeddedRTPS/src/messages/%.cpp Libraries/embeddedRTPS/src/messages/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -D__CPU__=tc37x "-fC:/Users/Ahmed/Desktop/AURIX_DDS/DDS_KIT_TC375_LK/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --integer-enumeration --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -o "$@"  "$<"  -cs --dep-file="$(@:.src=.d)" --misrac-version=2012 -N0 -Z0 -Y0 2>&1;
	@echo 'Finished building: $<'
	@echo ' '

Libraries/embeddedRTPS/src/messages/%.o: ./Libraries/embeddedRTPS/src/messages/%.src Libraries/embeddedRTPS/src/messages/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\portable\TriCore" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include\ucdr\types" -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<" --list-format=L1 --optimize=gs
	@echo 'Finished building: $<'
	@echo ' '


