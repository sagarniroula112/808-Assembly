;a set of 10 numbers is stored in memory location c070H wap to test whether the number is odd or even store the even number in separate list starting from mem location c090h

lxi h, c070h
lxi d, c090h
mvi c, 0Ah

back:
mov a,m
rrc
jnc even
jmp next

even:
mov a,m
stax d
inr d

next:
inx h
dcr c
jnz back

hlt