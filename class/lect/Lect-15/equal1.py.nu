  1: class Dog:
  2:     def __init__(self, name, age):
  3:         self.name = name
  4:         self.age = age
  5:         self.food = ""
  6: 
  7:     def setFood(self, food):
  8:         self.food = food
  9: 
 10:     def getFood(self):
 11:         return self.food
 12: 
 13:     def getName(self):
 14:         return self.name
 15: 
 16: 
 17: spot = Dog('Spot',2)
 18: kitty = Dog('Kitty',5)
 19: 
 20: print ( "are they the same? {}".format( spot == kitty ) )
