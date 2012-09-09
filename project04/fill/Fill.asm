// This file is part of the materials accompanying the book
// "The Elements of Computing Systems" by Nisan and Schocken,
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed,
// the screen should be cleared.

// Put your code here.
// if 24576 > 0 fill
// otherwise unfill


// define max screen (24576)
@24576
D=A
@MXSCREEN
M=D


// define screen pointer (16384)
@SCREEN
D=A
@POINTER
M=D


(LOOP)     // infinite loop
  // If we have keyboard input, jump to FILL
  @KBD
  D=M
  @FILL
  D; JGT

  // Otherwise jump to UNFILL
  @UNFILL
  0; JMP


(UNFILL)
  // Do nothing if POINTER == SCREEN
  @SCREEN
  D=A
  @POINTER
  D=D-M
  @LOOP
  D; JEQ

  // Unfill the screen
  D=0
  @POINTER
  A=M
  M=D

  // Decrement POINTER
  D=1
  @POINTER
  D=M-D
  @POINTER
  M=D

  // Jump back to main loop
  @LOOP
  0; JMP


(FILL)
  // Do nothing if the screen is full
  @MXSCREEN
  D=M
  @POINTER
  D=D-M
  @LOOP
  D; JEQ


  // Fill in the pixel that POINTER points to
  //@-1
  D=-1
  @POINTER
  A=M
  M=D

  // Iterate pointer by 1
  D=1
  @POINTER
  D=D+M
  @POINTER
  M=D

  // jump back to main loop
  @LOOP
  0; JMP
