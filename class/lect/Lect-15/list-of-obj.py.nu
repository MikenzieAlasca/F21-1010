  1: class MyClass(object):
  2:     def __init__(self, number):
  3:         self.number = number
  4: 
  5: my_objects = []
  6: 
  7: for i in range(100):
  8:     my_objects.append(MyClass(i))
  9: 
 10: for obj in my_objects:
 11:     print obj.number
