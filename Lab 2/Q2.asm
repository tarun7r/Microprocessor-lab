    ORG 0000H
    SJMP 30H
    ORG 30H

    // MOV A,60H
	// MOV 61H,#01
	// MOV 62H,#04
	// MOV 63H,#03
	// MOV 64H,#04
	// MOV 65H,#01
	// MOV 66H,#02
	// MOV 67H,#03
	// MOV 68H,#02
	// MOV 69H,#01
	
	 MOV 60H,#02    ; Order of square matrix
	 MOV A,60H 
	 MOV 61H,#01
	 MOV 62H,#04
	 MOV 63H,#04    ; Test Inputs
	 MOV 64H,#03
	 
	
	 
	 
	
     CJNE A,#02,matrix3x3
	 MOV A,62H
	 MOV R0,63H 
	 SUBB A,R0
	 CJNE A,#00,skip    ; If value stored at A!=#00 move to skip
	 
	 MOV A,62H
	 MOV R1,63H
	 SUBB A,R1
	 CJNE A,#00,skip
	 SETB F0
	 MOV A,60H
	 matrix3x3:
	 CJNE A,#03,matrix4x4
	 
	 MOV A,62H
	 MOV R0,64H 
	 SUBB A,R0
	 CJNE A,#00,skip
	 
	 MOV A,63H
	 MOV R1,67H 
	 SUBB A,R1
	 CJNE A,#00,skip
	 
	 MOV A,66H
	 MOV R2,68H 
	 SUBB A,R2
	 CJNE A,#00,skip
	 
	 SETB F0
	 matrix4x4:
	 MOV A,62H
	 MOV R0,65H 
	 SUBB A,R0
	 CJNE A,#00,skip
	 
	 MOV A,63H
	 MOV R0,69H 
	 SUBB A,R0
	 CJNE A,#00,skip
	 
	 MOV A,64H
	 MOV R0,73H 
	 SUBB A,R0
	 CJNE A,#00,skip
	 
	 MOV A,67H
	 MOV R0,70H 
	 SUBB A,R0
	 CJNE A,#00,skip
	 
	 MOV A,68H
	 MOV R0,74H 
	 SUBB A,R0
	 CJNE A,#00,skip
	 
	 MOV A,72H
	 MOV R0,75H 
	 SUBB A,R0
	 CJNE A,#00,skip
	 
	 SETB F0
	 JMP FIN
	skip:
	FIN: SJMP FIN
     END
		 