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
