class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age
        self.food = ""

    def setFood(self, food):
        self.food = food

    def getFood(self):
        return self.food

    def getName(self):
        return self.name


spot = Dog('Spot',2)
kitty = Dog('Kitty',5)

print ( "are they the same? {}".format( spot == kitty ) )
