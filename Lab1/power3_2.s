        .data
n:      .word 8
x:      .double 0.5
c:      .word 0
w:      .double 1.0
        
        .text
        ld r1,n(r0) ; r1 = n
        l.d f0,x(r0) ; f0 = x
        daddi r8,r0,2; r8 = 2
        l.d f2,w(r0); f2 = w

loop:
        andi r4,r1,1            ; r4 = r1 AND 1
        dsrl r1,r1,1            ; r1 = r1 / 2 (n = n / 2)
        bnez r4,multipication        ; if r4 == 0  skipp next instruction (Checking whether n is divided by 2) 
division:
        beq r1,r0,stop          ;if n == 0 go to halt
        mul.d f0,f0,f0          ;x = x * x
        j loop                  ;go to beggining

multipication:
        mul.d f2,f2,f0          ; w = w * x
        j division
stop:
        halt