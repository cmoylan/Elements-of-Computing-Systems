// This file is part of the materials accompanying the book
// "The Elements of Computing Systems" by Nisan and Schocken,
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.


// add first number to itself as many times as second number
  @one
  M=1
  @2 //allocated somewhere
  M=0
(LOOP)
  @1
  D=M // get value of RAM[1]

  @one // load 1 into the ALU and compute RAM[1] - 1
  D=D-M //if count=100

  @1 // store value back in RAM[1]
  M=D

  @END // jump to end if result == 0
  D;JLT //goto end

  @0 // get the value of RAM[0]
  D=M
  @2
  D=D+M // add it to itself
  @2
  M=D // store it in RAM[5]

  @LOOP
  0;JMP
(END)
  @END
  0;JMP
