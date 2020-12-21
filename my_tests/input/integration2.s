addi x10 x10 420

addi x9 x0 9
sw x9 0(x10)

main:   add     t0, x0, x0
        addi    t1, x0, 1
        lw      x10, 0(x10)
fib:    beq     x10, x0, finish
        add     t2, t1, t0
        mv      t0, t1
        mv      t1, t2
        addi    x10, x10, -1
        jal x0 fib
finish:
