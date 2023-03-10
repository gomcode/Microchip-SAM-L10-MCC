/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
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

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include <string.h>
#include "definitions.h"                // SYS function prototypes

uintptr_t adc_context;
volatile uint16_t adc_result = 0;
volatile bool adc_window_det = false;

void adc_cb(ADC_STATUS status, uintptr_t context )
{
    adc_window_det = true;
    adc_result = ADC_ConversionResultGet();
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************


uint16_t a =2000;
/*
void TC0_Callback_InterruptHandler(TC_TIMER_STATUS status, uintptr_t context)
{
    count++;
    if(count>1000){
        a++;
        LED_Toggle();
        DAC_DataWrite(a);
        adc_result = ADC_ConversionResultGet();
        count = 0;
    }
        putchar(a); 
}
 */
 void TC0_Callback_InterruptHandler(TC_TIMER_STATUS status, uintptr_t context) {
   
    TC0_Timer16bitCounterSet(65411);

        /* Toggle LED */
        LED_Toggle();
       // a++;

    DAC_DataWrite(a);
    adc_result = ADC_ConversionResultGet();
    putchar((int)adc_result); 
    //printf("\r\nADC result is %d\r\n", a);
}


int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    RTC_Timer16Start();
        
    __enable_irq();

    TC0_Timer16bitCounterSet(65411);
    TC0_TimerStart();
    TC0_TimerCallbackRegister(TC0_Callback_InterruptHandler, (uintptr_t)NULL);
    
    printf("\n\r---------------------------------------------------------");
    printf("\n\r               Initialize Completed ");
    ADC_Enable();
    ADC_ConversionStart();

    printf("\n\r                  ADC Initialized ");    
    while ( true )
    {
       // PM_StandbyModeEnter();
        a++;
        DAC_DataWrite(a);
        adc_result = ADC_ConversionResultGet();
        putchar((int)adc_result);
        //putchar(a);
        //printf("\r\nADC Window detected \r\n");
        //printf("\r\nADC result is %d\r\n", adc_result);
        /*if(adc_window_det == true)
        {
            adc_window_det = false;
            printf("\r\nADC Window detected \r\n");
            printf("\r\nADC result is %d\r\n", adc_result);
        }*/
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

