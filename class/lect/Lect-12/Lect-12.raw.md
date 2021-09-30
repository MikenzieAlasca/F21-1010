
m4_include(../../../setup.m4)

# Lecture 12 - Files and Reading Files

## First - Searching Strings

How to find one string inside another.

```
m4_include(search1.py.nu)
```

This introduces "exception" handling.


## Search in a list

```
m4_include(search2.py.nu)
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
m4_include(sample.txt)
```

Files are composed of "lines".  Each line has an end of line marker.

```
m4_include(readFile.py.nu)
```

## Writing a File

Create and write to a file

```
m4_include(write1.py.nu)
```

You can also just add to an existing file.

```
m4_include(write2.py.nu)
```



## What are Dropbox, OneDrive 



