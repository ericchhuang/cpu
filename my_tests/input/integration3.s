addi t1 x0 420

addi x9 x0 3
sw x9 0(t1)

addi x9 x0 1
sw x9 4(t1)

addi x9 x0 4
sw x9 8(t1)

addi t2 t2 250
sw x0 0(t2)
sw x0 4(t2)
sw x0 8(t2)

main:
    addi t0, x0, 0
loop:
    slli x10, t0, 2
    add x9, t1, x10
    lw x8, 0(x9)
    beq x8, x0, exit
    add x1, t2, x10
    sw x8, 0(x1)
    addi t0, t0, 1
    jal x0, loop
exit:
