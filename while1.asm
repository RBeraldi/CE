#
#while (x<=y) {
# z = z+10
# x = x +1

  #}

.data
        x: .word 1 #x=1
				y: .word 1000 #y=2
				z: .word 0 #z=0
.text
main:
			la $t0 x
			lw $t1 0($t0) #%t1 = x
      la $t2 y
			lw $t3 0($t2) #%t3 = y
      la $t4 z
			lw $t5 0($t4) #%t4 = z

      li $t6 10
      li $t7 1

while: bgt $t1 $t3 end        #while (x<=y): #if (x>y) then jump
      add $t5 $t5 $t6 #z = z+10
      add $t1 $t1	$t7		#x = x+1
      j while
end:

#z=z+10
#	x+
