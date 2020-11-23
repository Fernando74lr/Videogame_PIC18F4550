/* 
 * SPI pin numbers:
 * SCK   13  // Serial Clock.
 * MISO  12  // Master In Slave Out.
 * MOSI  11  // Master Out Slave In.
 * SS    10  // Slave Select
*/

#include <SPI.h>

volatile char buf [100];
volatile byte pos;
volatile bool process_it;

void setup (void)
{
  Serial.begin (115200);   // debugging

  // turn on SPI in slave mode
  SPCR |= bit (SPE);

  // have to send on master in, *slave out*
  pinMode (MISO, OUTPUT);

  // get ready for an interrupt
  pos = 0;   // buffer empty
  process_it = false;

  // now turn on interrupts
  SPI.attachInterrupt();

}  // end of setup


// SPI interrupt routine
ISR (SPI_STC_vect)
{
  byte c = SPDR;  // grab byte from SPI Data Register
  
  buf[0] = c;
  process_it = true;

  SPDR = buf[0];
  
}  // end of interrupt routine SPI_STC_vect

// main loop - wait for flag set in interrupt routine
void loop (void)
{
  if(process_it == true)
    {
      Serial.println (buf[0]);
      process_it = false;
    }  // end of flag set

}  // end of loop
