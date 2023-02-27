/*******************************************************************************
  Real Time Counter (RTC) PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_rtc_timer.c

  Summary:
    RTC PLIB Implementation file

  Description:
    This file defines the interface to the RTC peripheral library. This
    library provides access to and control of the associated peripheral
    instance in timer mode.

*******************************************************************************/
// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

#include "interrupts.h"
#include "plib_rtc.h"
#include <stdlib.h>
#include <limits.h>

static RTC_OBJECT rtcObj;


void RTC_Initialize(void)
{
    RTC_REGS->MODE1.RTC_CTRLA = RTC_MODE1_CTRLA_SWRST_Msk;

    while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_SWRST_Msk) == RTC_MODE1_SYNCBUSY_SWRST_Msk)
    {
        /* Wait for Synchronization after Software Reset */
    }


    RTC_REGS->MODE1.RTC_CTRLA = (uint16_t)(RTC_MODE1_CTRLA_MODE(1UL) | RTC_MODE1_CTRLA_PRESCALER(9UL) | RTC_MODE1_CTRLA_COUNTSYNC_Msk );

    while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_COUNTSYNC_Msk) == RTC_MODE1_SYNCBUSY_COUNTSYNC_Msk)
    {
       /* Wait for Synchronization */
    }
    RTC_REGS->MODE1.RTC_COMP[0] = 0x0U;

   while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_COMP0_Msk) == RTC_MODE1_SYNCBUSY_COMP0_Msk)
   {
       /* Wait for Synchronization after writing Compare Value */
   }

    RTC_REGS->MODE1.RTC_COMP[1] = 0x0U;

   while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_COMP1_Msk) == RTC_MODE1_SYNCBUSY_COMP1_Msk)
   {
       /* Wait for Synchronization after writing Compare Value */
   }

    RTC_REGS->MODE1.RTC_PER = 0x0;

    while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_PER_Msk) == RTC_MODE1_SYNCBUSY_PER_Msk)
    {
        /* Wait for Synchronization after writing Counter Period */
    }

}


void RTC_Timer16CountSyncEnable ( void )
{
    RTC_REGS->MODE1.RTC_CTRLA |= RTC_MODE1_CTRLA_COUNTSYNC_Msk;

    while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_COUNTSYNC_Msk) == RTC_MODE1_SYNCBUSY_COUNTSYNC_Msk)
    {
        /* Wait for Synchronization */
    }
}

void RTC_Timer16CountSyncDisable ( void )
{
    RTC_REGS->MODE1.RTC_CTRLA &= (uint16_t)(~RTC_MODE1_CTRLA_COUNTSYNC_Msk);

    while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_COUNTSYNC_Msk) == RTC_MODE1_SYNCBUSY_COUNTSYNC_Msk)
    {
        /* Wait for Synchronization */
    }
}

void RTC_Timer16Start ( void )
{
    RTC_REGS->MODE1.RTC_CTRLA |= (uint16_t)RTC_MODE1_CTRLA_ENABLE_Msk;

    while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_ENABLE_Msk) == RTC_MODE1_SYNCBUSY_ENABLE_Msk)
    {
        /* Wait for Synchronization after Enabling RTC */
    }
}

void RTC_Timer16Stop ( void )
{
    RTC_REGS->MODE1.RTC_CTRLA &= (uint16_t)(~RTC_MODE1_CTRLA_ENABLE_Msk);

    while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_ENABLE_Msk) == RTC_MODE1_SYNCBUSY_ENABLE_Msk)
    {
        /* Wait for Synchronization after Disabling RTC */
    }
}


void RTC_Timer16CounterSet ( uint16_t count )
{
    RTC_REGS->MODE1.RTC_COUNT = count;

    while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_COUNT_Msk) == RTC_MODE1_SYNCBUSY_COUNT_Msk)
    {
        /* Wait for Synchronization after writing value to Count Register */
    }
}


void RTC_Timer16PeriodSet ( uint16_t period )
{
    RTC_REGS->MODE1.RTC_PER = period;

    while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_PER_Msk) == RTC_MODE1_SYNCBUSY_PER_Msk)
    {
        /* Wait for Synchronization after writing Counter Period */
    }
}

uint16_t RTC_Timer16CounterGet ( void )
{
    if ((RTC_REGS->MODE1.RTC_CTRLA & RTC_MODE1_CTRLA_COUNTSYNC_Msk) == 0U)
    {
        RTC_REGS->MODE1.RTC_CTRLA |= RTC_MODE1_CTRLA_COUNTSYNC_Msk;

        while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_COUNTSYNC_Msk) == RTC_MODE1_SYNCBUSY_COUNTSYNC_Msk)
        {
           /* Wait for Synchronization */
        }
    }
    while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_COUNT_Msk) == RTC_MODE1_SYNCBUSY_COUNT_Msk)
    {
        /* Wait for Synchronization after reading value from Count Register */
    }
   return(RTC_REGS->MODE1.RTC_COUNT);
}

uint16_t RTC_Timer16PeriodGet ( void )
{
    return (RTC_REGS->MODE1.RTC_PER);
}

void RTC_Timer16Compare0Set ( uint16_t comparisionValue )
{
   RTC_REGS->MODE1.RTC_COMP[0] = comparisionValue;

   while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_COMP0_Msk) == RTC_MODE1_SYNCBUSY_COMP0_Msk)
   {
       /* Wait for Synchronization after writing Compare Value */
   }
}
void RTC_Timer16Compare1Set ( uint16_t comparisionValue )
{
   RTC_REGS->MODE1.RTC_COMP[1] = comparisionValue;

   while((RTC_REGS->MODE1.RTC_SYNCBUSY & RTC_MODE1_SYNCBUSY_COMP1_Msk) == RTC_MODE1_SYNCBUSY_COMP1_Msk)
   {
       /* Wait for Synchronization after writing Compare Value */
   }
}

uint32_t RTC_Timer16FrequencyGet ( void )
{
    return RTC_COUNTER_CLOCK_FREQUENCY;
}


void RTC_Timer16InterruptEnable( RTC_TIMER16_INT_MASK interruptMask )
{
    RTC_REGS->MODE1.RTC_INTENSET = (uint16_t)interruptMask;
}

void RTC_Timer16InterruptDisable( RTC_TIMER16_INT_MASK interruptMask )
{
    RTC_REGS->MODE1.RTC_INTENCLR = (uint16_t)interruptMask;
}

 TAMPER_CHANNEL RTC_TamperSourceGet( void )
{
    return((TAMPER_CHANNEL) ((RTC_REGS->MODE1.RTC_TAMPID) & (0xFFU)));
}

uint16_t RTC_Timer16TimeStampGet( void )
{
    return((uint16_t)RTC_REGS->MODE1.RTC_TIMESTAMP);
}


void RTC_Timer16CallbackRegister ( RTC_TIMER16_CALLBACK callback, uintptr_t context )
{
    rtcObj.timer16BitCallback = callback;
    rtcObj.context            = context;
}

void RTC_InterruptHandler( void )
{
    /* Update the event in RTC Peripheral Callback object */
    rtcObj.timer16intCause = (RTC_TIMER16_INT_MASK) RTC_REGS->MODE1.RTC_INTFLAG;
    RTC_REGS->MODE1.RTC_INTFLAG = (uint16_t)RTC_MODE1_INTFLAG_Msk;
    (void)RTC_REGS->MODE1.RTC_INTFLAG;

    /* Invoke registered Callback function */
    if(rtcObj.timer16BitCallback != NULL)
    {
        rtcObj.timer16BitCallback( rtcObj.timer16intCause, rtcObj.context );
    }
}
