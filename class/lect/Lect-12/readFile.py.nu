  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: def readFile(fn):
  4: 
  5:     f = open(fn,"r",encoding="utf8")
  6:     if f == None:
  7:         print ( f"Invalid file {fn} - failed to open" )
  8:         return 
  9: 
 10:     line_no = 0
 11:     while True:
 12:         line_no = line_no + 1
 13:         line = f.readline()
 14:         if not line:
 15:             break
 16:         print("Line {}: {}".format(line_no, line.strip()))
 17: 
 18:     f.close()
 19: 
 20: readFile ( "sample.txt" )
