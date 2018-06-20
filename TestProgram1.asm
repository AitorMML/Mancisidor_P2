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
	