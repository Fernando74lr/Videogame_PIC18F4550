#include "keypad.h"
#include "mcc.h"

unsigned char GetKey_hw(void)
{
    unsigned char key = 'n';
    
    while(key == 'n')
    {
        key = read_keypad_hw();
    }
    return key;
}

unsigned char GetKey_sim(void)
{
    unsigned char key = 'n';
    
    while(key == 'n')
    {
        key = read_keypad_sim();
    }
    return key;
}


//////////////////for physical prototyping///////////////////////
unsigned char read_keypad_hw(void)
{
    //scan first row
    RB0_ = 0; RB1_ = 1; RB2_ = 1; RB3_ = 1;
    if(RB4_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB4_ == 0);
        return '1';
    }
    if(RB5_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB5_ == 0);
        return '4';
    }
    if(RB6_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB6_ == 0);
        return '7';
    }
    if(RB7_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB7_ == 0);
        return '*';
    }
    //scan second row
    RB0_ = 1; RB1_ = 0; RB2_ = 1; RB3_ = 1;
    if(RB4_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB4_ == 0);
        return '2';
    }
    if(RB5_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB5_ == 0);
        return '5';
    }
    if(RB6_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB6_ == 0);
        return '8';
    }
    if(RB7_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB7_ == 0);
        return '0';
    }
    //scan third row
    RB0_ = 1; RB1_ = 1; RB2_ = 0; RB3_ = 1;
    if(RB4_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB4_ == 0);
        return '3';
    }
    if(RB5_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB5_ == 0);
        return '6';
    }
    if(RB6_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB6_ == 0);
        return '9';
    }
    if(RB7_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB7_ == 0);
        return '#';
    }
    //scan fourth row
    RB0_ = 1; RB1_ = 1; RB2_ = 1; RB3_ = 0;
    if(RB4_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB4_ == 0);
        return 'A';
    }
    if(RB5_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB5_ == 0);
        return 'B';
    }
    if(RB6_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB6_ == 0);
        return 'C';
    }
    if(RB7_ == 0)
    {
        __delay_ms(DELAY_KEY_);
        while(RB7_ == 0);
        return 'D';
    }
    //no key has been pressed
    return 'n';
}



/////////////////////////for PIC simulator//////////////////////////////////////

unsigned char read_keypad_sim(void)
{
    //scan first row
    RB0_ = 1; RB1_ = 0; RB2_ = 0; RB3_ = 0;
    if(RB4_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB4_ == 1);
        return '1';
    }
    if(RB5_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB5_ == 1);
        return '4';
    }
    if(RB6_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB6_ == 1);
        return '7';
    }
    if(RB7_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB7_ == 1);
        return '*';
    }
    //scan second row
    RB0_ = 0; RB1_ = 1; RB2_ = 0; RB3_ = 0;
    if(RB4_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB4_ == 1);
        return '2';
    }
    if(RB5_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB5_ == 1);
        return '5';
    }
    if(RB6_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB6_ == 1);
        return '8';
    }
    if(RB7_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB7_ == 1);
        return '0';
    }
    //scan third row
    RB0_ = 0; RB1_ = 0; RB2_ = 1; RB3_ = 0;
    if(RB4_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB4_ == 1);
        return '3';
    }
    if(RB5_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB5_ == 1);
        return '6';
    }
    if(RB6_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB6_ == 1);
        return '9';
    }
    if(RB7_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB7_ == 1);
        return '#';
    }
    //scan fourth row
    RB0_ = 0; RB1_ = 0; RB2_ = 0; RB3_ = 1;
    if(RB4_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB4_ == 1);
        return 'A';
    }
    if(RB5_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB5_ == 1);
        return 'B';
    }
    if(RB6_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB6_ == 1);
        return 'C';
    }
    if(RB7_ == 1)
    {
        __delay_ms(DELAY_KEY_);
        while(RB7_ == 1);
        return 'D';
    }
    //no key has been pressed
    return 'n';
}
