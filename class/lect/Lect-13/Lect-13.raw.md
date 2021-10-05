
m4_include(../../../setup.m4)

# Lecture 13 - Review for Midterm

## First this weeks lab.

2 videos :

[stephie_0.mp4](stephie_0.mp4)

[stephie_1.mp4](stephie_1.mp4)

Get Data / Read in data.

```
import readGeneticData 
data = readGeneticData.readGeneticData (filepath)
```

Searching for a pattern in DNA

```
pattern = 'ACTGGCTGGCCTAGTGACTTCCAGCTGCACAGCTATCGACCCAGGGCTGGACAGCCCCTGCCTGGC'
```

Convert file to a single string.  Clean up data.

```
data_str = "".join(data)
data_str = data_str.upper()
```

Search it.

```
x = data_str.index ( pattern )
```

Better Search it:

```
try:
    x = data_str.index ( pattern )
    print ( "Pattern Found at {}".format( x ))
except:
    print ( "Not Found" )
```


## Review


### Create a function.

```
def name ( param1 ):
	# add stuff
```

With a test...

```
# Automated Test
if __name__ == "__main__":
    n_err = 0
    x = name ( 3 )				# change this
    expect = value				# change this
    if x !=  expect:
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".format (  expect, x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

```



### Test a function

1. get the code.
2. run the code.
3. What is the "expectation"
4. Why did it fail to meat this "expectation"
5. Where in the code did it fail.


```
ll = [ 1, 2 ]
i = 0
while ( i < 2 ):
	print ( "ll[{}] = {}".format( i, ll[i] ))
```

Another example

```
ll = [ 1, 2 ]
i = 0
while ( i < 2 ):
	i = i + 1
	print ( "ll[{}] = {}".format( i, ll[i] ))
```


