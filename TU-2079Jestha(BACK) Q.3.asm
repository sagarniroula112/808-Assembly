; Let us say our first array that holds the numbers is 3000H
; 1's is hold by 5000H
; 0's is hold by 7000H
; let us consider there are 5 bytes of data

LXI B, 3000H
LXI D, 7000H    ; 0's
LXI H, 5000H
LXI SP, FFFFH
PUSH H
PUSH D

back1:
mvi d, 08h
ldax b
lxi h, 0000h

back:
rlc
jnc next
inr l           ; l holds ones
jmp next1

next:
inr h          ; h holds zeros

next1:
dcr d
jnz back

mov a,h
POP D
STAX D
inx d
; push d

mov a,l
POP H
mov m,a
inx h
PUSH H
PUSH D

inx b
mov a,c
cpi 05h
jnz back1

hlt
