#
#
#void strcpy (char x[], char y[]){
#int i;
#i = 0;
#while ((x[i]=y[i])!='\0')
#i += 1;
#}

.data
  s1: .asciiz "Ciao"
  s0: .space 8


.text
main:

    la $a0 s0
    la $a1 s1
    add $s0, $zero, $zero # i = 0
# while((x[i]=y[i])!='\0')
L1: 
    add $t1, $s0, $a1 # addr of y[i] in $t1
    lb $t2, ($t1) # $t2 = y[i]
    add $t3, $s0, $a0 # addr of x[i] in $t3
    sb $t2 ($t3) # x[i] = y[i]
    beq $t2, $zero, L2 # exit loop if y[i] == 0
    addi $s0, $s0, 1 # i = i + 1
    j L1 # next iteration of loop
