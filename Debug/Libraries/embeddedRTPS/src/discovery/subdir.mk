################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Libraries/embeddedRTPS/src/discovery/ParticipantProxyData.cpp \
../Libraries/embeddedRTPS/src/discovery/SEDPAgent.cpp \
../Libraries/embeddedRTPS/src/discovery/SPDPAgent.cpp \
../Libraries/embeddedRTPS/src/discovery/TopicData.cpp 

OBJS += \
./Libraries/embeddedRTPS/src/discovery/ParticipantProxyData.o \
./Libraries/embeddedRTPS/src/discovery/SEDPAgent.o \
./Libraries/embeddedRTPS/src/discovery/SPDPAgent.o \
./Libraries/embeddedRTPS/src/discovery/TopicData.o 

COMPILED_SRCS += \
./Libraries/embeddedRTPS/src/discovery/ParticipantProxyData.src \
./Libraries/embeddedRTPS/src/discovery/SEDPAgent.src \
./Libraries/embeddedRTPS/src/discovery/SPDPAgent.src \
./Libraries/embeddedRTPS/src/discovery/TopicData.src 

CPP_DEPS += \
./Libraries/embeddedRTPS/src/discovery/ParticipantProxyData.d \
./Libraries/embeddedRTPS/src/discovery/SEDPAgent.d \
./Libraries/embeddedRTPS/src/discovery/SPDPAgent.d \
./Libraries/embeddedRTPS/src/discovery/TopicData.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/embeddedRTPS/src/discovery/%.src: ../Libraries/embeddedRTPS/src/discovery/%.cpp Libraries/embeddedRTPS/src/discovery/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -D__CPU__=tc37x "-fC:/Users/Ahmed/Desktop/AURIX_DDS/DDS_KIT_TC375_LK/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --integer-enumeration --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -o "$@"  "$<"  -cs --dep-file="$(@:.src=.d)" --misrac-version=2012 -N0 -Z0 -Y0 2>&1;
	@echo 'Finished building: $<'
	@echo ' '

Libraries/embeddedRTPS/src/discovery/%.o: ./Libraries/embeddedRTPS/src/discovery/%.src Libraries/embeddedRTPS/src/discovery/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\portable\TriCore" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include\ucdr\types" -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<" --list-format=L1 --optimize=gs
	@echo 'Finished building: $<'
	@echo ' '


