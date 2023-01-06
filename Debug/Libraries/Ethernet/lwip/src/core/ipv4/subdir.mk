################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/core/ipv4/autoip.c \
../Libraries/Ethernet/lwip/src/core/ipv4/dhcp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/etharp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/icmp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/igmp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/ip4.c \
../Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.c \
../Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.c 

OBJS += \
./Libraries/Ethernet/lwip/src/core/ipv4/autoip.o \
./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/etharp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/icmp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/igmp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4.o \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.o \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.o 

COMPILED_SRCS += \
./Libraries/Ethernet/lwip/src/core/ipv4/autoip.src \
./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.src \
./Libraries/Ethernet/lwip/src/core/ipv4/etharp.src \
./Libraries/Ethernet/lwip/src/core/ipv4/icmp.src \
./Libraries/Ethernet/lwip/src/core/ipv4/igmp.src \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4.src \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.src \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.src 

C_DEPS += \
./Libraries/Ethernet/lwip/src/core/ipv4/autoip.d \
./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/etharp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/icmp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/igmp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4.d \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.d \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/core/ipv4/%.src: ../Libraries/Ethernet/lwip/src/core/ipv4/%.c Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -D__CPU__=tc37x "-fC:/Users/Ahmed/Desktop/AURIX_DDS/DDS_KIT_TC375_LK/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --integer-enumeration --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -o "$@"  "$<"  -cs --dep-file="$(@:.src=.d)" --misrac-version=2012 -N0 -Z0 -Y0 2>&1;
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv4/%.o: ./Libraries/Ethernet/lwip/src/core/ipv4/%.src Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\portable\TriCore" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include\ucdr\types" -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<" --list-format=L1 --optimize=gs
	@echo 'Finished building: $<'
	@echo ' '


