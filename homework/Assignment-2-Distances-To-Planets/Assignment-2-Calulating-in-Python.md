














# Homework 2 - Distances to Planets and Stars

Due: Mon Sep 13

Points: 200 total.  100pts for Assignment, 100 in lab.

# The Solar system and Exoplanets

Lots of you have seen models in school of the solar system.

![Planets2013.svg.png](./Planets2013.svg.png)

[Image From Wikipedia!](https://creativecommons.org/licenses/by-sa/3.0/deed.en)  That is fun!!!

<div class="pagebreak"></div>

But very inaccurate.  Whenever you have a model you have 
inaccuracies.  That is not to say that it is not useful.
This is useful in showing the relative size and the order
of the planets in our solar system.

It is way, way, way off in giving you a sence of the scale of
the solar system.  In our model we will use the size
of a tennis ball as our model Sun and then calculate
the sizes of the planets and distances to other
stars.

For our calculations a tennis ball is 2.75 inches in diameter.
Note that some of our data is diameter and some is radius.
Diameter is radius times 2.

All of our calculations need to be carefully checked.  Read:
[https://www.simscale.com/blog/2017/12/nasa-mars-climate-orbiter-metric/](https://www.simscale.com/blog/2017/12/nasa-mars-climate-orbiter-metric/)
Unit conversion errors are a serious thing.  $125 million probe lost because of a conversion error between metric and English units.

## Sizes

The sizes of the planets in our solar system:

| Planet  | Radius                 | Description                                    |
|---------|:-----------------------|:-----------------------------------------------|
| Mercury | 1,516mi (2,440km)      | about 1/3 the size of Earth                    |
| Venus   | 3,760mi (6,052km)      | only slightly smaller than Earth               |
| Earth   | 3,959mi (6,371km)      | a nice place to live, about the size of Earth  |
| Mars    | 2,106mi (3,390km)      | about half the size of Earth                   |
| Jupiter | 43,441mi (69,911km)    | 11x Earth’s size                               |
| Saturn  | 36,184mi (58,232km)    | 9x larger than Earth                           |
| Uranus  | 15,759mi (25,362km)    | 4x Earth’s size                                |
| Neptune | 15,299mi (24,622km)    | only slightly smaller than Uranus              |

The Sun is 865,370 miles (1,391,400km) in diameter.

## Planet Distances from the Sun

| Planet   |    Distance from Sun (km)      |
|----------|-------------------------------:|
| Mercury  |    57,900,000                  |
| Venus    |    108,200,000                 |
| Earth    |    149,600,000                 |
| Mars     |    227,900,000                 |
| Jupiter  |    778,600,000                 |
| Saturn   |    1,433,500,000               |
| Uranus   |    2,872,500,000               |
| Neptune  |    4,495,100,000               |

## Miles/Kilometers per Light Year

5,878,625,352,016,794 miles per light year.

9,460,730,472,580,800 km per light year.

## Conversions

To convert kilometers to miles multiply the miles by 0.62137119.

To convert from miles to kilometers multiply by 1.60934 .

A mile is 80 chains, a chain is 22 yards.   A yard is 3 feet so a mile is 5280 feet.
An acre is 10 square chains.  All very convenient.  10 chains is 1 furlong.
so an acre is 1 furlong by 1 furlong.

Let us do some calculation and fix this misconception.

Read about the TRAPPIST-1 star system. 
[https://exoplanets.nasa.gov/trappist1/](https://exoplanets.nasa.gov/trappist1/)

There is a set of exoplantes that have been found around
a star that is 35 light years from our local star (The Sun).
Read the article: [https://earthsky.org/astronomy-essentials/how-far-is-a-light-year/](https://earthsky.org/astronomy-essentials/how-far-is-a-light-year/)
Find in the article where the author describes 35 light years as "close" to us.


## Learning Goals

1. Read in a value, calculate on it, print out results.
2. Testing of a program.
3. Printing out of results.
4. Debugging.
5. Use of a function in Python.
6. Editing text files.
7. What are files.
9. Organization of code.
10. Calculation with big numbers.
11. Differences between integer and float.  Data Types. String data types.
12. A model of how big the solar system is.

## Program

100pts total - Assignment 2.  Turned in by upland your files as a .zip archive on
the banner/wyoweb system.

Part 1: 75pts - Write a program that will:

0. Open PowerShell(windows) or Terminal(mac) or iTerm2(mac)
0. Create a directory/folder for this code
```
$ mkdir hw2
$ cd hw2
```
Or Windows/PowerShell
```
H:\> mkdir hw2
H:\> cd hw2
```
0. Create a file with the conversion code in it, `conv.py`.
```
$ vi conv.py
... edit file
```
Or Windows/PowerShell
```
H:\hw2\> vi conv.py
... edit file
```
1. use a "def" in `conv.py` for the conversions
2. Have a test section at the bottom to test the function.
	- Write automated test code that will check that your conversion is correct.
	- Make it so that if you just run the conversion code it will run the test.
0. Call the main program in the folder, `main.py`.
```
$ vi main.py
... edit file
```
Or Windows/PowerShell
```
H:\hw2\> vi main.py
... edit file
```
3. The main program will
	- Print out a prompt for the value.
	- Read in from the terminal a value in kilometers.
	- Apply a conversion from that unit to tennis ball model. (Call the function)
	- Output a value in miles, kilometers and feet plus inches (or fractions of an inch).

<div class="pagebreak"></div>

Example Code: from lecture...

main program (main.py)
```

# Step 5 - with function and a test.

import conv

print ( "Enter Miles" )

miles_str = input()
miles = int(miles_str)

km = conv.mi_to_km(miles)

print ( "km = {}".format(km) )

```

main program (conv.py)
```

# mi_to_km converts from miles as an integer or float to kilometers.  
def mi_to_km ( mi ):
    conv = 1.60934
    km = mi * conv
    return (km)

# Automated Test
if __name__ == "__main__":
    n_err = 0
    x = mi_to_km ( 3 )
    if x !=  4.82802:
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".
                format (  4.82802, x ) )
    x = mi_to_km ( 0 )
    if x != 0:
        n_err = n_err + 1
        print ( "Error: Test 2: conversion not working, expected {} got {}".
                format ( 0, x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )


```

Part 2. 25pts - Write a program that will:
Use the same technique as the above with different values for reading in
light years and print out the output in miles and kilometers.  This means
creating a new directory for this 2nd set of code.  Creating a set of files,
one with the main program and a file for each of the conversions.  The conversions
are light-years-to-miles and miles-to-kilometers.
Read in light years, print out miles and kilometers in the main program.
Call the conversion from the main program.  Implement test code in
each of the conversion programs. 

## Questions: to be answer in lab.

Questions are answered by doing a write up as a .md or .markdown (text) file in lab.
The write-up should be written in Visual Studio Code (VS Code).

Use markdown [https://www.markdownguide.org/cheat-sheet/](https://www.markdownguide.org/cheat-sheet/) for the formatting of your
text file answers.

This portion should be turned in as a part of your lab.

It is worth 100pts.

1. 5pts - What is the closest star to planet Earth?  Think! It shines on you every day.
2. 10pts - Approximately how many exoplanets have been identified? (Use Google)
	Explain why you think this answer from Google and other sources
	is valid.   Find a list of Kupier belt objects.  How many are there?
	How far is it to the Kupier Belt in miles and kilometers?  How far is it to the Oort Cloud in miles and kilometers?
3. 10pts - How far is it to the Trappist-1 system In Light Years?
	In miles and kilometers in our model, how far to this system?
4. 10pts - At the speed of light how far is it from Laramie to Tokyo Japan?  Answer in fractions of a second.
5. 10pts - If the Sun in our model is the size of a tennis ball, then
	how far is to Proxima Centauri 4.3 light years from us?
	In Miles and in kilometers?   In Feet and meters?  
	Calculate for our tennis ball model  the number of miles	
	that 4.3 light years represents.  Using Google Maps - find a city
    that is approximately the same number of miles from 
    Laramie to that city as our model calculates.   How
    long will it take you to drive from Laramie to that city? Use appriximate number of hours of driving time from Google Maps.
	Will you be able to see the tennis ball from that location? (Yes/No)
6. 5pts - Using the same calculation, L 95-59 is 35 light years 
	from Earth. Use your program to calcualte the number
	of miles and kilometers to L 95-59.   For the tennis ball model calculate the number of miles in our model to L 95-59?
7. 15pts - If the Sun is a tennis ball, how big are each of the planets - in inches or thousandths of an inch?
8. 5pts - How big is the Moon in thousandths of inches in our model and how far from Earth in inches?
9. 5pts -How far is it to the Kupier Belt in miles and kilometers?  How far in miles in the tennis ball model?  If you are in Prixies Pasture at the "family" statue, put the Sun there - where will the Kupier Belt be?
10. 5pts - How far is it to the Oort Cloud in miles and kilometers? How far in miles in the tennis ball model? If you are in Prixies Pasture at the "family" statue, put the Sun there - where will the Oort Cloud be?
11. 10pts - Cygnus-x-1 is at the center of the Milky Way Galaxy, 29,000 light years from earth.   How many miles is that?
12. 10pts - Ligo detected a black hole merger [https://www.ligo.caltech.edu/news/ligo20200902](https://www.ligo.caltech.edu/news/ligo20200902)
   of gw190521.  How many light years is that away from earth? (See: [https://en.wikipedia.org/wiki/GW190521](https://en.wikipedia.org/wiki/GW190521).  How far away is that in miles?  Use 1,000,000,000 for a billion.

Write up your answers in a text file (not Microsoft Word, or .pdf).


















# Copyright

Copyright (C) University of Wyoming, 2021.
