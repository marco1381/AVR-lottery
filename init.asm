;Initialise Ports & Registers
.def Temp = r16
.def Holder = r17
.def Counter = r19
.equ PORTA = 0x1B
.equ PORTB = 0x18
.def lsb_1_eg = r24
;Program
.org 0x0000
rjmp start
start:
;(LSB/MSB = least/most significant bit)
ldi r24, 0x03 ;example for lsb with 1
ldi r20, 0x01 3 

ldi Holder, 0x20 ;Loading any number (eg. 0x59, 0x23, 0b110101, 4) to the holder register
ldi Temp, 0x01 ;Starting number
;Generating six two digit numbers
ldi Counter, 0x06 ;Loading counter with six numbers
loop:
eor Temp, Holder ;XOR Temp with the mask in Holder
lsl Temp ;Achieve sense of randomness
;Now Temp contains the XOR result of the two least significant bits
find_msb:
out PORTA, r20 ;output the most significant bit in port A (since numbers are always positive from 1 to 59)4 

find_lsb:
out PORTB, Temp ;output the random number to port B (or use example number)
sbrs Temp, 0 ;skip if bit 0 is clear 
;(if bit 0 is not clear, clear all other numbers and show that the lsb is 1)
cbi PORTB, 0 ;clear bit 0
cbi PORTB, 1 ;clear bit 1
cbi PORTB, 2 ;clear bit 2
cbi PORTB, 3 ;clear bit 3
cbi PORTB, 4 ;clear bit 4
cbi PORTB, 5 ;clear bit 5
cbi PORTB, 6 ;clear bit 6
cbi PORTB, 7 ;clear bit 7
decrease_counter:
dec Counter ; Decrease the amount of times the loop repeats by 15 

continue_looping: 
brne loop ; Test if counter is not 0
;End
rjmp end
end: 
rjmp end ;Infinite loop
