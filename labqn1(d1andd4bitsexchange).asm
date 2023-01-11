	   LXI H,8850
	   LXI D,887A
	   MVI C,06

BACK:	   MOV A,M
	   MOV B,A
	   ANI 12
	   CPI 00
	   JZ LOOP
	   CPI 12
	   JZ LOOP
	   MOV A,M
	   XRI 12
	   JMP LAST

LOOP:	   MOV A,B

LAST:	   STAX D
	   INX H
	   INX D
	   DCR C
	   JNZ BACK
	   HLT
