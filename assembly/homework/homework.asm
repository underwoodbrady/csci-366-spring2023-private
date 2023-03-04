//==========================================================================================
// PROBLEM 1: Counting Up From 1 to 10 in Little Man Assembly
//==========================================================================================

// You can develop your code via the online emulator and then paste it in here
// Please use a jump in your solution
// Please use the OUT instruction to print values

        LDA ONE
        SUB ELEVEN 
LOOP    BRZ EXIT  
        ADD ELEVEN 
        OUT
        ADD ONE
        SUB ELEVEN 
        BRA LOOP
EXIT    HLT
ONE     DAT 1
ELEVEN  DAT 11

//==========================================================================================
// PROBLEM 2: Counting Up From 1 to 10 in MIPS Assembly
//==========================================================================================

// You can develop your code via the MARS emulator and then paste it in here
// Please use a jump in your solution
// Please use sys-calls to output the value

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
