.text
main:
         

#Caricare il valore 0xFF all'indirizzo 0x1000

li $t0 0xFF
sw $t0 0x1000

#Caricare il valore 0xEE all'indirizzo 0x1004
li $t0 0xEE
sw $t0 0x1004


#Copiare il contenuto di 0x1000 in 0x1008

lw $t0 0x1000
sw $t0 0x1008


#Sommare i contenuti di 0x1000, 0x1004 e 0x1008 e memorizzare il risultato in 0x100C

lw $t0 0x1000
lw $t1 0x1004
lw $t2 0x1008

add $t3 $t0 $t1
add $t3 $t3 $t2

sw $t3 0x100c

#Caricare 0xFF in $t0
li $t0 0xFF
#Caricare 0xFFEE in $t0
li $t0 0xFFEE

#Sommare il contenuto di $t0 con 0xAA e memorizzare il risultato in 0x1064

li $t1 0xAA
add $t0 $t0 $t1
sw $t0 0x1064

#Memorizzare in $t1 il secondo byte contenuto in $t0

 li $t3 0xFF00
 and $t1 $t0 $t3
 li $t3 8
 div $t1 $t1 $t3
