class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age
        self.food = ""

spot = Dog('Spot',2)
kitty = Dog('Kitty',5)

print ( "{} is {} years old".format( spot.name, spot.age ) )
print ( "{} is {} years old".format( kitty.name, kitty.age ) )
