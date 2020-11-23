list p=18f4550        ; list directive to define processor
#include "p18f4550.inc"

;** CONFIGURATION BITS *****
    
; PIC18F4550 Configuration Bit Settings



; ASM source line config statements



;#include "p18F4550.inc"



; CONFIG1L
  CONFIG  PLLDIV = 5            ; PLL Prescaler Selection bits (Divide by 5 (20 MHz oscillator input))
  CONFIG  CPUDIV = OSC3_PLL4    ; System Clock Postscaler Selection bits ([Primary Oscillator Src: /3][96 MHz PLL Src: /4])
  CONFIG  USBDIV = 2            ; USB Clock Selection bit (used in Full-Speed USB mode only; UCFG:FSEN = 1) (USB clock source comes from the 96 MHz PLL divided by 2)



; CONFIG1H
  CONFIG  FOSC = HSPLL_HS       ; Oscillator Selection bits (HS oscillator, PLL enabled (HSPLL))
  CONFIG  FCMEN = OFF           ; Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
  CONFIG  IESO = ON            ; Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)



; CONFIG2L
  CONFIG  PWRT = ON             ; Power-up Timer Enable bit (PWRT enabled)
  CONFIG  BOR = OFF             ; Brown-out Reset Enable bits (Brown-out Reset disabled in hardware and software)
  CONFIG  BORV = 3              ; Brown-out Reset Voltage bits (Minimum setting 2.05V)
  CONFIG  VREGEN = OFF          ; USB Voltage Regulator Enable bit (USB voltage regulator disabled)



; CONFIG2H
  CONFIG  WDT = OFF             ; Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
  CONFIG  WDTPS = 32768         ; Watchdog Timer Postscale Select bits (1:32768)



; CONFIG3H
  CONFIG  CCP2MX = OFF          ; CCP2 MUX bit (CCP2 input/output is multiplexed with RB3)
  CONFIG  PBADEN = OFF          ; PORTB A/D Enable bit (PORTB<4:0> pins are configured as digital I/O on Reset)
  CONFIG  LPT1OSC = OFF         ; Low-Power Timer 1 Oscillator Enable bit (Timer1 configured for higher power operation)
  CONFIG  MCLRE = ON            ; MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)



; CONFIG4L
  CONFIG  STVREN = OFF          ; Stack Full/Underflow Reset Enable bit (Stack full/underflow will not cause Reset)
  CONFIG  LVP = OFF             ; Single-Supply ICSP Enable bit (Single-Supply ICSP disabled)
  CONFIG  ICPRT = OFF           ; Dedicated In-Circuit Debug/Programming Port (ICPORT) Enable bit (ICPORT disabled)
  CONFIG  XINST = OFF           ; Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))



; CONFIG5L
  CONFIG  CP0 = OFF             ; Code Protection bit (Block 0 (000800-001FFFh) is not code-protected)
  CONFIG  CP1 = OFF             ; Code Protection bit (Block 1 (002000-003FFFh) is not code-protected)
  CONFIG  CP2 = OFF             ; Code Protection bit (Block 2 (004000-005FFFh) is not code-protected)
  CONFIG  CP3 = OFF             ; Code Protection bit (Block 3 (006000-007FFFh) is not code-protected)



; CONFIG5H
  CONFIG  CPB = OFF             ; Boot Block Code Protection bit (Boot block (000000-0007FFh) is not code-protected)
  CONFIG  CPD = OFF             ; Data EEPROM Code Protection bit (Data EEPROM is not code-protected)



; CONFIG6L
  CONFIG  WRT0 = OFF            ; Write Protection bit (Block 0 (000800-001FFFh) is not write-protected)
  CONFIG  WRT1 = OFF            ; Write Protection bit (Block 1 (002000-003FFFh) is not write-protected)
  CONFIG  WRT2 = OFF            ; Write Protection bit (Block 2 (004000-005FFFh) is not write-protected)
  CONFIG  WRT3 = OFF            ; Write Protection bit (Block 3 (006000-007FFFh) is not write-protected)



; CONFIG6H
  CONFIG  WRTC = OFF            ; Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) are not write-protected)
  CONFIG  WRTB = OFF            ; Boot Block Write Protection bit (Boot block (000000-0007FFh) is not write-protected)
  CONFIG  WRTD = OFF            ; Data EEPROM Write Protection bit (Data EEPROM is not write-protected)



; CONFIG7L
  CONFIG  EBTR0 = OFF           ; Table Read Protection bit (Block 0 (000800-001FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR1 = OFF           ; Table Read Protection bit (Block 1 (002000-003FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR2 = OFF           ; Table Read Protection bit (Block 2 (004000-005FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR3 = OFF           ; Table Read Protection bit (Block 3 (006000-007FFFh) is not protected from table reads executed in other blocks)



; CONFIG7H
  CONFIG  EBTRB = OFF           ; Boot Block Table Read Protection bit (Boot block (000000-0007FFh) is not protected from table reads executed in other blocks)

RESULT EQU 0x02
STATE EQU 0X03
RESULT_2 EQU 0X04
REG EQU 0X05


;hgfedcba
CONSTANT N_ANIM = B'01110110'
CONSTANT N_0 = B'00111111'
CONSTANT N_1 = B'00000110'
CONSTANT N_2 = B'01011011'
CONSTANT N_3 = B'01001111'
CONSTANT N_4 = B'01100110'
CONSTANT N_5 = B'01101101'
CONSTANT N_6 = B'01111101'
CONSTANT N_7 = B'00000111'
CONSTANT N_8 = B'01111111'
CONSTANT N_9 = B'01101111'



    
ORG 0X000
GOTO MAIN
    
INITIALIZE:
    MOVLW 0xF ; Pone todo el registro en 1 del acumulador (adcon1, por eso serán entradas digitales).
    MOVWF ADCON1 ;  Registro de confguración de los puertos especiales.
    SETF TRISC ; 1 todos los bits del registro --> input(I/O).
    CLRF TRISB ; 0 todos los bits del registro --> output(I/O). LCD
    CLRF TRISD ; 0 todos los bits del registro --> output(I/O). LCD2
    RETURN

MAIN:
    CALL INITIALIZE
    MOVLW 9
    MOVWF RESULT
    MOVLW 9
    MOVWF RESULT_2
    MOVLW 0
    MOVWF STATE
    MOVLW d'1'
    MOVWF REG
    ;STATE=0 -> PAUSADO	    STATE=1 -> CORRIENDO
    ;C0 -> Pausa
    ;C1 -> Iniciar/Reiniciar
    ;C2 -> Cargar Dato
 
LOOP:
    BTFSC PORTC, 2	;Boton cargar dato
    CALL STATE_3
    
    BTFSC PORTC, 0	;Boton pausa
    CALL STATE_0
    
    BTFSC PORTC, 1	;Boton iniciar/reiniciar
    CALL STATE_1
    
    BTFSC STATE, 0	;checa el estado y hace o no el decremento
    CALL DELAY_1S
    
    CALL DISPLAY
    
    
    
    GOTO DISPLAY_2
    
STATE_0:
    MOVLW 0
    MOVWF STATE
    RETURN

STATE_1:
    MOVLW 1
    MOVWF STATE
    RETURN

STATE_3:	    ;Carga un dato 
    CALL DECREMENT
    RETURN
    
DECREMENT:
    MOVLW 0
    CPFSEQ RESULT   ;if (unidades==0)
    GOTO DEC_UN	    ;un>0
    GOTO DEC_DE	    ;un=0
    RETURN

DEC_UN:
    DECF RESULT, 1	;Resta unidades	
    RETURN
    
DEC_DE:
    MOVLW 9
    MOVWF RESULT
    MOVLW 0
    CPFSEQ RESULT_2   ;if (decenas==0)
    GOTO DEC_DEC		;un>0
    GOTO RESETCOUNT    ;dec=0
    RETURN    

DEC_DEC:
    DECF RESULT_2, 1	;Resta decenas
    RETURN
    
RESETCOUNT:
    MOVLW 9
    MOVWF RESULT
    MOVLW 9
    MOVWF RESULT_2
    RETURN
    
DISPLAY:  
    MOVLW 0X00; Se carga un dato al acumulador.
    SUBWF RESULT, 0 ; Resta: salto de línea si el resultado es diferente a 0.
    BZ CASE_0X00 ; Se ejecuta la instrucción si el bit es 0.
    MOVLW 0x01
    SUBWF RESULT,0
    BZ CASE_0X01
    MOVLW 0x02
    SUBWF RESULT,0
    BZ CASE_0X02
    MOVLW 0x03
    SUBWF RESULT,0
    BZ CASE_0X03
    MOVLW 0x04
    SUBWF RESULT,0
    BZ CASE_0X04
    MOVLW 0x05
    SUBWF RESULT,0
    BZ CASE_0X05
    MOVLW 0x06
    SUBWF RESULT,0
    BZ CASE_0X06
    MOVLW 0x07
    SUBWF RESULT,0
    BZ CASE_0X07
    MOVLW 0x08
    SUBWF RESULT,0
    BZ CASE_0X08
    MOVLW 0x09
    SUBWF RESULT,0
    BZ CASE_0X09
    BRA CASE_DEFAULT

DISPLAY_2:  
    MOVLW 0X00; Se carga un dato al acumulador.
    SUBWF RESULT_2, 0 ; Resta: salto de línea si el resultado es diferente a 0.
    BZ CASE_0X00_2 ; Se ejecuta la instrucción si el bit es 0.
    MOVLW 0x01
    SUBWF RESULT_2,0
    BZ CASE_0X01_2 
    MOVLW 0x02
    SUBWF RESULT_2,0
    BZ CASE_0X02_2 
    MOVLW 0x03
    SUBWF RESULT_2,0
    BZ CASE_0X03_2 
    MOVLW 0x04
    SUBWF RESULT_2,0
    BZ CASE_0X04_2 
    MOVLW 0x05
    SUBWF RESULT_2,0
    BZ CASE_0X05_2 
    MOVLW 0x06
    SUBWF RESULT_2,0
    BZ CASE_0X06_2 
    MOVLW 0x07
    SUBWF RESULT_2,0
    BZ CASE_0X07_2 
    MOVLW 0x08
    SUBWF RESULT_2,0
    BZ CASE_0X08_2 
    MOVLW 0x09
    SUBWF RESULT_2,0
    BZ CASE_0X09_2 
    BRA CASE_DEFAULT_2 

    
DELAY_1M: ;1 MILI
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    DECFSZ REG, 1
    GOTO DELAY_1M
    RETURN
    
    
DELAY_1S:
    MOVLW d'10'
    MOVWF REG
    CALL DELAY_1M  
    
    ;DECFSZ RESULT, 1
    CALL DECREMENT
    RETURN

CASE_0X00:
    MOVLW N_0
    MOVWF PORTB
    
    ;MOVLW d'10'
    ;MOVWF RESULT
    ;CALL DELAY_1S
    ;DECFSZ RESULT_2, 1
    
    
    
    
    RETURN

CASE_0X01:
    MOVLW N_1
    MOVWF PORTB
    GOTO LOOP

CASE_0X02:
    MOVLW N_2
    MOVWF PORTB
    RETURN
    
CASE_0X03:
    MOVLW N_3
    MOVWF PORTB
    RETURN

CASE_0X04:
    MOVLW N_4
    MOVWF PORTB
    RETURN

CASE_0X05:
    MOVLW N_5
    MOVWF PORTB
    RETURN

CASE_0X06:
    MOVLW N_6
    MOVWF PORTB
    RETURN
    
CASE_0X07:
    MOVLW N_7
    MOVWF PORTB
    RETURN

CASE_0X08:
    MOVLW N_8
    MOVWF PORTB
    RETURN

CASE_0X09:
    MOVLW N_9
    MOVWF PORTB
    RETURN
    
CASE_DEFAULT:
    MOVLW N_ANIM
    MOVWF PORTB
    RETURN
    
CASE_0X00_2:
    MOVLW N_0
    MOVWF PORTD
    GOTO LOOP

CASE_0X01_2:
    MOVLW N_1
    MOVWF PORTD
    GOTO LOOP

CASE_0X02_2:
    MOVLW N_2
    MOVWF PORTD
    GOTO LOOP
    
CASE_0X03_2:
    MOVLW N_3
    MOVWF PORTD
    GOTO LOOP

CASE_0X04_2:
    MOVLW N_4
    MOVWF PORTD
    GOTO LOOP

CASE_0X05_2:
    MOVLW N_5
    MOVWF PORTD
    GOTO LOOP

CASE_0X06_2:
    MOVLW N_6
    MOVWF PORTD
    GOTO LOOP
    
CASE_0X07_2:
    MOVLW N_7
    MOVWF PORTD
    GOTO LOOP

CASE_0X08_2:
    MOVLW N_8
    MOVWF PORTD
    GOTO LOOP

CASE_0X09_2:
    MOVLW N_9
    MOVWF PORTD
    GOTO LOOP
    
CASE_DEFAULT_2:
    MOVLW N_ANIM
    MOVWF PORTD
    GOTO LOOP
END


