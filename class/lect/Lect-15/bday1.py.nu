  1: class Dog:
  2:     def __init__(self, name, age):
  3:         self.name = name
  4:         self.age = age
  5: 
  6:     def setFood(self, food):
  7:         self.food = food
  8: 
  9:     def getFood(self):
 10:         return self.food
 11: 
 12:     def birthDay(self):
 13:         self.age = self.age + 1
 14: 
 15:     def getAge(self):
 16:         return self.age
