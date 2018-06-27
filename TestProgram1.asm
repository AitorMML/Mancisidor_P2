# Test program for unicycle MIPS
.data

.text
#	addi $t0, $zero, 1
#	lui $t0, 1
	
#	add $t1, $zero, $t0
#	sub $t1, $t1, $t1
#	sll $t0, $t0, 2
#	srl $t0, $t0, 2
#	andi $t1, $t0, 15

	addi $t2, $zero, 0x10010000 
	addi $t0, $zero, 5
	sw $t0, 0($t2)
	lw $t1, 0($t2)

#	lui $s0, 0x00000101
#	ori $s1, $s0, 0x24
#	addi $s2, $zero, 1
#	addi $s3, $zero, 32
#	sll $t0, $s2, 4
#	srl $t1, $s3, 4
#	sub $t2, $t0, $t1
	
