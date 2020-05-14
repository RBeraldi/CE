.text
main:

#int potenza(int m, int b) {
# ret=1;
# if (m>0) {
#   for (int i=0;i<m;i++)
#      ret=ret*b
# }
# return ret;
# }

li $a0 5 #v0=potenza (a0=m,a1=base)
li $a1 4
jal potenza


potenza: 
		li $v1 1
for:
		beq $a0 $zero exit
    mul $v1 $v1 $a1
    addi $a0 $a0 -1
    j for
 exit:
    jr $ra
