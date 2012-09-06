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


@24576
D=A
@MXSCREEN
M=D         // define max screen

// @16384
@SCREEN
D=A
@SCREENCOUNTER
M=D         // define screen counter


(LOOP)     // infinite loop
  @KBD
  D=M
  @FILL
  D; JGT


  @LOOP
  0; JMP

(FILL)
  // starting at the counter
  // fill in 1 pixel of the screen
  @SCREENCOUNTER
  M=1
  D=M+1
  @MXSCREEN
  M=D

  @LOOP
  0; JMP   // jump back to main loop
