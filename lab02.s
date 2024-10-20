
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
    add s0 , zero, zero
    add t0 , zero, zero
loop:
    beq a1 , t0 ,endloop
    slli t1 , t0 , 2
    add t1, t1, a0
    lw t2 , 0(t1)
    bne t2,  a2, skip
    add s0 , t1 , zero
skip:
    addi t0 , t0 ,1
    j loop
    
endloop:

#-----------------------------
done:
    addi a7, zero, 10 
    ecall
