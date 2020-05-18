# int esempio(int g,int h,int i, int j {
#	int f;
#             f = (g+h)-(i+j);
#	return f;
#}
#ipotesi: argomenti in $a0,..$a3
#f in $s0
.data
.text
main:

 li  $a0 5#g
 li  $a1 5#h
 li  $a2 5#i
 li  $a3 5#j
 jal esempio
 
 esempio:
  addi $sp $sp -12 #riserva 3 celle di memoria nello stack (quindi 3x4=12 byte)
  sw $t0 0($sp)
  sw $t1 4($sp)
  sw $s0 8($sp)
  
  add $t0 $a0 $a1 #g+h
  add $t1 $a2 $a3 #i+j
  sub $s0 $t0 $t1 #f = ...
  
  add $v0 $s0 $zero #valore di ritorno..
  
#  .....

  lw $t0 0($sp)
  lw $t1 4($sp)
  lw $s0 8($sp)
  
  addi $sp $sp 12 #ripristina lo stack
