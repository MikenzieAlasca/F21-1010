














# Numpy, Pandas, MatPlotLib

## What is NumPy, why NumPy

NumPy  is for "Numerical Python". 
It is a Python module which provides fast mathematical
computation on n-dimensional data.  These are arrays, matrices, 3-D data etc.
Images are 2d data.   Other machine learning data may be n-dimensional.
For this reason NumPy is an essential part of the Machine Learning ecosystem.
In conjunction with Pandas and MatPlotLib these tools will allow us to 
effectively use TensorFlow.   This makes for a complete the Python Machine Learning Ecosystem.

We can build high speed mathematical functions and scientific computation
using the underlying storage in NumPy.

To import NumPy:

```
import numpy as np
```

There is a "install" check script later in this lecture for all 3 modules.

Why not just use Python lists?

A list can be indexed and it looks to be a way to store multi-dimensional 
data.  The problem is that a list is built out of individual nodes.
Individual nodes can have different data types.  This makes lists
flexible but slow.  With lots of data an efficient way to store
homogeneous data is needed.   Lots of work has been put into
NumPy to make it efficient.

## How to use NumPy

<style>
table tbody tr td {
	vertical-align : top;
}
</style>

| NumPy Command | Example |
|:-------------|:-------------------------------------|
| np.array     | <pre><code>>>> z = np.array([5,4,3])<br>>>> print(z)</code></pre> |
| np.ones     | <pre><code>>>> z = np.ones((2,3))<br>>>> print(z)</code></pre> |
| np.full     | <pre><code>>>> z = np.full((2,3),8)<br>>>> print(z)</code></pre> |
| np.reshape  | <pre><code>>> z=np.arange(3).reshape((3,1))<br>>>> print(z)</code></pre> |

## A example of NumPy

On a boat with no gas working gages.

```
  1: 
  2: # 5g + 17m = 30.5
  3: # 8g + 22m = 41
  4: 
  5: # Can be solved in NumPy using
  6: import numpy as np
  7: 
  8: coeffs  = np.array([[5, 17], [8, 22]])
  9: depvars = np.array([30.5, 41])
 10: solution = np.linalg.solve(coeffs, depvars)
 11: 
 12: # solution
 13: print ( solution )
 14: # array([1, 1.5])
 15: # means g=1, m=1.5 or 1 gallon per hour for generator,
 16: # 1.5 gallon per hour for main moter

```

# Using Vectors with Machine learning


Vectors are one-dimensional arrays. They get used all over the place with machine learning.
Depending on what we are doing we will see both row and column vectors.  If we have the
wrong shape we can use np.reshape to fix it.

A vector is often defined as a magnitude and a direction. In 2d space this means a vector of `[3,30]` can be a force of 3 and a direction of 30-degrees.
This can be useful where we can add up vectors to get a final vector.

In ML they are used to represent observations and predictions.

Let's take a youtube set of videos on van's and van-building and then
analyze the comments on the videos.  We want to classify them as a set
of probabilities.  Is it clickbait, is it useful, is it a travel video.
The Output for a given video might be a vector of `[0.28,0.02,0.41]` where
this is a probability of 28% for being clickbait, 2% for a probability of being
a useful build video and 41% being a travel video.

As a feature vector we may have a set of values that relate to the same videos
like duration, number of views, number of comments, length of comments.

Most of the time for machine learning is spent on collecting and preparing
the data.  This is the 'data' pipeline.  Consideration also needs to take
place on how to test the model and how to maintain it with new data.


## Differences between NumPy arrays and Python Lists.

A sub-section of an array, called a slice, is just a pointer into the original data in NumPy.  In Python it is a copy.
To create a copy with NumPy use the np.copy function.

NumPy:

```
  1: import numpy as np
  2: 
  3: a = np.array([1,2,3,4,5])
  4: print ("original a={}".format( a ))
  5: 
  6: a[1:3] = 200
  7: print ("modified a={}".format( a ))
  8: 
  9: b = np.copy(a[1:3])
 10: print ( "b={}".format(b ))
 11: b[0] = 400
 12: 
 13: print ("again  a={} and b={}".format( a, b ))

```

Python:

```
  1: 
  2: a = [1,2,3,4,5]
  3: x = a[1:3]
  4: print ( "x={}".format(x))
  5: x[0] = 400
  6: print ( "a={} x={}".format(a,x) )
  7: 
  8: a[1:3] = 200

```


## A quick check that you have all 3 modules installed.

First check that you have them installed.

```
  1: import numpy as np
  2: import pandas as pd
  3: import matplotlib.pyplot as plt
  4: 
  5: print ( "You should not see any errors when this is run" )

```

