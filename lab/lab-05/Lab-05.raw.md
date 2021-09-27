

m4_include(./../../setup.m4)

# Lab 05 - String Operations on DNA / RNA

100pts each part (2 parts), 200 pts total.



1. Write a python function that will  
- Convert the input parameter to all lower case
- Change all the T's and t's to u's
- Return the converted string.

This is very close to the example in class.

Input Example: aaTggTaaa

Output Example:  aaugguaaa

Implements a test that verifies that this works.  Call the function `conv_t_to_u`
This program is an intermediate step.   We won't actually call this in the main program.
Put it into the file `conv_t_to_u.py`.

Use the `example-conv_t_to_u.py` as a starting point.  

Link on github.com: [https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-05/example-conv_t_to_u.py](https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-05/example-conv_t_to_u.py)


2. Implement a function that uses a dictionary to lookup the amino acid
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

Use the `example-rna_lookkup.py` as a starting point.    It has the dictionary in it
and some of the other code.  You will need to implement some test cases.  Look at
the previous code and copy, then modify the tests to be appropriate for this.

Link on github.com: [https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-05/example-rna_lookkup.py](https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-05/example-rna_lookkup.py)





3. Use the supplied main program that imports the functions from 1,2 and
calls them in order to produce the amino acid sequence.

Expected Output:

```
RYPQPARPPGSDLRRTVLRLQSTTEICAEDNAAPPSRCSPGLC
```


# Turn in

Your 2 functions with test code.















# Copyright

Copyright (C) University of Wyoming, 2021.
