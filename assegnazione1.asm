#
# WepSIM (https://wepsim.github.io/wepsim/)
#

#f = f + g + h + B[4]

.data

    B: .word 0x0 0x01 0x02 0x3 0x4
    f: .word 0x7

.text
main:

       li $s0 1 #g
       li $s1 2 #h
       lw $s2 f
       la $s3 B


       add $t1 $s3 16
       lw $t0 ($t1)
       add $t1 $s1 $t0 # t1 = h+B[4]
       add $s2 $s2 $t1 #
       add $s2 $s2 $s0 #
       sw $s2 f
a: j a
