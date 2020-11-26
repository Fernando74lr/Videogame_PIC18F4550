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
#include <xc.h>


#define Speaker   RB0
#define _XTAL_FREQ 1000000


#define nDO     0    // DO
#define nDO_    1    // DO#
#define nRE     2    // RE
#define nRE_    3    // RE#
#define nMI     4    // MI
#define nFA     5    // FA
#define nFA_    6    // FA#
#define nSOL    7    // SOL
#define nSOL_   8    // SOL#
#define nLA     9    // LA
#define nLA_    10   // LA#
#define nSI     11   // SI

int FreqNota[12]={  // retardos entre estado alto
                            // y bajo para generar las notas
15289, // DO
14430, // DO#
13620, // RE
12856, // RE#
12134, // MI
11453, // FA
10810, // FA#
10204, // SOL
9631,  // SOL#
9090,  // LA
8580,  // LA#
8099   // SI
};


/*
                         Main application
 */
//Global variables
void play(int nota,int octava,int duracion);
void playCancion(int cancion);

void main(void)
{
    // Initialize the device
    SYSTEM_Initialize();
 
  //set_tris_b(14);      // B<3:1>: Pulsadores B0: Speaker
 
  while (true){
     if(RB1==1)playCancion(1); //Si pulso switch 1 toca
                            // Pop Corn
     if(RB2==1)playCancion(2); //Si pulso switch 2 toca
                            // Ecuador
     if(RB3==1)playCancion(3); //Si pulso switch 3 toca
                            // The lion sleep tonight
     if(RB4==1)playCancion(4);
     
     if(RB5==1)playCancion(5);
     
     if(RB6==1)playCancion(6);
  }

}

void play(int nota, int octava, int duracion){
     int fn;
     int mS_Transcurridos=0;
     int CiclosL=0;
    
     fn = FreqNota[nota];         // Define los retardos para generar
                                // la frecuencia de cada nota
     //fn>>=(octava);             // Adapta la frecuencia
                            // a la octava actual
     fn = fn >> octava;
   
    do{
       
       // __output_high(Speaker);   // Genera la frecuancia                     ??
        RB0=1;
       // __delay_us(1300);           // con los retardos mientras
        if(fn==5)
             __delay_us(5);
        if(fn==4)
             __delay_us(4);
        if(fn==3)
             __delay_us(3);

        CiclosL+=(fn);          // aumenta el contador de
                            // ciclos transcurridos
       // __output_low(Speaker);    // en dos partes para repartir el           ??
        RB0=0;
       // __delay_us(1300);           // trabajo entre estado alto y bajo.
        if(fn==5)
             __delay_us(5);
        if(fn==4)
             __delay_us(4);
        if(fn==3)
             __delay_us(3);
        CiclosL+=(fn);          //
        CiclosL+=25;            // Compensador.
       
        while(CiclosL>999){     // Se queda en el bucle mientras
                                // CiclosL sea menor a 1000 (1 mS)
           CiclosL-=1000;       // Le resta 1000 a CiclosL
           mS_Transcurridos++;  // y le suma 1 a mS_Transcurridos.
           CiclosL+=25;         // Compensador.
        }
     }while (duracion>mS_Transcurridos); // Repite el bucle hasta
                                         // que haya pasado el
                                         // tiempo indicado.
    
  
}

void playCancion(int cancion){
  switch (cancion){
     case 1:
        //ECUADOR
        play (nDO   ,4,100);
        __delay_ms (220);
        play (nSI   ,3,100);
        __delay_ms (220);
        play (nRE   ,4,100);
        __delay_ms (220);
        play (nSI   ,3,100);
        __delay_ms (220);
        play (nSOL  ,3,100);
        __delay_ms (220);
        play (nLA   ,3,100);
        __delay_ms (440);
        play (nMI   ,3,100);
        __delay_ms (440);
     break;
   
     case 2:  
        play (nDO   ,4,100);
        __delay_ms (190);
        play (nSI   ,3,100);
        __delay_ms (190);
        play (nRE   ,4,100);
        __delay_ms (190);
        play (nSI   ,3,100);
        __delay_ms (190);
        play (nSOL  ,3,100);
        __delay_ms (190);
        play (nLA   ,3,100);
        __delay_ms (380);
        play (nMI   ,3,100);
        __delay_ms (380);
     break;
     case 3:
        play (nDO   ,4,100);
        __delay_ms (160);
        play (nSI   ,3,100);
        __delay_ms (160);
        play (nRE   ,4,100);
        __delay_ms (160);
        play (nSI   ,3,100);
        __delay_ms (160);
        play (nSOL  ,3,100);
        __delay_ms (160);
        play (nLA   ,3,100);
        __delay_ms (320);
        play (nMI   ,3,100);
        __delay_ms (320);
     break;
     case 4:
        play (nDO   ,4,100);
        __delay_ms (130);
        play (nSI   ,3,100);
        __delay_ms (130);
        play (nRE   ,4,100);
        __delay_ms (130);
        play (nSI   ,3,100);
        __delay_ms (130);
        play (nSOL  ,3,100);
        __delay_ms (130);
        play (nLA   ,3,100);
        __delay_ms (260);
        play (nMI   ,3,100);
        __delay_ms (260);
     break;
     case 5:
        play (nDO   ,4,100);
        __delay_ms (100);
        play (nSI   ,3,100);
        __delay_ms (100);
        play (nRE   ,4,100);
        __delay_ms (100);
        play (nSI   ,3,100);
        __delay_ms (100);
        play (nSOL  ,3,100);
        __delay_ms (100);
        play (nLA   ,3,100);
        __delay_ms (200);
        play (nMI   ,3,100);
        __delay_ms (200);
     break;
     case 6:
        play (nDO   ,4,100);
        __delay_ms (70);
        play (nSI   ,3,100);
        __delay_ms (70);
        play (nRE   ,4,100);
        __delay_ms (70);
        play (nSI   ,3,100);
        __delay_ms (70);
        play (nSOL  ,3,100);
        __delay_ms (70);
        play (nLA   ,3,100);
        __delay_ms (140);
        play (nMI   ,3,100);
        __delay_ms (140);
     break;
  }
}
    
/*void MSdelay(unsigned int val){
    unsigned int i,j;
       for(i=0;i<val;i++)
           for(j=0;j<1.65;j++);
}*/
    // Enable the Global Interrupts
    //INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    
    //Period
   

/**
 End of File
*/
