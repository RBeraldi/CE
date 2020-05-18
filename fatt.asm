#
# WepSIM (https://wepsim.github.io/wepsim/)
#

# int fatt(int n {
#	if (n<1) return 0;
# return n*fatt(n-1);
#	
#}
.data
.text
main:

 li  $a0 5#n 
 jal fatt
 
spin: j spin
 
 
fatt:

addi $sp $sp -8 #riserva 2 celle di memoria nello stack 

  sw $a0 0($sp) #memorizza $a0 perchè lo modifica
  sw $ra 4($sp) #memorizza l'indirizzo di ritorno perchè lo modificherà
  
  li $t0 1
  blt $t0 $a0 L # se n>1 richiama fatt
  
  #CASO BASE
  addi $v0 $zero 1 #restituisce 1
  addi $sp $sp 8 #libera spazio dello stack
  jr $ra #restituisce controllo al chiamante
  
  #CASO RICORSIVO
L:  
  addi $a0 $a0 -1 #chiama fatt(n-1)
  jal fatt
  lw $a0 0($sp) #recupera parametro $a0
  lw $ra 4($sp) #ripristina indirizzo di ritorno
  addi $sp $sp 8 #ripristina lo stack
  mul $v0 $a0 $v0
  jr $ra
#  .....
