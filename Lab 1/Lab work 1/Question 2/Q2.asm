 
     ORG 0H
     LJMP MAIN
     ORG 100H
	 MAIN:
	 
 	 LJMP TEST
	
     Sort:	
	
	 MOV R1,#20H      ;counter
	 MOV R0,#40H      ;Starting Address
	 
	 LOOP1: 
	 
	 MOV A,70H
	 CLR C            ;Clear carry for subtraction
	 SUBB A, @R0 
	 JNC LOOP2        ;if If A>@R0 goto loop2
	 MOV 71H, 70H
	 MOV 70H, @R0
	 LJMP AHEAD
	 
	 LOOP2: 
	 
	 MOV A,71H
     CLR C            ;Clear carry for subtraction
     SUBB A,@R0
	 JNC AHEAD        ;if If A>@R0 goto loop2
	 MOV 71H,@R0
	 
	 AHEAD: 
	
	 INC R0
	 DJNZ R1, LOOP1
	 
	 FIN: SJMP FIN
			

    RET


	TEST:
	
MOV 40H, #7FH
MOV 41H, #7EH
MOV 42H, #7DH
MOV 43H, #7CH          ;Test Cases or Input values
MOV 44H, #7BH
MOV 45H, #7AH
MOV 46H, #79H
MOV 47H, #78H
MOV 48H, #77H
MOV 49H, #76H
MOV 4AH, #75H
MOV 4BH, #74H
MOV 4CH, #73H
MOV 4DH, #72H
MOV 4EH, #71H
MOV 4FH, #70H
MOV 50H, #6FH
MOV 51H, #6EH
MOV 52H, #6DH
MOV 53H, #6CH
	
	ACALL SORT

END	