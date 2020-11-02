/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using MPLAB(c) Code Configurator

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
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

#include "mcc.h"
#include "stdio.h"
#include "stdlib.h"
#include <xlcd.h>

/*
                         Main application
 */
float  ADC_Value;
unsigned char ADC_Buffer[10];

void main(void)
{
    // Initialize the device
    SYSTEM_Initialize();
    
    
    // Enable the Global Interrupts
    //INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    
    //prints a message
    //while(BusyXLCD());
    //putrsXLCD("**ADC Value**");
    
    while (1)
    {
        unsigned char uwu = 0x00;
        
        while(BusyXLCD());
        SetDDRamAddr(uwu);
        while(BusyXLCD());
        WriteDataXLCD(62);
        
        while(BusyXLCD());
        SetDDRamAddr(0x01);
        while(BusyXLCD());
        WriteDataXLCD(35);
        
        while(BusyXLCD());
        SetDDRamAddr(0x02);
        while(BusyXLCD());
        WriteDataXLCD(38);
        
        while(BusyXLCD());
        SetDDRamAddr(0x03);
        while(BusyXLCD());
        WriteDataXLCD(60);
        
        ADC_Value = ADC_GetConversion(0);       //ADC
                                                //VLSB = (Vref+ - Vref-)/(2^b - 1)
                                                //VLSB = 5/102= 4.88 mV
                                                //ValueADC = Vin / 4.887 mV = AN0 / 4.887  
        //print ADC value on LCD
        sprintf(ADC_Buffer, "%.0f%c ", ADC_Value);
        //
        while(BusyXLCD());
        SetDDRamAddr(0x05);
        //
        //while(BusyXLCD());
        //putsXLCD(ADC_Buffer);
       
        __delay_ms(35);
        //clear display
        while(BusyXLCD());
        WriteCmdXLCD(0b00000001);
    }
}

/**
 End of File
*/