.text
.globl main

main: 
      li		$v0, 4		
      la		$a0, str1		
      syscall
      li		$v0, 5
      syscall
      move 	$t0, $v0		

      li		$v0, 4		 
      la		$a0, str2		
      syscall
      li		$v0, 5	
      syscall
      move 	$t1, $v0		

      add		$t1, $t0, $t1	
      		
      li		$v0, 4		
      la		$a0, str3		
      syscall
      li		$v0, 1		
      move 	$a0, $t1		
      syscall

      li $v0,10
      syscall
        
.data
str1: .asciiz "Enter the first number "
str2: .asciiz "Enter the second number "
str3: .asciiz "The sum is "