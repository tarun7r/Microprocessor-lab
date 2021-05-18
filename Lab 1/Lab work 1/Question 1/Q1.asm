	
     ORG 0H
     LJMP MAIN
     ORG 100H
MAIN:
     MOV R4, #08H  ; Counter
     MOV 70H,#10   ;Starting Address
	 MOV A,70H  
	 
		 
	LOOP2: RRC A 
	JNC LOOP1
	INC R2
	JMP NEXT
	LOOP1: INC R3
	NEXT: DJNZ R4, LOOP2
	   MOV 71H, R2
       Mov 72H, R3
	   
	FIN: SJMP FIN
	END