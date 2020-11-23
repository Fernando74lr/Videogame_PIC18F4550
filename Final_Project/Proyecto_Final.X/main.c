#include "mcc.h"
#include "stdio.h"
#include "stdlib.h"
#include <xlcd.h>

/*
                         Main application
 */
float  ADC_Value;
<<<<<<< HEAD
unsigned char Score_Buffer[10];
=======
unsigned char ADC_Buffer[10];
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c
unsigned char pos = 0x00;
unsigned int enem1[]={0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0 };
unsigned int enem2[]={0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0};
unsigned int nivel = 1;
unsigned int niv1 = 4, niv2 = 5, niv3 = 6, niv4 = 8, niv5 = 12, niv6 = 24;
<<<<<<< HEAD
signed int puntos = 0, colicion = 0;
=======
unsigned int puntos = 0;
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c


void pintar(unsigned int enem1[], int fila){
	char posEn;
    if (fila==1){
        posEn = 0x00;}
    if (fila==2){
        posEn = 0x40;}
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

void recorrer(int enem1[]){
    int enemtemp[40];
    for (int i = 1; i < 40; i++){
        enemtemp[i-1] = enem1[i];
    }
    enemtemp[39] = enem1[0];
    
    for(int i=0; i<40; i++)
        enem1[i] = enemtemp[i];

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
<<<<<<< HEAD

        recorrer(enem1);
        recorrer(enem2);
        pintar(enem1, 1);
        pintar(enem2, 2);
        
        if(pos == 0x00 && enem1[0] == 1)
            colicion = 1;
        
        if(pos == 0x40 && enem2[0] == 1)
            colicion = 1;
=======
pintar(enem1, 1);
pintar(enem2, 2);
recorrer(enem1);
recorrer(enem2);
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c

        
        while(BusyXLCD());
        SetDDRamAddr(0x05);
        //
        //while(BusyXLCD());
        //putsXLCD(ADC_Buffer);
        
        switch(nivel){
            case 1:
<<<<<<< HEAD
                RB0 = 1;
                if(colicion == 1){
                    puntos -= 1;
                    colicion = 0;
                }
=======
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c
                __delay_ms(150);
                niv1--;
                if(niv1 == 0){
                    nivel++;
                puntos = puntos+15;}
<<<<<<< HEAD
                
                break;
                
            case 2:
                RB0 = 0;
                RB1 = 1;
                if(colicion == 1){
                    puntos -= 2;
                    colicion = 0;
                }
=======
                break;
                
            case 2:
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c
                __delay_ms(125);
                niv2--;
                if(niv2 == 0){
                    nivel++;
                puntos = puntos+30;}
                break;
                
            case 3:
<<<<<<< HEAD
                RB1 = 0;
                RB2 = 1;
                if(colicion == 1){
                    puntos -= 3;
                    colicion = 0;
                }
=======
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c
                __delay_ms(100);
                niv3--;
                if(niv3 == 0){
                    nivel++;
                    puntos = puntos+45;}
                break;
                
            case 4:
<<<<<<< HEAD
                RB2 = 0;
                RB3 = 1;
                if(colicion == 1){
                    puntos -= 4;
                    colicion = 0;
                }
=======
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c
                __delay_ms(75);
                niv4--;
                if(niv4 == 0){
                    nivel++;
                    puntos = puntos+60;}
                break;
                
            case 5:
<<<<<<< HEAD
                RB3 = 0;
                RB4 = 1;
                if(colicion == 1){
                    puntos -= 5;
                    colicion = 0;
                }
=======
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c
                __delay_ms(50);
                niv5--;
                if(niv5 == 0){
                    nivel++;
                    puntos = puntos+75;}
                break;
                
            case 6:
<<<<<<< HEAD
                RB4 = 0;
                RB5 = 1;
                if(colicion == 1){
                    puntos -= 6;
                    colicion = 0;
                }
=======
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c
                __delay_ms(25);
                niv6--;
                if(niv6 == 0){
                    nivel++;
                    puntos = puntos+90;}
                break;
                
            default:
<<<<<<< HEAD
                RB5 = 0;
=======
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c
                while(BusyXLCD());
                WriteCmdXLCD(0b00000001);
                while(BusyXLCD());
                SetDDRamAddr(0x05);
                while(BusyXLCD());
                putrsXLCD("SCORE");
                
                while(BusyXLCD());
                SetDDRamAddr(0x46);
                
<<<<<<< HEAD
                sprintf(Score_Buffer, "%d", puntos);
                while(BusyXLCD());
                putsXLCD(Score_Buffer);
                 __delay_ms(5000);
                 break;
=======
                sprintf(ADC_Buffer, "%s", puntos);
                while(BusyXLCD());
                putsXLCD(ADC_Buffer);
                 __delay_ms(500);
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c
        }
        //clear display
        while(BusyXLCD());
        WriteCmdXLCD(0b00000001);
        
       
        
    }
}
<<<<<<< HEAD




/**
 End of File
*/
=======
>>>>>>> 59ed0d1ccc0650131e06bfa3b3d21b70e904d31c
