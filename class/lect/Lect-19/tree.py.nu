  1: #!/usr/bin/python
  2: 
  3: import turtle 
  4: 
  5: def tree(length,n):
  6:     if length < (length/n):
  7:            return
  8:     turtle.forward(length)
  9:     turtle.left(45)
 10:     tree(length * 0.5,length/n)
 11:     turtle.left(20)
 12:     tree(length * 0.5,length/n)
 13:     turtle.right(75)
 14:     tree(length * 0.5,length/n)
 15:     turtle.right(20)
 16:     tree(length * 0.5,length/n)
 17:     turtle.left(30)
 18:     turtle.backward(length)
 19:     return
 20: 
 21: turtle.left(90)
 22: turtle.backward(30)
 23: tree(200,4)
 24: 
 25: input("Press Enter to continue...")
