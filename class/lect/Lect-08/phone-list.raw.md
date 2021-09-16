

So... Let's search a bigger list.


```
m4_include(search-list.py.nu)
```

So... What is a .csv file - you can save them from excl or from programs like
numbers on a mac.   If you double-click on a .csv it will take you into a
spreadsheet.

Let's take a look in VI at the file.

CSV stands for comma separated value.  Usually values with commas in them
will need to be quoted.

It is very common for programs that need to produce structure data to 
output that data in CSV format.

For example the US Census has data in .csv format.

```
ID,STATE_CODE,STATE_NAME,CITY,COUNTY,LATITUDE,LONGITUDE
1,AK,Alaska,Adak,"Aleutians West",55.999722,-161.207778
2,AK,Alaska,Akiachak,Bethel,60.891854,-161.39233
3,AK,Alaska,Akiak,Bethel,60.890632,-161.199325
4,AK,Alaska,Akutan,"Aleutians East",54.143012,-165.785368
...
```

Notice in this data the first line is a "header" line.

Let's modify our read-file to read in CSV data.

```
m4_include(readNameListCSV.py.nu)
```

Let's read in a sample of the phone numbers
as a dictionary.

```
m4_include(read-phone5.py.nu)
```

And now use a dictionary to search it.

```
m4_include(search-dict.py.nu)
```

