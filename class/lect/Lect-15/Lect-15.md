














# Lecture 17 - Objects and State

## Motivation and History

State, Collections of data.

Separation of Data from Operations on data.

We could store data in lists

```
  1: kirk = ["James Kirk", 34, "Captain", 2265]
  2: spock = ["Spock", 35, "Science Officer", 2254]
  3: mccoy = ["Leonard McCoy", "Chief Medical Officer", 2266]
  4: 
  5: print ( kirk[1] )
  6: print ( spock[1] )
  7: print ( mccoy[1] )

```

From: 
[https://realpython.com/python3-object-oriented-programming/](https://realpython.com/python3-object-oriented-programming/)

## Python's Implementation is Objects

Objects are created as a package that defines the layout and names for data
and combines that with functions that operate on the data.  These functions
ore called "methods".  

Create a Class:

```
  1: class Dog:
  2:     pass

```

Initialization is important - so with a class we have a special function called `__init__` that setups the
data and initializes it.

```
  1: class Dog:
  2:     def __init__(self, name, age):
  3:         self.name = name
  4:         self.age = age
  5:         self.food = ""

```

This introduces the term `self` - in other languages it is often called `this`.
`self` refers to the set of data that this class is going to work on.   In the constructor, the special 
function called `__init__`, `self.name` creates a variable called `name` that is tied to the instance
data for this class.

By doing the `__init__` in this way we require that creating a `Dog` means that you
must pass 2 values, then name and the age.

```
  1: class Dog:
  2:     def __init__(self, name, age):
  3:         self.name = name
  4:         self.age = age
  5:         self.food = ""
  6: 
  7: spot = Dog('Spot',2)
  8: kitty = Dog('Kitty',5)

```

And...

Access some values in the data.

```
  1: class Dog:
  2:     def __init__(self, name, age):
  3:         self.name = name
  4:         self.age = age
  5:         self.food = ""
  6: 
  7: spot = Dog('Spot',2)
  8: kitty = Dog('Kitty',5)
  9: 
 10: print ( spot )

```


We can create functions that change parts of the class data.

```
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

```

You can compare to see if they are euqal.


```
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
 16: 
 17: spot = Dog('Spot',2)
 18: kitty = Dog('Kitty',5)
 19: 
 20: print ( "are they the same? {}".format( spot == kitty ) )

```


We can put the format of name/age into the class itself.

```
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

```















We control how the values are changed inside the class.

```
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

```
