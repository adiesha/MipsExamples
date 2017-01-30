        .data

A:      .word 10
B:      .word 8
C:      .word 0
        .text
main:
        ld r4,A(r0)     ; r4 = A
        ld r5,B(r0)     ; r5 = B
        daddi r6,r4,2   ; r6 = r4 + 2   
        dadd r3,r4,r5   ; r3 = r4 + r5
        sd r3,C(r0)     ; Store value of r3 in C (Memory Location)
        halt            ; Stop the program