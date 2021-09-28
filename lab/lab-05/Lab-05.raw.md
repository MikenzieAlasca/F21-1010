

m4_include(./../../setup.m4)

# Lab 05 - String Operations on DNA / RNA

100pts each part (2 parts), 200 pts total.


Amino Acid Coding Table

![Aminoacids_table.svg](./Aminoacids_table.svg)

## Part 1

Write a python function that will: 

1.  Convert the input parameter to all lower case
2.  Change all the t's to u's
3.  Return the converted string.

This is very close to the example in class.

Use the `example-conv_t_to_u.py` as a starting point.

Link on github.com: [https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-05/example-conv_t_to_u.py](https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-05/example-conv_t_to_u.py)

Input Example: aaTggTaaa

Output Example:  aaugguaaa

Implements a test that verifies that this works.  Call the function `conv_t_to_u`
Put it into the file `conv_t_to_u.py`.




## Part 2

Implement a function that uses a dictionary to lookup the amino acid
that corresponds to a set of 3 RNA letters.    The lookup takes in
a 3 letter codon string and returns a single letter amino acid.
If the three letter is not found then return '!'.

Example Input: "ccu" 

Example Output: "P"

For starts codons, "aug",  it returns 'M' for stop, "uaa", "uag", "uga" it returns '.'

Call the function `rna_to_amino_acid`.  Passing the 3 letter amino sequence.
Put this in the file `rna_lookup.py`.
Return the single letter coding for the amino acid as a string.

Use the `example-rna_lookkup.py` as a starting point.    It has the dictionary in it
and some of the other code.  You will need to implement some test cases.  Look at
the previous code and copy, then modify the tests to be appropriate for this.

Link on github.com: [https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-05/example-rna_lookkup.py](https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-05/example-rna_lookkup.py)





## Part 3

Run the supplied main program (link below) that imports the functions from Part 1 and Part 2 and
calls them in order to produce the amino acid sequence.

Expected Output:

```
RYPQPARPPGSDLRRTVLRLQSTTEICAEDNAAPPSRCSPGLC
```

Link on github.com: [https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-05/amino.py](https://github.com/Univ-Wyo-Education/F21-1010/blob/main/lab/lab-05/amino.py)




# Turn in

Your 2 functions with test code.















# Copyright

Copyright (C) University of Wyoming, 2021.
