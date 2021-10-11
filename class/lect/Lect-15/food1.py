
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

