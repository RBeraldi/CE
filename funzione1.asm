
# i=3
# y = y + abs(A[i])
# implementare la funzione abs
#
#ipotesi t0=i,s0=y,t1=&A = memoria statica

.data
	A: .word 1 2 3 4 -4 5 6 -27

.text
main:

   li $t0 3
   la $t1 A
   #leggo elemento i-simo di A
   sll $t0 $t0 2 #shift a sx di 2 posizioni, ossia moltiplica per 4
   lw $t3 A
   add $t3 $t3 $t0 #indirizzo di A[i]
   lw $a0 ($t3)
   jal abs #v0=abs(a0)
   add $s0 $s0 $v0
   j exitall 
#######FUNZIONE ABS######  
abs:
	bge $a0 $0 else #(if a>=0)
  sub $v0 $zero $a0 #a0=0-a0
  jr $ra
 else: 
  move $v0 $a0
  jr $ra
 #####FIE FUNZIONE ABS
 exitall:
