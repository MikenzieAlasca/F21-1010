  1: 
  2: class Dog:
  3:     def __init__(self, name, age):
  4:         self.name = name
  5:         self.age = age
  6:         self.food = ""
  7: 
  8: spot = Dog('Spot',2)
  9: kitty = Dog('Kitty',5)
 10: 
 11: print ( "{} is {} years old".format( spot.name, spot.age ) )
 12: print ( "{} is {} years old".format( kitty.name, kitty.age ) )
 13: 
 14: 
