
        .data 
A:      .word 20
B:      .word 8
C:      .word 0
CR:     .word32 0x10000
DR:     .word32 0x10008
 
        .text
main:   
        ld r4,A(r0)
        ld r5,B(r0)
        dadd r3,r4,r5
        sd r3,C(r0)
        halt
