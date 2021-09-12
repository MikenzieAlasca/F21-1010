

m4_include(../../../setup.m4)

# Lecture 8 - Loops / For Loops / Range

To deal with data that is not individual data we have 2 different
tools.  The first is functions that call themselves - this is
recursion.

The second is Loops.   Loops are the more common.

```
m4_include(ex1.py)
```

So... This uses the "range" operator.  range encodes a
set of values that can be used in a loop.

```
m4_include(ex2.py)
```

When it is specified like this it is the same as `range(0, 5)`.

A range is a start value that increments up to but not including
the end value.  So `range(0, 5)`  will have values 0, 1, 2, 3, 4.

This is useful whenever we have a loop to control how many times
the loop will go around.

Let's walk through a loop:

```
m4_include(ex3.py)
```

So we can use this to search a list:

```
m4_include(ex4.py)
```


We can also use  a for loop to go through the values in a list.

```
m4_include(ex4.py)
```


So... Let's search a bigger list.


```
m4_include(search-list.py.nu)
```


















# Copyright

Copyright (C) University of Wyoming, 2021.

