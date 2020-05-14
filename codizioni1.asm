.text

main:
#if (a<b) && (c==0)) d = 1   

    li $s1 10 #a
    li $s2 20 #b
    li $s3 30 #c

    bge $s1 $s2 skip #if (a >=b) goto skip
    bne $s3 $0 skip  #if (a!=0)
    li $v0 1 #assumo d in $v0
skip:

#if (a>0) 
#	b=b+10 
#else
# b = a-10
    ble $s1 $0 else# if (a<=0) goto else
    li $t0 10
    add $s2 $s2 $t0 #b=b+10
    j end
else:
    sub $s2 $s1 $t0
end:
