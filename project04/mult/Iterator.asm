// Sample program to iterate to 100

  @iterator
  M=1
  @sum //allocated somewhere
  M=0
(LOOP)
  @sum
  D=M
  @100
  D=D-A //if count=100
  @END
  D;JEQ //goto end
  @iterator
  D=M
  @sum
  M=D+M //sum=sum+count
  @LOOP
  0;JMP
(END)
  @END
  0;JMP
