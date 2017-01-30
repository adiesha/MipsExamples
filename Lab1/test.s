
        .data
n:      .word 10
x:      .double 0.5
c:      .word 3


       .text
        ld r1,n(r0)
        ld r2,c(r0)
        l.d f0,x(r0)
        ddiv r3,r1,r2
        halt