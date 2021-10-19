
m4_include(./../../setup.m4)

# Lab 07 - Create a Restaurant Class

200pts pts total.

## Problem

This is taken from chapter 9-1 and 9-4 in the textbook.

Make a class called Restaurant . The `__init__()` method for Restaurant
should store two attributes: a `restaurant_name` and a `cuisine_type`.
Make a method called `describe_restaurant()` that prints these two
pieces of information, and a method called `restaurant_open_or_closed()` that
prints a message indicating that the restaurant is open.

Have a function that sets the boolean (True/False) flag that makes the restaurant
open or closed.  Call this `set_restaurant_status()` and it should take a
single parameter of True or False.

Make two instances of the restaurant using your class.  One with a
restaurant called 'Good Eats', and the other with a restaurant called
'Family Diner'.

Implement an automated test that checks that `open_resturant()`
works correctly.

## Class Example

An example of a simple class with an automated test.
A link to the example: [https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-07/lab-7-ref.txt](https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-07/lab-7-ref.txt)

```
m4_include(ex1.py)
```

The link to the starter file for this is: [https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-07/lab7-ans.txt](https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-07/lab7-ans.txt)  

```
m4_include(lab7-ans.txt)

```











# Copyright

Copyright (C) University of Wyoming, 2021.
