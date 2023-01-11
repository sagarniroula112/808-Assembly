	   LXI H,1000
	   LXI D,100A

LOOP2:	   MVI C,00
	   MVI B,04
	   MOV A,M

LOOP:	   RLC
	   JNC LOOP1
	   INR C

LOOP1:	   DCR B
	   JNZ LOOP
	   MOV A,C
	   STAX D
	   INX H
	   INX D
	   CPI 0A
	   JNZ LOOP2
	   HLT
