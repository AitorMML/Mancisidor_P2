#Description: Test program for BEQ, BNE

.text

#	addi $sp, $zero, $10010200	# Inicio de memoria + d'512


#	addi $t0, $zero, 0x00400000
#	add $t1, $zero, $zero #4 
#	addi $t1, $t1, 1 #8 
#	addi $t1, $t1, 1 #0c
#	addi $t1, $t1, 1 #10
#	addi $t1, $t1, 1 #14
#	addi $t1, $t1, 1 #18
#	jr $t0


	addi $t3, $zero, 15
adds:
	addi $t0, $t0, 5
	addi $t1, $t1, 6
	addi $t2, $t2, 7
	beq $t0, $t3, salto
	
	jal adds
	
subs:
	addi $t0, $zero, -5
	addi $t1, $zero, -4
	addi $t2, $zero, -3
	
	j exit
	
salto:
	jr $ra

exit:
	addi $t0, $zero, 20


#	addi $t0, $zero, 5
#	add $t1, $zero, $zero
#while:
#	beq $t1, $t0, exit
#	addi $t1, $t1, 1
#	bne $t1, $zero, while
	
#exit:
#	add $t2, $t1, $t1
#	sll $t3, $t2, 2
#	j part2
#	addi $t3, $t1, 5
	
#part2:
	#addi $t2, $zero, 0x10010000
#	lui $t2, 0x1001
#	addi $t4, $zero, 0x00400008
#	jr $t4 	
#	sw $t0, 0($t2) #se salta esta
#	lw $t1, 0($t2)





	
#	addi $t0, $zero, 5
#	add $t1, $zero, $zero
#while:
#	beq $t1, $t0, exit
#	addi $t1, $t1, 1
#	bne $t1, $zero, while


	
#exit:
#	add $t2, $t1, $t1
#	sll $t3, $t2, 2




#	addi $t0, $zero, 1
#	lui $t0, 1
	
#	add $t1, $zero, $t0
#	sub $t1, $t1, $t1
#	sll $t0, $t0, 2
#	srl $t0, $t0, 2
#	andi $t1, $t0, 15

#	addi $t2, $zero, 0x10010000 
#	addi $t0, $zero, 5
#	sw $t0, 0($t2)
#	lw $t1, 0($t2)

#	lui $s0, 0x00000101
#	ori $s1, $s0, 0x24
#	addi $s2, $zero, 1
#	addi $s3, $zero, 32
#	sll $t0, $s2, 4
#	srl $t1, $s3, 4
#	sub $t2, $t0, $t1
	
