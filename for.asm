#
.text
main:
   #for(int i=0;i<5;i++) {
   #  a+=b
   #}
   #ipotesi a=$t3,b=$t4
   xor $t0 $t0 $t0 #i=0
   li $t1 5 #costante
   li $t2 1 #costante

for:   
		bge $t0 $t1 exit
   	add $t3 $t3 $t4
   	add $t0 $t0 $t2
   j for
 exit:
