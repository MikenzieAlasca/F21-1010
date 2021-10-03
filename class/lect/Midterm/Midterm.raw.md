
m4_include(../../../setup.m4)


# Midterm

Total 600 pts.  10 questions.


Question 1: 60 pts. Implement a function with a set of test code that converts from
feet to inches.   Call the file `feet_to_in.py`.



Question 2: 60 pts. Use a loop to search a list and find if a value is in a list.
Implement a function, `find_in_list` that takes 2 parameters.

```
def find_in_list ( theList, lookFor ):
```

and returns True if `lookFor` is in the list.

Implement a simple test for the function.  Put the code in the file `find_in_list.py`.

An example of calling the function (can be used in your test) is:

```
	ll = [ "a", "b", "c" ]
	found = find_in_list ( ll, "b" )
```


Question 3:  60 pts. Implement a function to convert an input list of strings to a single string.
(This is very similar to lab 5 code)  Have a set of test code for it.


Question 4:  60 pts.  Use python (either write a very short program, or use it interactively)
to calculate:

```
y = k + 4 * x  + 2 * x * x
```

where k = 92827828272222

and x = 48938493289499000009939393939393947829202020920020202072722243433

Turn the resulting 'y' value.


Question 5: 60 pts.  You want to find strings where the first 3 characters are the reverse of the
last 3 characters in the following list of strings:

```
ll = [
	"abc earth cba",
	"abc mars abc",
	"abcba"
]
```

You have a function that will reverse strings:

```
m4_import(reverse.py.nu)
```

Write a program that will take the input list above and find the strings with
that have the first matching the last 3 reversed.


Question 6: 60 pts. You have a table

| age bracket | expected value |
|-------------|---------------|
| 0 to 14     | 0 |
| 15 to 16    | 2000 |
| 17 to 18    | 6000 |
| 19 to 23    | 24000 |
| 24 to 40    | 38200 |
| 41 to 67    | 51000 |
| 67 and older | 18200 |

Implement this as a function with  if/elif/else and return the value from the 2nd column.
Implement a test that checks this.



Question  7: 60 pts.  Given the following code:

```
m4_include(q7.py.nu)
```

Show the output from the 3 line program.


Question  8: 60 pts.  Using the following code

```
m4_include(rev1.py.nu)
```

Hand trace what is happening int this code.   Complete the following table.

| Line No / Time | s | i | o | notes |
|----------------|---|---|---|---------|
| 1l / t1        | abc | | | |
| l2 / t2        | abc | 2 | | |
| l3 / t3        | abc | 2 | "" | |
| l4 / t4        | abc | 2 | "" | while is true, enter loop |
| l5 / t5        | abc | 2 | "c | |



Question  9: 60 pts.  You have the following code.  It is not working correctly.
Fix it. (file is q9.py)

```
m4_include(q9.py.nu)
```


Question  10: 60 pts.  You have the following code.  It is not working correctly.
Fix it. (file is q10.py)

*Hint: you may want to fix the code before you run it - or remember that a 
control-c will terminate a program in the middle of running it*

```
m4_include(q10.py.nu)
```

