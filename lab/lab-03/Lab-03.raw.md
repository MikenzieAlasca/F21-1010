
# Lab Question 3 

100 Pts

Due


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

Using your program that counts words and lines and use it on the book
Key-Out-of-Time_by_Andre-Norton.txt to find out how many words and
lines in this novel.   You will need to make a copy of your program
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

The to run it:
```
$ python word_count.py
File Name
Key-Out-of-Time_by_Andre-Nortion.txt
...
```

Use a pipe to output to a file and turn in the output from running
your program.

```
$ python yoru-word-count.py >output.txt
Key-Out-of-Time_by_Andre-Nortion.txt
```

Turn in the "output.txt" file for the lab.


