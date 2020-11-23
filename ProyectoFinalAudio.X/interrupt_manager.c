#include "interrupt_manager.h"
#include "mcc.h"


void  INTERRUPT_Initialize (void)
{
    // Disable Interrupt Priority Vectors (16CXXX Compatibility Mode)
    IPEN = 0;

    // Clear peripheral interrupt priority bits (default reset value)

    // ADI
    IPR1bits.ADIP = 0;
    // TMRI
    INTCON2bits.TMR0IP = 0;
    // EEI
    IPR2bits.EEIP = 0;
    // BCLI
    IPR2bits.BCLIP = 0;
    // SSPI
    IPR1bits.SSPIP = 0;
    // TXI
    IPR1bits.TX1IP = 0;
    // RCI
    IPR1bits.RC1IP = 0;
    // TMRI
    IPR1bits.TMR1IP = 0;
    // IOCI
    INTCON2bits.RBIP = 0;
    // CCPI
    IPR2bits.CCP2IP = 0;
    // TMRI
    IPR2bits.TMR3IP = 0;
    // TMRI
    IPR1bits.TMR2IP = 0;
}

void interrupt INTERRUPT_InterruptManager (void)
{
   // interrupt handler
    if(PIE1bits.ADIE == 1 && PIR1bits.ADIF == 1)
    {
        ADC_ISR();
        // Clear the ADC interrupt flag
        PIR1bits.ADIF = 0;
    }
    else if(INTCONbits.TMR0IE == 1 && INTCONbits.TMR0IF == 1)
    {
        TMR0_ISR();
        // clear the TMR0 interrupt flag
        INTCONbits.TMR0IF = 0;
    }
    else if(PIE2bits.EEIE == 1 && PIR2bits.EEIF == 1)
    {
        MEMORY_ISR();
        PIR2bits.EEIF = 0;
    }
    else if(PIE2bits.BCLIE == 1 && PIR2bits.BCLIF == 1)
    {
        I2C1_BusCollisionISR();
        PIR2bits.BCLIF = 0;
    }
    else if(PIE1bits.SSPIE == 1 && PIR1bits.SSPIF == 1)
    {
        I2C1_ISR();
        PIR1bits.SSPIF = 0;
    }
    else if(PIE1bits.TX1IE == 1 && PIR1bits.TX1IF == 1)
    {
        EUSART1_Transmit_ISR();
        PIR1bits.TX1IF = 0;
    }
    else if(PIE1bits.RC1IE == 1 && PIR1bits.RC1IF == 1)
    {
        EUSART1_Receive_ISR();
        PIR1bits.RC1IF = 0;
    }
    else if(PIE1bits.TMR1IE == 1 && PIR1bits.TMR1IF == 1)
    {
        TMR1_ISR();
        PIR1bits.TMR1IF = 0;
    }
    else if(INTCONbits.RBIE == 1 && INTCONbits.RBIF == 1)
    {
        PIN_MANAGER_IOC();
                
        // clear global interrupt-on-change flag
        unsigned char __portb__ = PORTB;
        INTCONbits.RBIF = 0;
    }
    else if(INTCONbits.INT0IE == 1 && INTCONbits.INT0IF == 1)
    {
        PIN_MANAGER_INT0();
        
        INTCONbits.INT0IF = 0;
    }
    else if(INTCON3bits.INT1IE == 1 && INTCON3bits.INT1IF == 1)
    {
        PIN_MANAGER_INT1();
        
        INTCON3bits.INT1IF = 0;
    }
    else if(INTCON3bits.INT2IE == 1 && INTCON3bits.INT2IF == 1)
    {
        PIN_MANAGER_INT2();
        
        INTCON3bits.INT2IF = 0;
    }
    else if(PIE2bits.CCP2IE == 1 && PIR2bits.CCP2IF == 1)
    {
        //CCP2_CaptureISR();
        //CCP2_CompareISR();
        PIR2bits.CCP2IF = 0;
    }
    else if(PIE2bits.TMR3IE == 1 && PIR2bits.TMR3IF == 1)
    {
        TMR3_ISR();
        PIR2bits.TMR3IF = 0;
    }
    else if(PIE1bits.TMR2IE == 1 && PIR1bits.TMR2IF == 1)
    {
        TMR2_ISR();
        PIR1bits.TMR2IF = 0;
    }
    else
    {
    }
}
