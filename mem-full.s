addi x5 x5 2047
sw x5 100(x0)
sw x5 200(x0)

addi x10 x10 500
sw x5 0(x10)

lui x1 1048575
addi x1 x1 500
sw x5 100(x1)
