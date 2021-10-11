  1: class Dog:
  2:     def __init__(self, name, age):
  3:         self.name = name
  4:         self.age = age
  5:         self.food = ""
  6: 
  7:     def setFood(self, food):
  8:         self.food = food
  9: 
 10:     def getName(self):
 11:         return self.name
 12: 
 13: spot = Dog('Spot',2)
 14: kitty = Dog('Kitty',5)
 15: 
 16: spot.setFood ( "Kibbles" )
 17: kitty.setFood ( "Purena Dog Chow" )
 18: 
 19: print ( "{}'s favorite food is {}".format(spot.name, spot.food) )
