addi x10 x10 420

addi x9 x0 1
sw x9 0(x10)

addi x9 x0 2
sw x9 4(x10)

addi x9 x0 3
sw x9 8(x10)

addi x9 x0 4
sw x9 12(x10)

addi x9 x0 5
sw x9 16(x10)

sum:
  addi t1 t1 4
loop:
  blt t1, x0, end
  slli t0, t1, 2
  add t0, x10, t0
  lw t0, 0(t0)
  add t2, t2, t0
  addi t1, t1, -1
  jal x0 loop
end:
