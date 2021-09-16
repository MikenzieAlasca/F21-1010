
m4_include(../../setup.m4)

# Lab 3 - Questions











Download the following books by right clicking on the links and using "Save As".

[https://raw.githubusercontent.com/Univ-Wyo-Education/F21-1010/main/lab/lab-03/Anna-Karenia_by_Leo_Tolstoy.txt](https://raw.githubusercontent.com/Univ-Wyo-Education/F21-1010/main/lab/lab-03/Anna-Karenia_by_Leo_Tolstoy.txt)

[https://raw.githubusercontent.com/Univ-Wyo-Education/F21-1010/main/lab/lab-03/Key-Out-of-Time_by_Andre-Norton.txt](https://raw.githubusercontent.com/Univ-Wyo-Education/F21-1010/main/lab/lab-03/Key-Out-of-Time_by_Andre-Norton.txt)
[https://raw.githubusercontent.com/Univ-Wyo-Education/F21-1010/main/lab/lab-03/Twenty-Thousand-Leagues-Under-The-Sea_by_Jules_Verne.txt](https://raw.githubusercontent.com/Univ-Wyo-Education/F21-1010/main/lab/lab-03/Twenty-Thousand-Leagues-Under-The-Sea_by_Jules_Verne.txt)
[https://raw.githubusercontent.com/Univ-Wyo-Education/F21-1010/main/lab/lab-03/War-and-Peace_by_Leo_Tolstoy.txt](https://raw.githubusercontent.com/Univ-Wyo-Education/F21-1010/main/lab/lab-03/War-and-Peace_by_Leo_Tolstoy.txt)


Use word count and run it on each of the books:


[https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-03/readNameList.py](https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-03/readNameList.py)

[https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-03/word-count.py](https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-03/word-count.py)

Use the links above to go to the file, click on the _raw_ button - cut and pase the program into a python file using your editor (vim or VSCode). 
Save the file and run it with each of the books.  You will need to keep the name "readNameList.py" so that the import in the word_count.py can find
the file.  The automated test in readNameList.py uses: 2names.txt

To get this file:

[https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-03/2names.txt](https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-03/2names.txt)





Then to run it:
```
$ python word_count.py
File Name
Key-Out-of-Time_by_Andre-Nortion.txt
...
```

Use a pipe to output to a file and turn in the output from running
your program.  It is important to note that when you run it this
way you will not get prompted for the file name!  The prompt
is sent to the file output.txt.  Just type in the file name
and then you should have the output.

```
$ python your-word-count.py >output.txt
Key-Out-of-Time_by_Andre-Nortion.txt
```

Turn in the python file for the lab.




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

