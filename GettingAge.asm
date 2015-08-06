.data 
 	promt: .asciiz " Enter you age"
 	message: .asciiz "n\nYour age is"  
 .text
 	#Promt the use the enter age
 	li $v0,4
 	la, $a0,promt
 	syscall
 	#get the user age
 	li $v0,5
 	syscall
 	#store the resul in the $t0
 	move $t0, $v0
 	
 	#Display
 	li $v0 4
 	la, $a0,message
 	syscall
 	#Print show the age
 	li $v0, 1
 	move $a0, $t0
 	syscall
 	
 
 
 
 
 