      
	  org 00h
	  ljmp start
      ORG 0100H 
	 
start: 
	  MOV A,P1
	  CJNE A,#00,Loop2
     loop1: 

            Mov R1,#99
	        SETB P1.4 
            ACALL DELAY1 
            CLR P1.4
	        ACALL DELAY9
	        SJMP loop1
			
	 loop2: 
	        
	        CJNE A,#01,loop3
			Mov R1,#100
			SETB P1.4
			ACALL DELAY2 
			CLR P1.4
			ACALL DELAY8
			SJMP loop2
	 loop3: 
	        CJNE A,#02,loop4
			Mov R1,#100
			SETB P1.4
			ACALL DELAY3 
			CLR P1.4
			ACALL DELAY7
			SJMP loop3
	 loop4: 
	        CJNE A,#03,loop5
			Mov R1,#100
			SETB P1.4
			ACALL DELAY4 
			CLR P1.4
			ACALL DELAY6
			SJMP loop4
	 loop5: 
	        CJNE A,#04,loop6
			Mov R1,#100
			CLR P1.4
			ACALL DELAY10
			Mov R1,#100
			SETB P1.4
			ACALL DELAY5
			SJMP loop5
	 loop6: 
	        CJNE A,#05,loop7
			Mov R1,#100
			CLR P1.4
			ACALL DELAY4
			SETB P1.4
			ACALL DELAY6
			SJMP loop6
	 loop7: 
	        CJNE A,#06,loop8
			Mov R1,#100
			CLR P1.4
			ACALL DELAY3
			SETB P1.4
			ACALL DELAY7 
		    SJMP loop7
	 loop8: 
	        Mov R1,#100
			CLR P1.4
			ACALL DELAY2
			SETB P1.4
			ACALL DELAY8 
			SJMP loop8
			
DELAY1:
       MOV TMOD,#00000001B 
       MOV TH0,#185
       MOV TL0,#000H 
       SETB TR0 
HERE1: JNB TF0,HERE1 
      CLR TR0 
      CLR TF0 
	  Djnz R1,Delay1
	  RET
			

	  
DELAY2:
       MOV TMOD,#00000001B 
       MOV TH0,#193 
       MOV TL0,#000H 
       SETB TR0 
HERE2: JNB TF0,HERE2
      CLR TR0 
      CLR TF0 
	  Djnz R1,Delay2
      RET
DELAY3:
       MOV TMOD,#00000001B 
       MOV TH0,#201 
       MOV TL0,#000H 
       SETB TR0 
HERE3: JNB TF0,HERE3 
      CLR TR0 
      CLR TF0 
	  Djnz R1,Delay3
      RET
DELAY4:
       MOV TMOD,#00000001B 
       MOV TH0,#209 
       MOV TL0,#000H 
       SETB TR0 
HERE4: JNB TF0,HERE4
      CLR TR0 
      CLR TF0 
	  Djnz R1,Delay4
      RET
DELAY5:
       MOV TMOD,#00000001B 
       MOV TH0,#215 
       MOV TL0,#000H 
       SETB TR0 
HERE5: JNB TF0,HERE5
      CLR TR0 
      CLR TF0 
	  Djnz R1,Delay5
      RET
DELAY6:
       MOV TMOD,#00000001B 
       MOV TH0,#243 
       MOV TL0,#000H 
       SETB TR0 
HERE6: JNB TF0,HERE6 
      CLR TR0 
      CLR TF0 
	  Djnz R1,Delay6
      RET
DELAY7:
       MOV TMOD,#00000001B 
       MOV TH0,#246 
       MOV TL0,#000H 
       SETB TR0 
HERE7: JNB TF0,HERE7 
      CLR TR0 
      CLR TF0 
	  Djnz R1,Delay7
      RET
DELAY8:
       MOV TMOD,#00000001B 
       MOV TH0,#249 
       MOV TL0,#000H 
       SETB TR0 
HERE8: JNB TF0,HERE8
      CLR TR0 
      CLR TF0 
	  Djnz R1,Delay8
      RET
DELAY9:
       MOV TMOD,#00000001B 
       MOV TH0,#252 
       MOV TL0,#000H 
       SETB TR0 
HERE9: JNB TF0,HERE9
      CLR TR0 
      CLR TF0 
	  Djnz R1,Delay9
      RET
DELAY10:
       MOV TMOD,#00000001B 
       MOV TH0,#216 
       MOV TL0,#000H 
       SETB TR0 
HERE10: JNB TF0,HERE10
      CLR TR0 
      CLR TF0 
	  Djnz R1,Delay10
      RET
	  

      
	  
			
			
			endloop:
			FIN: SJMP FIN
			END