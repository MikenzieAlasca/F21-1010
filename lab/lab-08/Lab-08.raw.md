
m4_include(./../../setup.m4)

# Lab 08 - Using Recursion

200pts pts total.

## Problem - Fibonacci Numbers

200pts - Due  Nov 1, 2021

An example of a recursive definition is:

```
    sum(n) = { 0 if n <= 0
             { n + sum(n-1) if n > 0
```

Then we can build a function that matches this.

```
m4_include(r_add.py.nu)
```










Given our definition for a Fibonacci number

```
	fib(n) = { 0 : n = 0
             { 1 : n = 1
             { fib(n-1) + fib(n-2)
```

Implement a recursive function that calculates this in python.  Supply an automated test.

Turn in your code.
   
