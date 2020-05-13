.data

s:	.space 10

.ktext
.text

main:

li $a0 0xAFF
la $a1 s
jal itoa #itoa(a0,&s),ritorna lunghezza stringa in $v0

move $a0 $v0 #lunghezza della stringa
jal reverse#reverse(&v0)

la $a0 s
jal print_i

spin: j spin



############ print (&s) a0=&s
print_i: #print (a0)
  		 li $t1 1
  while_print:
  			lb $t3 ($a0)
        beq $0 $t3 end_print
        out $t3 0x1000
        add $a0 $a0 $t1
        j while_print
  end_print:
       	jr $ra


reverse: #reverse (a0=lunghezza,a1=&s)
    li $t0 1 #usato per contatore
    move $t1 $a0 #j=lunghezza stringa
    #lb $t1 ($t1)
    move $t2 $a1 #indirizzo di menoria della stringa
    add $t1 $t1 $t2 #j

    #{
for:
    bgt $t2 $t1 end
    lb $t3 ($t2) #   c=s[i];
    lb $t5 ($t1) #   s[i]=s[j];
    sb $t5 ($t2)
    sb $t3 ($t1) #   s[j]=c;
    add $t2 $t2 $t0 #i=i+1
    sub $t1 $t1 $t0 #j=j-1
    j for
end:
		jr $ra
#}


########## IMPLEMENTAZIONE DELLA FUNZIONE ITOA#####
itoa: #itoa(n,&s) #a0=n,a1=&s

	xor $v0 $v0 $v0 #$t0 = i = 0;
  li $t1 10
  li $t2 1
  li $t3 0x30 #'0'

while:
  ble $a0 $0 end_itoa
  add $v0 $v0 $t2
  rem $t5 $a0 $t1 #t5=n%10
  div $a0 $a0 $t1 #t6=n/10
  #s[i++]=n%10 + '0';
  add $t5 $t5 $t3 #n+'0'
  sb $t5 ($a1)  #s[i]<--ascii
  add $a1 $a1 $t2 #&s+1
  j while
end_itoa:
	add $a1 $a1 $t2
  #add $v0 $v0 $t2
  sb $0 ($t4)
  jr $ra
##################

