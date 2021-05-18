            org 00h
		    MOV P1,#0FFH
			SETB P1.4
			SETB P1.5
			SETB P1.6
			SETB P1.7
			
			MOV R0,#50
			HERE6: 
		     MOV R1,#200
			HERE5: 
		    MOV R2,#250
			HERE4: 
		    DJNZ R2, HERE4
			DJNZ R1, HERE5
			DJNZ R0, HERE6
		
			Mov p1,#03
		    MOV A,P1
			Add A,#01H
			MOV R3,A
			
	  Again: 
		   
			
			CLR P1.4
			CLR P1.5
			CLR P1.6
			CLR P1.7
			
			MOV R0,#10
			L3: 
		     MOV R1,#200
			L2: 
		    MOV R2,#250
			L1: 
		    DJNZ R2, L1
			DJNZ R1, L2
			DJNZ R0, L3
			
			SETB P1.4
			SETB P1.5
			SETB P1.6
			SETB P1.7
			
            MOV R0,#10
			HERE3: 
		     MOV R1,#200
			HERE2: 
		    MOV R2,#250
			HERE: 
		    DJNZ R2, HERE
			DJNZ R1, HERE2
			DJNZ R0, HERE3
			
		    DJNZ R3,Again  
			
			
			endloop:
			FIN: SJMP FIN
			END