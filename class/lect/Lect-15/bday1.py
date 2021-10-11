class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def setFood(self, food):
        self.food = food

    def getFood(self):
        return self.food

    def birthDay(self):
        self.age = self.age + 1

    def getAge(self):
        return self.age
