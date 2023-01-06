################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/array.c \
../Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/basic.c \
../Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/sequence.c \
../Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/string.c 

OBJS += \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/array.o \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/basic.o \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/sequence.o \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/string.o 

COMPILED_SRCS += \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/array.src \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/basic.src \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/sequence.src \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/string.src 

C_DEPS += \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/array.d \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/basic.d \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/sequence.d \
./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/string.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/%.src: ../Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/%.c Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -D__CPU__=tc37x "-fC:/Users/Ahmed/Desktop/AURIX_DDS/DDS_KIT_TC375_LK/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --integer-enumeration --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -o "$@"  "$<"  -cs --dep-file="$(@:.src=.d)" --misrac-version=2012 -N0 -Z0 -Y0 2>&1;
	@echo 'Finished building: $<'
	@echo ' '

Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/%.o: ./Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/%.src Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\portable\TriCore" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include\ucdr\types" -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<" --list-format=L1 --optimize=gs
	@echo 'Finished building: $<'
	@echo ' '


