  1: 
  2: def readNameList(fn):
  3: 
  4:     f = open(fn,"r")
  5:     if f == None:
  6:         print ( f"Invalid file {fn} - failed to open" )
  7:         return None
  8:     dt = f.readlines()
  9:     f.close()
 10:     for i in range (len(dt)):
 11:         s = dt[i].rstrip()
 12:         dt[i] = s
 13: 
 14:     return dt
 15: 
 16: 
 17: # Automated Test
 18: if __name__ == "__main__":
 19:     n_err = 0
 20: 
 21:     got = readNameList("2names.txt")
 22:     expect = [
 23:         "\"Gunter, Dolly R\",(072) 123-4760",
 24:         "\"Polk, Hattie S\",(563) 404-0792"
 25:         ]
 26:     if got[0] != expect[0]:
 27:         n_err = n_err + 1
 28:         print ( "Error: Test 1: file read error expected {} got {}".
 29:                 format (  expect[0], got[0] ) )
 30:     if got[1] != expect[1]:
 31:         n_err = n_err + 1
 32:         print ( "Error: Test 2: file read error expected {} got {}".
 33:                 format (  expect[1], got[1] ) )
 34: 
 35:     if n_err == 0 :
 36:         print ( "PASS" )
 37:     else:
 38:         print ( "FAILED" )
 39: 
