
#include "pin_manager.h"
#include "mcc.h"

void PIN_MANAGER_Initialize(void)
{
    //configure ports below this line
    TRISB = 0b01111110; //
    TRISE = 0b00000000; //RE0 and RE1 are outputs
    TRISA = 0X00;       //ALL the portA is an output 
    //PORTA, PORTB and PORTE are digital
    ADCON1bits.PCFG = 0xF; 
}

void PIN_MANAGER_IOC(void)
{
    
    
}

void PIN_MANAGER_INT0(void)
{
    
}

void PIN_MANAGER_INT1(void)
{
    
}

void PIN_MANAGER_INT2(void)
{
    
}