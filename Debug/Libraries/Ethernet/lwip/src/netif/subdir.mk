################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/netif/bridgeif.c \
../Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.c \
../Libraries/Ethernet/lwip/src/netif/ethernet.c \
../Libraries/Ethernet/lwip/src/netif/lowpan6.c \
../Libraries/Ethernet/lwip/src/netif/lowpan6_ble.c \
../Libraries/Ethernet/lwip/src/netif/lowpan6_common.c \
../Libraries/Ethernet/lwip/src/netif/zepif.c 

OBJS += \
./Libraries/Ethernet/lwip/src/netif/bridgeif.o \
./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.o \
./Libraries/Ethernet/lwip/src/netif/ethernet.o \
./Libraries/Ethernet/lwip/src/netif/lowpan6.o \
./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.o \
./Libraries/Ethernet/lwip/src/netif/lowpan6_common.o \
./Libraries/Ethernet/lwip/src/netif/zepif.o 

COMPILED_SRCS += \
./Libraries/Ethernet/lwip/src/netif/bridgeif.src \
./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.src \
./Libraries/Ethernet/lwip/src/netif/ethernet.src \
./Libraries/Ethernet/lwip/src/netif/lowpan6.src \
./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.src \
./Libraries/Ethernet/lwip/src/netif/lowpan6_common.src \
./Libraries/Ethernet/lwip/src/netif/zepif.src 

C_DEPS += \
./Libraries/Ethernet/lwip/src/netif/bridgeif.d \
./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.d \
./Libraries/Ethernet/lwip/src/netif/ethernet.d \
./Libraries/Ethernet/lwip/src/netif/lowpan6.d \
./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.d \
./Libraries/Ethernet/lwip/src/netif/lowpan6_common.d \
./Libraries/Ethernet/lwip/src/netif/zepif.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/netif/%.src: ../Libraries/Ethernet/lwip/src/netif/%.c Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -D__CPU__=tc37x "-fC:/Users/Ahmed/Desktop/AURIX_DDS/DDS_KIT_TC375_LK/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --integer-enumeration --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -o "$@"  "$<"  -cs --dep-file="$(@:.src=.d)" --misrac-version=2012 -N0 -Z0 -Y0 2>&1;
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/netif/%.o: ./Libraries/Ethernet/lwip/src/netif/%.src Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\portable\TriCore" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include\ucdr\types" -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<" --list-format=L1 --optimize=gs
	@echo 'Finished building: $<'
	@echo ' '


