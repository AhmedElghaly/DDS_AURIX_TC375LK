/**********************************************************************************************************************
 * \file Cpu0_Main.c
 * \copyright Copyright (C) Infineon Technologies AG 2019
 *
 * Use of this file is subject to the terms of use agreed between (i) you or the company in which ordinary course of
 * business you are acting and (ii) Infineon Technologies AG or its licensees. If and as long as no such terms of use
 * are agreed, use of this file is subject to following:
 *
 * Boost Software License - Version 1.0 - August 17th, 2003
 *
 * Permission is hereby granted, free of charge, to any person or organization obtaining a copy of the software and
 * accompanying documentation covered by this license (the "Software") to use, reproduce, display, distribute, execute,
 * and transmit the Software, and to prepare derivative works of the Software, and to permit third-parties to whom the
 * Software is furnished to do so, all subject to the following:
 *
 * The copyright notices in the Software and this entire statement, including the above license grant, this restriction
 * and the following disclaimer, must be included in all copies of the Software, in whole or in part, and all
 * derivative works of the Software, unless such copies or derivative works are solely in the form of
 * machine-executable object code generated by a source language processor.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN
 * CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 *********************************************************************************************************************/
 /*\title Ethernet communication
 * \abstract The Gigabit Ethernet Media Access Controller (GETH) module and the Lightweight IP (LwIP) stack are used to implement a network echo application.
 * \description The TCP/IP protocol provided by the Lightweight IP (LwIP) is used to exchange strings between the board
 *              and a remote client terminal.
 *              The board obtains an IP address and publishes its hostname using the DHCP protocol.
 *              The System Timer Module (STM) is used to update the internal LwIP timers.
 *              The Asynchronous/Synchronous Interface (ASCLIN) module is used for debug logging.
 *
 * \name Ethernet_1_KIT_TC375_LK
 * \version V1.0.0
 * \board AURIX TC375 lite Kit, KIT_A2G_TC375_LITE, TC37xTP_A-Step
 * \keywords Ethernet, communication, Ethernet_1, AURIX, UART
 * \documents https://www.infineon.com/aurix-expert-training/Infineon-AURIX_Ethernet_1_KIT_TC375_LK-TR-v01_00_00-EN.pdf
 * \documents https://www.infineon.com/aurix-expert-training/TC37A_iLLD_UM_1_0_1_12_1.chm
 * \lastUpdated 2021-03-22
 *********************************************************************************************************************/

/*********************************************************************************************************************/
/*-----------------------------------------------------Includes------------------------------------------------------*/
/*********************************************************************************************************************/
#include "Ifx_Types.h"
#include "IfxStm.h"
#include "Ifx_reg.h"
#include "IfxScuRcu.h"
#include "IfxGeth_Eth.h"
#include "Ifx_Console.h"
#include "Configuration.h"
#include "ConfigurationIsr.h"
#include "Ifx_Lwip.h"
#include "Echo.h"
#include <iostream>
//using namespace std;


/*********************************************************************************************************************/
/*-------------------------------------------------Global variables--------------------------------------------------*/
/*********************************************************************************************************************/
IfxCpu_syncEvent g_cpuSyncEvent = 0;

/*********************************************************************************************************************/
/*---------------------------------------------Function Implementations----------------------------------------------*/
/*********************************************************************************************************************/
void core0_main (void)
{

    /* Enable the global interrupts of this CPU */
    IfxCpu_enableInterrupts();

    /* !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
     * Enable the watchdogs and service them periodically if it is required
     */
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());

    /* Wait for CPU sync event: wait until all CPUs are in CpuX_Main to avoid variables' initialization problems */
    IfxCpu_emitEvent(&g_cpuSyncEvent);
    IfxCpu_waitEvent(&g_cpuSyncEvent, 1);

    IfxStm_CompareConfig stmCompareConfig;                                  /* STM Configuration declaration                */

    IfxStm_initCompareConfig(&stmCompareConfig);                            /* Initialize a default configuration for STM   */

    stmCompareConfig.triggerPriority     = ISR_PRIORITY_OS_TICK;            /* Priority of the interrupt generated by STM   */
    stmCompareConfig.comparatorInterrupt = IfxStm_ComparatorInterrupt_ir0;  /* Select the request source 0                  */
    stmCompareConfig.ticks               = IFX_CFG_STM_TICKS_PER_MS * 10;   /* First interrupt shall occur after 10 ms      */
    stmCompareConfig.typeOfService       = IfxSrc_Tos_cpu0;                 /* CPU0 serves the interrupts                   */

    IfxStm_initCompare(&MODULE_STM0, &stmCompareConfig);                    /* Initialize the Compare functionality         */

    IfxGeth_enableModule(&MODULE_GETH);                     /* Enable Gigabit Ethernet Media Access Controller (GETH) module*/

    /* Define a MAC Address */
    eth_addr_t ethAddr;
    ethAddr.addr[0] = 0xDE;
    ethAddr.addr[1] = 0xAD;
    ethAddr.addr[2] = 0xBE;
    ethAddr.addr[3] = 0xEF;
    ethAddr.addr[4] = 0xFE;
    ethAddr.addr[5] = 0xED;

    Ifx_Lwip_init(ethAddr);                                 /* Initialize LwIP with the MAC address                         */

    echoInit();                                             /* Initialize ECHO application                                  */

    while (1)
    {
        Ifx_Lwip_pollTimerFlags();                          /* Poll LwIP timers and trigger protocols execution if required */
        Ifx_Lwip_pollReceiveFlags();                        /* Receive data package through ETH                             */
    }
}

/* This interrupt is raised by the STM0 */
IFX_INTERRUPT (updateLwIPStackISR, 0, ISR_PRIORITY_OS_TICK);

/* ISR to update LwIP stack */
void updateLwIPStackISR(void)
{
    /* Configure STM to generate an interrupt in 1 ms */
    IfxStm_increaseCompare(&MODULE_STM0, IfxStm_Comparator_0, IFX_CFG_STM_TICKS_PER_MS);

    g_TickCount_1ms++;                                      /* Increase LwIP system time                                    */

    Ifx_Lwip_onTimerTick();                                 /* Every 1 ms LwIP timers are increased for all the enabled
                                                             * protocols (ARP, TCP, DHCP, LINK)                             */
}
