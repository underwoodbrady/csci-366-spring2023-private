.text

li $t0, 11 #end
li $t1, 1 #start
li $t2, 1 #start

loop:
  beq $t1, $t0, exitloop
  move $a0, $t1
  
  li $v0, 1 # print int
  syscall
  add $t1, $t1, $t2
  j loop
  exitloop:
