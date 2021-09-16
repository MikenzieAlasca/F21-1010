

m4_include(../../../setup.m4)

# Lecture 8 - Loops / For Loops / Range

To deal with data that is not individual data we have 2 different
tools.  The first is functions that call themselves - this is
recursion.

The second is Loops.   Loops are the more common (ex1.py).

```
m4_include(ex1.py.nu)
```

So... This uses the "range" operator.  range encodes a
set of values that can be used in a loop.

```
m4_include(ex2.py.nu)
```

When it is specified like this it is the same as `range(0, 5)`.

A range is a start value that increments up to but not including
the end value.  So `range(0, 5)`  will have values 0, 1, 2, 3, 4.

This is useful whenever we have a loop to control how many times
the loop will go around.

Let's walk through a loop (ex3.py):

```
m4_include(ex3.py.nu)
```

So we can use this to search a list (ex4.py):

```
m4_include(ex4.py.nu)
```



A better way to search the values is to use the for loop with
the value instead of an index (ex5.py).

```
m4_include(ex5.py.nu)
```









Python has a 2nd kind of loop, a while loop (ex6.py).

```
m4_include(ex6.py.nu)
```


We can change this to print 1, 2, 3 (ex7.py):

```
m4_include(ex7.py.nu)
```

We can go thru our pets (ex8.py):

```
m4_include(ex8.py.nu)
```


But.... We can also break it (ex9.py).

```
m4_include(ex9.py.nu)
```













# Copyright

Copyright (C) University of Wyoming, 2021.

