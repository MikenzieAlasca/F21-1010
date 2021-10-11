  1: class Dog:
  2:     def __init__(self, name, age):
  3:         self.name = name
  4:         self.age = age
  5:         self.food = ""
  6: 
  7: spot = Dog('Spot',2)
  8: kitty = Dog('Kitty',5)
  9: 
 10: print ( "{} is {} years old".format( spot.name, spot.age ) )
 11: print ( "{} is {} years old".format( kitty.name, kitty.age ) )
