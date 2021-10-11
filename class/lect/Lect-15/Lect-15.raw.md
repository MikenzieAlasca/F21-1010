
m4_include(../../../setup.m4)

# Lecture 17 - Objects and State

## Motivation and History

State, Collections of data.

Separation of Data from Operations on data.

We could store data in lists

```
m4_include(d1.py.nu)
```

From: 
[https://realpython.com/python3-object-oriented-programming/](https://realpython.com/python3-object-oriented-programming/)

## Python's Implementation is Objects

Objects are created as a package that defines the layout and names for data
and combines that with functions that operate on the data.  These functions
ore called "methods".  

Create a Class:

```
m4_include(create1.py.nu)
```

Initialization is important - so with a class we have a special function called `__init__` that setups the
data and initializes it.

```
m4_include(create2.py.nu)
```

This introduces the term `self` - in other languages it is often called `this`.
`self` refers to the set of data that this class is going to work on.   In the constructor, the special 
function called `__init__`, `self.name` creates a variable called `name` that is tied to the instance
data for this class.

By doing the `__init__` in this way we require that creating a `Dog` means that you
must pass 2 values, then name and the age.

```
m4_include(instance1.py.nu)
```

And...

Access some values in the data.

```
m4_include(instance2.py.nu)
```


We can create functions that change parts of the class data.

```
m4_include(food1.py.nu)
```



















We control how the values are changed inside the class.

```
m4_include(bday1.py.nu)
```
