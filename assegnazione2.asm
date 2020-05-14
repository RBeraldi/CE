#
# WepSIM (https://wepsim.github.io/wepsim/)
#
#g=7
#f = g + A[B[4]]

.data

A: .word 0xA 0xB 0xC 0xD 0xE #Array A...
B: .word 0 1 2 3 4 5 #Array B
f: .word 0


.text
main:
    la $s6 A
    la $s7 B
    li $s5 7 #g

    li $t0 16
    add $t1 $s7 $t0 #4 x 4 &B+16
    lw $t0  ($t1) # address = $t1 + 16

    #A[B[4]]
    li $t1 4
    mul $t0 $t0 $t1 # $t0 = indirizzo del byte iniziale [b3,b2,b1,b0]
    add $t0 $t0 $s6
    lw $t1 ($t0) #A[B[4]]

    #f = g + $t1

    add $t1 $t1 $s5
    sw $t1 f
