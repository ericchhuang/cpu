#wont work until multiply is fixed
addi x10 x10 420

addi x9 x0 8
sw x9 0(x10)
lw x9 0(x10)

factorial:
  add t1, x9, x0
  addi x8, x0, 1
  slti t2, t1, 2
  bne t2, x0, exit
  loop:
    addi t1, t1, -1
    mul x9, x9, t1
    beq t1, x8, exit
    jal x0, loop
  exit:
