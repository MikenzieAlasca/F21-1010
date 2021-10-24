  1: #!/usr/bin/python
  2: 
  3: # Python program to print complete Koch Curve. 
  4: from turtle import *
  5: 
  6: # function to create koch snowflake or koch curve 
  7: def snowflake(lengthSide, levels): 
  8:     if levels == 0: 
  9:         forward(lengthSide) 
 10:         return
 11:     lengthSide /= 3.0
 12:     snowflake(lengthSide, levels-1) 
 13:     left(60) 
 14:     snowflake(lengthSide, levels-1) 
 15:     right(120) 
 16:     snowflake(lengthSide, levels-1) 
 17:     left(60) 
 18:     snowflake(lengthSide, levels-1) 
 19: 
 20: # main function 
 21: if __name__ == "__main__": 
 22:     # defining the speed of the turtle 
 23:     speed(0)                 
 24:     length = 300.0
 25: 
 26:     # Pull the pen up  no drawing when moving. 
 27:     # Move the turtle backward by distance, opposite 
 28:     # to the direction the turtle is headed. 
 29:     # Do not change the turtles heading.         
 30:     penup()                     
 31: 
 32:     backward(length/2.0) 
 33: 
 34:     # Pull the pen down  drawing when moving.         
 35:     pendown()         
 36:     for i in range(3):     
 37:         snowflake(length, 4) 
 38:         right(120) 
 39: 
 40:     # To control the closing windows of the turtle 
 41:     mainloop()     
 42: 
