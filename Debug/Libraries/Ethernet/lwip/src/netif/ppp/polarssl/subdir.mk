################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/arc4.c \
../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/des.c \
../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md4.c \
../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md5.c \
../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/sha1.c 

OBJS += \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/arc4.o \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/des.o \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md4.o \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md5.o \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/sha1.o 

COMPILED_SRCS += \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/arc4.src \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/des.src \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md4.src \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md5.src \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/sha1.src 

C_DEPS += \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/arc4.d \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/des.d \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md4.d \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md5.d \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/sha1.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/netif/ppp/polarssl/%.src: ../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/%.c Libraries/Ethernet/lwip/src/netif/ppp/polarssl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -D__CPU__=tc37x "-fC:/Users/Ahmed/Desktop/AURIX_DDS/DDS_KIT_TC375_LK/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --integer-enumeration --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -o "$@"  "$<"  -cs --dep-file="$(@:.src=.d)" --misrac-version=2012 -N0 -Z0 -Y0 2>&1;
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/netif/ppp/polarssl/%.o: ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/%.src Libraries/Ethernet/lwip/src/netif/ppp/polarssl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\FreeRTOS\portable\TriCore" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include" -I"C:\Users\Ahmed\Desktop\AURIX_DDS\DDS_KIT_TC375_LK\Libraries\embeddedRTPS\thirdparty\Micro-CDR\include\ucdr\types" -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<" --list-format=L1 --optimize=gs
	@echo 'Finished building: $<'
	@echo ' '


