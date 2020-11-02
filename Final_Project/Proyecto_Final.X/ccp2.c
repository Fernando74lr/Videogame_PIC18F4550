/**
  CCP2 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    ccp2.c

  @Summary
    This is the generated driver implementation file for the CCP2 driver using MPLAB(c) Code Configurator

  @Description
    This source file provides APIs for CCP2.
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

#include "ccp2.h"
#include "mcc.h"

/**
  Section: Capture Module APIs
*/

void CCP2_Initialize(void)
{
    // Set the CCP2 to the options selected in the User Interface

    // CCP2M Falling edge; DC2B 0; 
    CCP2CON = 0x04;
    // CCP2M Toggle; DC2B 0; 
    //CCP2CON = 0x02;    

    // CCPR2L 0; 
    CCPR2L = 0x00;    

    // CCPR2H 0; 
    CCPR2H = 0x00;    
    
    // Selecting Timer 1
    T3CONbits.T3CCP1 = 0;
    T3CONbits.T3CCP2 = 0;

    // Clear the CCP2 interrupt flag
    PIR2bits.CCP2IF = 0;

    // Enable the CCP2 interrupt
    PIE2bits.CCP2IE = 1;
}

void CCP2_CaptureISR(void)
{
    CCP_PERIOD_REG_T module;

    
    
    // Copy captured value.
    module.ccpr2l = CCPR2L;
    module.ccpr2h = CCPR2H;
    
    // Return 16bit captured value
    CCP2_CallBack(module.ccpr2_16Bit);
}

void CCP2_CallBack(uint16_t capturedValue)
{
    // Add your code here
}

void CCP2_SetCompareCount(uint16_t compareCount)
{
    CCP_PERIOD_REG_T module;
    
    // Write the 16-bit compare value
    module.ccpr2_16Bit = compareCount;
    
    CCPR2L = module.ccpr2l;
    CCPR2H = module.ccpr2h;
}

void CCP2_CompareISR(void)
{
    
}
/**
 End of File
*/
