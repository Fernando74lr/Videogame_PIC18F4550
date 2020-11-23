/**
  TMR2 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    tmr2.c

  @Summary
    This is the generated driver implementation file for the TMR2 driver using MPLAB(c) Code Configurator

  @Description
    This source file provides APIs for TMR2.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - 3.15.0
        Device            :  PIC18F4550
        Driver Version    :  2.00
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.35
        MPLAB             :  MPLAB X 3.20
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
  Section: Included Files
*/


#include "tmr2.h"
#include "mcc.h"

/**
  Section: TMR2 APIs
*/

void TMR2_Initialize(void)
{
    // T2CKPS 1:4; T2OUTPS 1:1; TMR2ON on; 
    T2CON = 0x01;

    // PR2 24; 
    PR2 = 0x18;

    // TMR2 0; 
    TMR2 = 0x00;

    // Clearing IF flag.
    PIR1bits.TMR2IF = 0;
    
    //enable interrupt
    PIE1bits.TMR2IE = 1;

    // Start TMR2
    TMR2_StartTimer();
}

void TMR2_StartTimer(void)
{
    // Start the Timer by writing to TMRxON bit
    T2CONbits.TMR2ON = 1;
}

void TMR2_StopTimer(void)
{
    // Stop the Timer by writing to TMRxON bit
    T2CONbits.TMR2ON = 0;
}

uint8_t TMR2_ReadTimer(void)
{
    uint8_t readVal;

    readVal = TMR2;

    return readVal;
}

void TMR2_WriteTimer(uint8_t timerVal)
{
    // Write to the Timer2 register
    TMR2 = timerVal;
}

void TMR2_LoadPeriodRegister(uint8_t periodVal)
{
   PR2 = periodVal;
}

bool TMR2_HasOverflowOccured(void)
{
    // check if  overflow has occurred by checking the TMRIF bit
    bool status = PIR1bits.TMR2IF;
    if(status)
    {
        // Clearing IF flag.
        PIR1bits.TMR2IF = 0;
    }
    return status;
}

void TMR2_ISR(void)
{
    // add your TMR2 interrupt custom code
    
    
}


void TMR2_SetInterruptHandler(void* InterruptHandler){
    TMR2_InterruptHandler = InterruptHandler;
}

void TMR2_DefaultInterruptHandler(void){
    // add your TMR2 interrupt custom code
    // or set custom function using TMR2_SetInterruptHandler()
}
/**
  End of File
*/
