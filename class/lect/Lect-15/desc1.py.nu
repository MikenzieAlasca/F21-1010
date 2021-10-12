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
 16:     def desc(self):
 17:         return "{} is {} years old.".format(self.name, self.age)
 18: 
 19:     def says(self, word):
 20:         return f"{self.name} says {word}."
 21: 
 22: spot = Dog('Spot',2)
 23: kitty = Dog('Kitty',5)
 24: 
 25: print ( kitty.desc() )
 26: 
 27: print ( kitty.says("Bark Bark") )
 28: 
