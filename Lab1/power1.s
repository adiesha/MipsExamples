

        .data
n:      .word 8
x:      .double 0.5
c:      .word 0
        
        .text
        ld r1,n(r0)
        l.d f0,x(r0)
        daddi r2,r0,1 ; r2 = 1 
        mtc1 r2,f11 ; f11 = 1
        cvt.d.l f2,f11 ; f2 = 1
loop:
        mul.d f2,f2,f0 ; f2 = f2*f0 
        daddi r1,r1,-1 ; decrement r1 by 1 
        bnez r1,loop ; if r1 != 0 continue
        
        ; result in F2
        halt