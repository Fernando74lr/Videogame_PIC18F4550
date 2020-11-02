
#include "mcc.h"
#include "user_xlcd.h"


void XLCD_Initialize(void)
{
    //power supply applied (applies only to picdem2)
    //when implemented in protoboard, these two lines are
    //unnecessary
    TRISDbits.TRISD7 = 0;
    LATDbits.LATD7 = 1;

    // configure external LCD
    OpenXLCD(FOUR_BIT & LINES_5X7);
    //display, cursor and blinking on
    while(BusyXLCD());
    WriteCmdXLCD(DON & CURSOR_ON & BLINK_ON);
    //characters from left to right without shifting
    while(BusyXLCD());
    WriteCmdXLCD(SHIFT_DISP_LEFT);
    //cursor points to address 0x00
    while(BusyXLCD());
    SetDDRamAddr(0x0);
}

//18 instruction cycles delay 
void DelayFor18TCY(void)
{
    _delay(18);
}

//15ms-delay assuming a 1us-instruction cycle with a 4-MHz clock
void DelayPORXLCD()
{
    //__delay_ms(150); //it had to be 15
    __delay_ms(15); //for simulation purposes
}

//5ms-delay assuming a 1us-instruction cycle with a 4-MHz clock
void DelayXLCD()
{
    //__delay_ms(50); //it had to be 5
    __delay_ms(5); //for simulation purposes
}