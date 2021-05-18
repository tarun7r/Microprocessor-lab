LCD:
    LCD_data equ P2    ;LCD Data port
    LCD_rs   equ P0.0  ;LCD Register Select
    LCD_rw   equ P0.1  ;LCD Read/Write
    LCD_en   equ P0.2  ;LCD Enable


acall lcd_init
acall delay
acall delay
acall delay

mov a,#80h
acall lcd_command
mov a,#44h
acall lcd_senddata

mov a,#81h
acall lcd_command
mov a,#75h
acall lcd_senddata

mov a,#82h
acall lcd_command
mov a,#74h
acall lcd_senddata

mov a,#83h
acall lcd_command
mov a,#79h
acall lcd_senddata

mov a,#84h
acall lcd_command
mov a,#20h
acall lcd_senddata

mov a,#85h
acall lcd_command
mov a,#63h
acall lcd_senddata

mov a,#86h
acall lcd_command
mov a,#79h
acall lcd_senddata

mov a,#87h
acall lcd_command
mov a,#63h
acall lcd_senddata

mov a,#88h
acall lcd_command
mov a,#6ch
acall lcd_senddata

mov a,#89h
acall lcd_command
mov a,#65h
acall lcd_senddata

mov a,#8Ah
acall lcd_command
mov a,#3Ah
acall lcd_senddata

mov a,#8Bh
acall lcd_command
mov a,#20h
acall lcd_senddata


 mov a,#8Ch
 acall lcd_command
 Mov A,R2
 Add A,#73
  
 acall lcd_senddata

mov a,#8Dh
acall lcd_command
mov a,#30h
acall lcd_senddata


mov a,#0C0h	
acall lcd_command
mov a,#50h
acall lcd_senddata

mov a,#0C1h	
acall lcd_command
mov a,#75h
acall lcd_senddata

mov a,#0C2h	
acall lcd_command
mov a,#6Ch
acall lcd_senddata

mov a,#0C3h	
acall lcd_command
mov a,#73h
acall lcd_senddata

mov a,#0C4h	
acall lcd_command
mov a,#65h
acall lcd_senddata

mov a,#0C5h	
acall lcd_command
mov a,#20h
acall lcd_senddata

mov a,#0C6h	
acall lcd_command
mov a,#77h
acall lcd_senddata

mov a,#0C7h	
acall lcd_command
mov a,#69h
acall lcd_senddata

mov a,#0C8h	
acall lcd_command
mov a,#64h
acall lcd_senddata

mov a,#0C9h	
acall lcd_command
mov a,#74h
acall lcd_senddata

mov a,#0CAh	
acall lcd_command
mov a,#68h
acall lcd_senddata

mov a,#0CBh	
acall lcd_command
mov a,#3Ah
acall lcd_senddata

mov a,#0CCh	
acall lcd_command
mov a,#39H
acall lcd_senddata


mov a,#0CDh	
acall lcd_command
mov a,#38H
acall lcd_senddata


mov a,#0CEh	
acall lcd_command
mov a,#37H
acall lcd_senddata

mov A,r2

ret











here: sjmp here	

	
	
lcd_init:
         mov   LCD_data,#38H  ;Function set: 2 Line, 8-bit, 5x7 dots
         clr   LCD_rs         ;Selected command register
         clr   LCD_rw         ;We are writing in instruction register
         setb  LCD_en         ;Enable H->L
		 acall delay
         clr   LCD_en
	     acall delay

         mov   LCD_data,#0EH  ;Display on, Curson off
         clr   LCD_rs         ;Selected instruction register
         clr   LCD_rw         ;We are writing in instruction register
         setb  LCD_en         ;Enable H->L
		 acall delay
         clr   LCD_en
         
		 acall delay
         mov   LCD_data,#01H  ;Clear LCD
         clr   LCD_rs         ;Selected command register
         clr   LCD_rw         ;We are writing in instruction register
         setb  LCD_en         ;Enable H->L
		 acall delay
         clr   LCD_en
         
		 acall delay

         mov   LCD_data,#06H  ;Entry mode, auto increment with no shift
         clr   LCD_rs         ;Selected command register
         clr   LCD_rw         ;We are writing in instruction register
         setb  LCD_en         ;Enable H->L
		 acall delay
         clr   LCD_en

		 acall delay
         
         ret                  ;Return from routine
lcd_command:
         mov   LCD_data,A     ;Move the command to LCD port
         clr   LCD_rs         ;Selected command register
         clr   LCD_rw         ;We are writing in instruction register
         setb  LCD_en         ;Enable H->L
		 acall delay
         clr   LCD_en
		 acall delay
    
         ret  
		 
lcd_senddata:
         mov   LCD_data,A     ;Move the command to LCD port
         setb  LCD_rs         ;Selected data register
         clr   LCD_rw         ;We are writing
         setb  LCD_en         ;Enable H->L
		 acall delay
         clr   LCD_en
         acall delay
		 acall delay
         ret                  ;Return from busy routine
delay:	 push 0
	 push 1
         mov r0,#1
loop21:	 mov r1,#2
	 loop11:	 djnz r1, loop11
	 djnz r0, loop21
	 pop 1
	 pop 0 
	 ret
	



			
			
			endloop:
			FIN: SJMP FIN
			END