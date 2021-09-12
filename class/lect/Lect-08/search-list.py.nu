  1: 
  2: def readNameList(fn):
  3:     f = open(fn,"r")
  4:     if f == None:
  5:         print ( f"Invalid file {fn} - failed to open" )
  6:         return None
  7:     dt = f.readlines()
  8:     f.close()
  9:     for i in range (len(dt)):
 10:         s = dt[i].rstrip()
 11:         dt[i] = s
 12:     return dt
 13: 
 14: phone_list = readNameList("50000phone.csv")
 15: 
 16: print ( "Enter a Name to Lookup" )
 17: lookFor = input()
 18: found = False
 19: for v in phone_list:
 20:     if lookFor in v:
 21:         found = True
 22:         print ( "Found {}".format(v) )
 23: if not found:
 24:     print ( "no names found" )
 25: 
