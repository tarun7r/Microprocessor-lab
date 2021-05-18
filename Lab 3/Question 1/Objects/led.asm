    org 00h
		
	clr p1.4
	clr p1.5
	clr p1.6
	clr p1.7
	
	 MOV A,P1
     CJNE A,#01,Loop1
	  Again: 
		    SETB P1.4
			ACALL DELAY1 
			CLR P1.4
			ACALL DELAY1
			SJMP AGAIN
			
	
	Loop1:
			DELAY1: 
			
		    MOV R0,#10
			HERE3: 
		     MOV R1,#200
			HERE2: 
		    MOV R2,#250
			HERE: 
		    DJNZ R2, HERE
			DJNZ R1, HERE2
			DJNZ R0, HERE3
			ret
			
			DELAY3: 
			
		    MOV R0,#30
			HERE9: 
		     MOV R1,#200
			HERE8: 
		    MOV R2,#250
			HERE7: 
		    DJNZ R2, HERE7
			DJNZ R1, HERE8
			DJNZ R0, HERE9
			ret
			
			
			
			endloop:
			FIN: SJMP FIN
			END