# Data assembly directive
        .data
# variables inside the memory 
A:      .word 10
B:      .word 8
C:      .word 0

#Code segment
        .text
main:
        ld r4,A(r0)     ; r4 = A
        ld r5,B(r0)     ; r5 = B
        dadd r3,r4,r5   ; r3 = r4 + r5
        sd r3,C(r0)     ; store value of r3 in C (memory location)
        halt            ; Stop the program