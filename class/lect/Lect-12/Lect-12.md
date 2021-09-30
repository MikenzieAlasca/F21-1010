














# Lecture 12 - More on Strings, Files Reading and Writing

## First - Searching Strings

How to find one string inside another.

```
  1: s = "We The People, In order for form a more perfect union"
  2: 
  3: pos = s.index("The")
  4: print ( "index of 'The' = {}".format(pos) )
  5: 
  6: pos = s.index("more")
  7: print ( "index of 'more' = {}".format(pos) )
  8: 
  9: try:
 10:     pos = s.index("xyz")
 11:     print ( "index of 'xyz' = {}".format(pos) )
 12: except:
 13:     print ( "not found" )
 14: 

```

This introduces "exception" handling.


## Search in a list

```
  1: 
  2: ll = [ "abc", "def", "ghi" ]
  3: lookFor = "def"
  4: 
  5: found = False
  6: i = 0
  7: while i < len(ll):
  8:     if lookFor == ll[i]:
  9:         print ( "Found at {}".format(i) )
 10:         found = True
 11:         break
 12:     i = i + 1
 13: if not found :
 14:     print ( "Not Found" )
 15: 

```


## Files - what are they

Two types: text and binary

Binary tend to be in some proprietary format.

Text tend to have a "format" that you can use and write programs with.

Lot's of text formats:

1. Our Python Programs
2. Other Programs
3. "markdown"
4. "html"
5. "css"
6. "js"

What about common binary image formats

1. Images ( .png, .jpg )
2. Some images are not binary (.svg)
3. Movies ( .mp4, .mkv )

Where are they:

1. On your local computer.
2. On a remote computer. (dropbox, onedrive)

How are they organized.

1. A hierarchy - Directory Tree
2. By Name

## Reading a File

First we need a file to read:

```
This is
a short
file of
text

```

Files are composed of "lines".  Each line has an end of line marker.

```
  1: def readFile(fn):
  2:     f = open(fn,"r",encoding="utf8")
  3:     if f == None:
  4:         print ( f"Invalid file {fn} - failed to open" )
  5:         return 
  6: 
  7:     line_no = 0
  8:     while True:
  9:         line_no = line_no + 1
 10:         line = f.readline()
 11:         if not line:
 12:             break
 13:         print("Line {}: {}".format(line_no, line.strip()))
 14: 
 15:     f.close()
 16: 
 17: readFile ( "sample.txt" )

```

## Writing a File

Create and write to a file

```
  1: 
  2: f = open("sample.out.txt", "w")
  3: f.write("some data")
  4: f.write("some more")
  5: f.close()

```

You can also just add to an existing file.

```
  1: f = open("sample.out.txt", "a")
  2: f.write("Yes data")
  3: f.write("Yes more data")
  4: f.close()

```



## What are Dropbox, OneDrive 



