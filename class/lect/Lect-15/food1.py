class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age
        self.food = ""

    def setFood(self, food):
        self.food = food

    def getName(self):
        return self.name

spot = Dog('Spot',2)
kitty = Dog('Kitty',5)

spot.setFood ( "Kibbles" )
kitty.setFood ( "Purena Dog Chow" )

print ( "{}'s favorite food is {}".format(spot.name, spot.food) )
