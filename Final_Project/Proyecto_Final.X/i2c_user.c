#include "i2c_user.h"
#include "mcc.h"

void i2c_wrbyte_24lc256(unsigned char address, 
                        unsigned char hi_add, 
                        unsigned char lo_add, 
                        unsigned char data)
{
	SSPCON2bits.SEN = 1;		// initiate a start bit
	while(SSPCON2bits.SEN);		// Wait for start bit to end
    
	PIR1bits.SSPIF = 0;			// Clear the i2c interrupt flag
	SSPBUF = address;			// i2c address
	while(!PIR1bits.SSPIF);		// Wait for interrupt flag to indicate end of transmission
    
	PIR1bits.SSPIF = 0;		
	SSPBUF = hi_add;				// register to send i2c data to
	while(!PIR1bits.SSPIF);		
    
	PIR1bits.SSPIF = 0;	
    SSPBUF = lo_add;				// register to send i2c data to
	while(!PIR1bits.SSPIF);		
    
	PIR1bits.SSPIF = 0;	
	SSPBUF = data;				// data to be sent
	while(!PIR1bits.SSPIF);	
    
	SSPCON2bits.PEN = 1;		// Send stop bit
	while(SSPCON2bits.PEN);		// Wait for stop bit to finish
}

void i2c_rdbuffer_24lc256(  unsigned char address, 
                            unsigned char hi_add, 
                            unsigned char lo_add, 
                            unsigned char byteCount, 
                            unsigned char * buffer)
{
    unsigned char x;

	SSPCON2bits.SEN = 1;		// initiate a start bit
	while(SSPCON2bits.SEN);		// Wait for start bit to end

	PIR1bits.SSPIF = 0;			
	SSPBUF = address;			// i2c address
	while(!PIR1bits.SSPIF);		// Wait for interrupt flag showing byte is sent

	PIR1bits.SSPIF = 0;			
	SSPBUF = hi_add;			// register to start reading from
	while(!PIR1bits.SSPIF);	
    
    PIR1bits.SSPIF = 0;			
	SSPBUF = lo_add;			// register to start reading from
	while(!PIR1bits.SSPIF);	
	
	SSPCON2bits.RSEN = 1;		// initiate a restart bit
	while(SSPCON2bits.RSEN);	// Wait for restart bit to end

	PIR1bits.SSPIF = 0;			
	SSPBUF = (address|0x01);		// i2c address with read bit high
	while(!PIR1bits.SSPIF);	

	for(x = 0; x < (byteCount-1); x++)	// Receive data into buffer sending ack
	{
		PIR1bits.SSPIF = 0;	
		SSPCON2bits.RCEN = 1;			// start receive
		while(!PIR1bits.SSPIF);			// wait for receive to finish
		buffer[x] = SSPBUF;
		SSPCON2bits.ACKDT = 0;			// Send an ack bit
		SSPCON2bits.ACKEN = 1;			
		while(SSPCON2bits.ACKEN);		// Wait for ack to finish		
	}

	PIR1bits.SSPIF = 0;	
	SSPCON2bits.RCEN = 1;			// start receive
	while(!PIR1bits.SSPIF);			// wait for receive to finish
    
	buffer[byteCount-1] = SSPBUF;
	SSPCON2bits.ACKDT = 1;			// Send an nack bit	
	SSPCON2bits.ACKEN = 1;			
	while(SSPCON2bits.ACKEN);		// Wait for nack to finish

	SSPCON2bits.PEN = 1;		// Send stop bit
	while(SSPCON2bits.PEN);		// Wait for stop bit to finish
}	

unsigned char i2c_rdbyte_24lc256(unsigned char address, 
                                 unsigned char hi_add, 
                                 unsigned char lo_add)
{
    unsigned char xdata;

	SSPCON2bits.SEN = 1;		// initiate a start bit
	while(SSPCON2bits.SEN);		// Wait for start bit to end

	PIR1bits.SSPIF = 0;			
	SSPBUF = address;			// i2c address
	while(!PIR1bits.SSPIF);		// Wait for interrupt flag showing byte is sent

	PIR1bits.SSPIF = 0;			
	SSPBUF = hi_add;			// register to start reading from
	while(!PIR1bits.SSPIF);	
    
    PIR1bits.SSPIF = 0;			
	SSPBUF = lo_add;			// register to start reading from
	while(!PIR1bits.SSPIF);	
	
	SSPCON2bits.RSEN = 1;		// initiate a restart bit
	while(SSPCON2bits.RSEN);	// Wait for restart bit to end

	PIR1bits.SSPIF = 0;			
	SSPBUF = (address|0x01);		// i2c address with read bit high
	while(!PIR1bits.SSPIF);	
    
    PIR1bits.SSPIF = 0;	
    SSPCON2bits.RCEN = 1;			// start receive
	while(!PIR1bits.SSPIF);			// wait for receive to finish
    
	xdata = SSPBUF;
	SSPCON2bits.ACKDT = 1;			// Send an nack bit	
	SSPCON2bits.ACKEN = 1;			
	while(SSPCON2bits.ACKEN);		// Wait for nack to finish

	SSPCON2bits.PEN = 1;		// Send stop bit
	while(SSPCON2bits.PEN);		// Wait for stop bit to finish
    
    return xdata;
}	

void i2c_wrbyte(unsigned char address, 
                unsigned char reg, 
                unsigned char data)
{
	SSPCON2bits.SEN = 1;		// initiate a start bit
	while(SSPCON2bits.SEN);		// Wait for start bit to end
    
	PIR1bits.SSPIF = 0;			// Clear the i2c interrupt flag
	SSPBUF = address;			// i2c address
	while(!PIR1bits.SSPIF);		// Wait for interrupt flag to indicate end of transmission
    
	PIR1bits.SSPIF = 0;		
	SSPBUF = reg;				// register to send i2c data to
	while(!PIR1bits.SSPIF);			
    
	PIR1bits.SSPIF = 0;	
	SSPBUF = data;				// data to be sent
	while(!PIR1bits.SSPIF);	
    
	SSPCON2bits.PEN = 1;		// Send stop bit
	while(SSPCON2bits.PEN);		// Wait for stop bit to finish
}

unsigned char i2c_rdbyte(unsigned char address, 
                         unsigned char reg)
{
    unsigned char xdata;

	SSPCON2bits.SEN = 1;		// initiate a start bit
	while(SSPCON2bits.SEN);		// Wait for start bit to end

	PIR1bits.SSPIF = 0;			
	SSPBUF = address;			// i2c address
	while(!PIR1bits.SSPIF);		// Wait for interrupt flag showing byte is sent

    PIR1bits.SSPIF = 0;			
	SSPBUF = reg;			// register to start reading from
	while(!PIR1bits.SSPIF);	
	
	SSPCON2bits.RSEN = 1;		// initiate a restart bit
	while(SSPCON2bits.RSEN);	// Wait for restart bit to end

	PIR1bits.SSPIF = 0;			
	SSPBUF = (address|0x01);		// i2c address with read bit high
	while(!PIR1bits.SSPIF);	
    
    PIR1bits.SSPIF = 0;	
    SSPCON2bits.RCEN = 1;			// start receive
	while(!PIR1bits.SSPIF);			// wait for receive to finish
    
	xdata = SSPBUF;
	SSPCON2bits.ACKDT = 1;			// Send an nack bit	
	SSPCON2bits.ACKEN = 1;			
	while(SSPCON2bits.ACKEN);		// Wait for nack to finish

	SSPCON2bits.PEN = 1;		// Send stop bit
	while(SSPCON2bits.PEN);		// Wait for stop bit to finish
    
    return xdata;
}	

