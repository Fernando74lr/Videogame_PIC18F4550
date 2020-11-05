#include "mcc.h"
#include "stdio.h"
#include "stdlib.h"
#include <xlcd.h>

/*
                         Main application
 */
float  ADC_Value;
unsigned char ADC_Buffer[10];
unsigned char pos = 0x00;
unsigned int enem1[]={0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0 };
unsigned int enem2[]={};

void pintar(unsigned int enem1[]){
	char posEn = 0x00;

	for (int i = 0; i < 39; i++){
		if(enem1[i] == 1){
			while(BusyXLCD());
        	SetDDRamAddr(posEn);
        	while(BusyXLCD());
        	WriteDataXLCD(38);
		}

		posEn = posEn + 0x01;
	}	
}

void recorrer(unsigned int enem1[]){
    unsigned int enemtemp[]={};
    for (int i = 1; i < 39; i++){
        enemtemp[i-1] = enem1[i];
    }
    enemtemp[39] = enem1[0];
    enem1 = enemtemp;

}

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
        
        
        while(BusyXLCD());
        SetDDRamAddr(pos);
        while(BusyXLCD());
        WriteDataXLCD(62);
        /*
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
        */
        ADC_Value = ADC_GetConversion(0);       //ADC
                                                //VLSB = (Vref+ - Vref-)/(2^b - 1)
                                                //VLSB = 5/102= 4.88 mV
                                                //ValueADC = Vin / 4.887 mV = AN0 / 4.887  
        //print ADC value on LCD
        //sprintf(ADC_Buffer, "%.0f%c ", ADC_Value);
        
        //Subimos y bajamos
        
        if  (ADC_Value > 512){
            if (pos < 0x40){
                pos=pos+0x40;
            }
        }
        else{
            if (pos >= 0x40){
                pos=pos-0x40;
            }
        }
pintar(enem1);
recorrer(enem1);
        
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
