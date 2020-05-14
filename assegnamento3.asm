#int M[6][5]
#g = 6
#M[3][2]=8
#M[2][3] = M[3][2]+g

.data M: .space 120

.text

main:

    li $s0 6 #g=6
    #a = NC*i+j
    #spiazzamento s = elemento i,j : s=4*6*i+4*j
    #spiazzamento [3][2] = 4*5*3+4*2 = 60+8=68
    li $t0 8
    la $t1 M
    sw $t0 68($t1) #M[3][2]=8
    #spiazzamento [2][3] = 4*5*2+4*3 = 40+12=52
    add $t2 $t0 $s0 #t2=g+M[3][2]
    sw $t2 52($t1)
    
    j main
