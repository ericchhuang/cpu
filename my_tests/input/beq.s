beq s0 s0 start #0
bad-loop:
addi sp sp 0 #1

start:
addi x10 x10 10
addi x9 x9 10
addi x8 x8 9
beq x0 x10 yeet
beq x9 x8 yeet
beq x10 x9 end

yeet:
addi sp sp 1

end:
