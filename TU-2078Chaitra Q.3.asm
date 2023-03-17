lxi h, c301h
lda c300h
mov c,a
lxi d, c401h

back:
mov a,m
ani f0h
rlc
rlc
rlc
rlc
mov b,a
mov a,m
ani 0fh
add b
stax d
dcr c
inx h
inx d
jnz back

hlt