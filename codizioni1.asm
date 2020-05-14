.text

main:
    li $t1 10 #a
    li $t2 20 #b
    li $t3 30 #c

#if (a<b) && (c==0)) d = 1

		bge $t1 $t2 exit #if (a >=b)
    bne $t3 $0 exit  #if (a!=0)
    j skip

exit:
		li $v0 1 #d
skip:

#if (a>0) 
#	b=b+10 
#else
# b = a-10
		ble $t1 $0 else# if (a<=0) goto else
    li $t0 10
    add $t2 $t2 $t0 #b=b+10
    j end
else:
    sub $t2 $1 $t1
end:
