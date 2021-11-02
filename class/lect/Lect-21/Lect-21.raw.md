
m4_include(../../../setup.m4)

# Lecture 21 - More on Data Cleanup 

Let's take a close look at the code for data cleanup.

1. Input
2. Discarding nonexistent data. - The first cleanup step.
3. Fixing Columns of data.

0. Generating on-hot-encoding
0. Some Graphs
0. Saving data - Output

Your lab...
Add in some sections - add some graphs.

## Part 1 - read data.

```
m4_include(lab-09_input.py.nu)
```

## Part 2 - First cleanup.

Get rid of columns you don't need at all.  Get rid of missing data.

```
m4_include(lab-09_first_cleanup.py.nu)
```

## Part 3 - Second cleanup.

Get rid of Text in numeric fields.

```
m4_include(lab-09_text_in_fields.py.nu)
```

## Part 3 - Third cleanup.

Convert numbers, get rid of more missing data.


```
m4_include(lab-09_numbers_and_missing_data.py.nu)
```






## Your Code to start with for the lab.

```
m4_include(lab-09_start.py.nu)
```


