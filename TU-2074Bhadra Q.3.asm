; there are two tables holding 20 data whose starting address is 9000H and 9020H resp,  WAP to add the content of 1st with 2nd
; store sum and carry in 3rd and 4th table indexing 9040h and 9060h
 
; i will assume we have 5 data only

LXI B, 9000H
LXI H, 9020H

BACK:
MVI E, 00H ; to hold carry

LDAX B
ADD M
MOV D,A
JNC NEXT
MVI E, 01H

NEXT:
PUSH B
PUSH H
MOV A,C
ADI 40H
MOV C,A
MOV A,D
STAX B
MOV A,L
ADI 40H
MOV L,A
MOV M,E
POP H
POP B
INX B
INX H
MOV A,C
CPI 14H
JNZ BACK
HLT