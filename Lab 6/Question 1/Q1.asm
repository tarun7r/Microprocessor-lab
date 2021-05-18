      
	  org 00h
	  ljmp start
	  org 001BH
	  INC R4 
	  CJNE R4,#64,loop11
	  mov r4,#00
	  CJNE R1,#237,LOOP12
	  mov R1,#239
	  sjmp loop11
	  loop12:
	  Mov R1,#237
	  loop11:
	  RETI
	   org 0030h
      start:
	        Mov P1,#0FFH
	        Mov R1,#237
	        MOV TMOD,#11H 
			Mov IE,#10001000B
	Loop1:  CLR P1.4
            Acall Delay
			SETB P1.4
			Acall Delay
			CLR P1.4
		    SETB TR1
			SJMP LOOP1			
DELAY:
       MOV TH0,R1
       MOV TL0,#000H 
       SETB TR0 
HERE: JNB TF0,HERE 
      CLR TR0 
      CLR TF0 
      RET
	  
DELAY1:
       
       MOV TH0,R1
       MOV TL0,#0FFH
       SETB TR0 
HERE1: JNB TF0,HERE1
      CLR TR0 
      CLR TF0 
      RET	  
	  
	  END