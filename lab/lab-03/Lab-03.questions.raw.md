
m4_include(../../setup.m4)

# Lab 3 - Questions

Path to github.com for class: [https://github.com/Univ-Wyo-Education/F21-1010](https://github.com/Univ-Wyo-Education/F21-1010/)

Use "git" to checkout a clone of the class.
```
$ git clone git@github.com:Univ-Wyo-Education/F21-1010.git
$ cd F21-1010
$ pwd
```

Find the ".../lab/lab-03" path and ...
```
$ cd lab
$ cd lab-03
$ pwd
```

Using your program that counts words and lines on the book
Key-Out-of-Time_by_Andre-Norton.txt to find out how many words and
lines are in this novel.   You will need to make a copy of your program
from where you developed it into this directory.
The "cp" command is "cp from-file to-directory-or-file"
My "copy" process for this was:
```
$ cp ../../../hw3/word-count.py .
```
Each of the "../" takes me up 1 directory.
I did my work in hw3.
I called the file word-count.py.
the "." at the end says - use the current directory.
*Your copy command will be different because you probably did not use the same 
directory paths as I did.*

Then to run it:
```
$ python word_count.py
File Name
Key-Out-of-Time_by_Andre-Nortion.txt
...
```

Use a pipe to output to a file and turn in the output from running
your program.

```
$ python your-word-count.py >output.txt
Key-Out-of-Time_by_Andre-Nortion.txt
```

Turn in the "output.txt" file for the lab.



Then write a markdown file and answer 2 questions.

1. (50pts)  How many words are in each of the 4 books?
```
	Anna-Karenia_by_Leo_Tolstoy.txt
	Key-Out-of-Time_by_Andre-Norton.txt
	Twenty-Thousand-Leagues-Under-The-Sea_by_Jules_Verne.txt
	War-and-Peace_by_Leo_Tolstoy.txt
```
2.  (50pts) From this small sample, would you say that Russian novels
are longer than novels by western authors like Jules Verne and Andre Norton?




# Copyright

Copyright (C) University of Wyoming, 2021.

