    org 00h
		
	
	 mov P1,#03
	 MOV A,P1
     CJNE A,#01,Loop1
	  Again: 
		    SETB P1.4
			ACALL DELAY1 
			CLR P1.4
			ACALL DELAY3
			SJMP AGAIN
			
	 loop1: 
	        CJNE A,#02,toggle
			SETB P1.6
			ACALL DELAY2 
			CLR P1.6
			ACALL DELAY2
			SJMP loop1
			
			
			
    toggle: 
	        CJNE A,#03,endloop
		    SETB P1.4
			ACALL DELAY1 
			CLR P1.4
			ACALL DELAY3
			
		    SETB P1.6
			ACALL DELAY2 
			CLR P1.6
			ACALL DELAY2
			SJMP toggle
			
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
			
			DELAY2: 
			
		    MOV R0,#20
			HERE6: 
		    MOV R1,#200
			HERE5: 
		    MOV R2,#250
			HERE4: 
		    DJNZ R2, HERE4
			DJNZ R1, HERE5
			DJNZ R0, HERE6
			ret
			
			endloop:
			FIN: SJMP FIN
			END