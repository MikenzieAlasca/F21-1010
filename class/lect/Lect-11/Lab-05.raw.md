

m4_include(../../../setup.m4)

# Lab 05 - String Operations

1. Write a python function that will  (this is very close to the example in class)

- Convert to all lower case
- Change all the T's and t's to u's

Input Example:

Output Example: 

Implements a test that verifies that this works.  Call the function `conv_t_to_u`
This program is an intermediate step.   We won't actually call this in the main program.
Put it into the file `conv_t_to_u.py`.

2. Write a function that will split a string up into successive 3 letter chunks.

Input Example: `"abcdefghi"` will produce

Output Example: `[ "abc", "bcd", "cde", ... "fgh", "ghi" ]`

Implements a test that checks that you are getting bck the correct list of
3 letter chunks.

Call the function `split_rna`
Put it into the file `split_into_3.py`


3. Implement a function that uses a dictionary to lookup the amino acid
that corresponds to a set of 3 RNA letters. 
This is to
verify that you have worked with code that splits into 3 letter 
groupings.

Example Input: "ccu" 

Example Example: "P"

For starts codons, "aug",  it returns 'M' for stop, "uaa", "uag", "uga" it returns '.'

Call the function `rna_to_amino_acid`.  Passing the 3 letter amino sequence.
Put this in the file `rna_lookup.py`.
Return the single letter coding for the amino acid as a string.


4. Use the supplied main program that imports the functions from 1,2 and
calls them in order to produce the amino acid sequence.

Expected Output:

```
RYPQPARPPGSDLRRTVLRLQSTTEICAEDNAAPPSRCSPGLC
```


# Turn in your 3 functions with test code.















# Copyright

Copyright (C) University of Wyoming, 2021.
