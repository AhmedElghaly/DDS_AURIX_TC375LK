################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Libraries/iLLD/TC37A/Tricore/_PinMap/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/_Impl/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Stm/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Src/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Scu/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Port/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Pms/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Mtu/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Gtm/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Geth/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Geth/Eth/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Cpu/Trap/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Cpu/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Cpu/Irq/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Asclin/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Asclin/Asc/subdir.mk
-include Libraries/embeddedRTPS/thirdparty/lwip/subdir.mk
-include Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/types/subdir.mk
-include Libraries/embeddedRTPS/thirdparty/Micro-CDR/src/c/subdir.mk
-include Libraries/embeddedRTPS/src/utils/subdir.mk
-include Libraries/embeddedRTPS/src/storages/subdir.mk
-include Libraries/embeddedRTPS/src/messages/subdir.mk
-include Libraries/embeddedRTPS/src/entities/subdir.mk
-include Libraries/embeddedRTPS/src/discovery/subdir.mk
-include Libraries/embeddedRTPS/src/communication/subdir.mk
-include Libraries/embeddedRTPS/src/subdir.mk
-include Libraries/UART/subdir.mk
-include Libraries/Service/CpuGeneric/SysSe/Comm/subdir.mk
-include Libraries/Service/CpuGeneric/SysSe/Bsp/subdir.mk
-include Libraries/Service/CpuGeneric/StdIf/subdir.mk
-include Libraries/Infra/Ssw/TC37A/Tricore/subdir.mk
-include Libraries/Infra/Platform/Tricore/Compilers/subdir.mk
-include Libraries/FreeRTOS/portable/TriCore/subdir.mk
-include Libraries/FreeRTOS/portable/MemMang/subdir.mk
-include Libraries/FreeRTOS/subdir.mk
-include Libraries/Ethernet/lwip/src/netif/ppp/polarssl/subdir.mk
-include Libraries/Ethernet/lwip/src/netif/ppp/subdir.mk
-include Libraries/Ethernet/lwip/src/netif/subdir.mk
-include Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
-include Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
-include Libraries/Ethernet/lwip/src/core/subdir.mk
-include Libraries/Ethernet/lwip/src/api/subdir.mk
-include Libraries/Ethernet/lwip/port/src/subdir.mk
-include Libraries/Ethernet/Phy_Dp83825i/subdir.mk
-include Configurations/Debug/subdir.mk
-include Configurations/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := Ethernet_1_KIT_TC375_LK
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_SIZE += \
Ethernet_1_KIT_TC375_LK.siz \


# All Target
all: main-build

# Main-build Target
main-build: Ethernet_1_KIT_TC375_LK.elf secondary-outputs

# Tool invocations
Ethernet_1_KIT_TC375_LK.elf: $(OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: TASKING Linker'
	cctc -lrt -lfp_fpu -lcs_fpu  -Wl-Oc -Wl-OL -Wl-Ot -Wl-Ox -Wl-Oy -Wl--map-file="Ethernet_1_KIT_TC375_LK.map" -Wl-mc -Wl-mf -Wl-mi -Wl-mk -Wl-ml -Wl-mm -Wl-md -Wl-mr -Wl-mu --no-warnings= -Wl--error-limit=42 --exceptions --strict --anachronisms --force-c++ -Ctc37x   -o"Ethernet_1_KIT_TC375_LK.elf" -Wl-o"Ethernet_1_KIT_TC375_LK.hex:IHEX" --lsl-core=vtc  --lsl-file=../Lcf_Tasking_Tricore_Tc.lsl $(OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

Ethernet_1_KIT_TC375_LK.siz: Ethernet_1_KIT_TC375_LK.elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: Print Size'
	elfsize  "Ethernet_1_KIT_TC375_LK.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	find . ! -name "*.mk" ! -name "makefile" ! -name "." -type f -delete 
	-@echo ' '

secondary-outputs: $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build

-include ../makefile.targets
