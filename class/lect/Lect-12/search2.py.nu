  1: 
  2: ll = [ "abc", "def", "ghi" ]
  3: lookFor = "def"
  4: 
  5: found = False
  6: i = 0
  7: while i < len(ll):
  8:     if lookFor == ll[i]:
  9:         print ( "Found at {}".format(i) )
 10:         found = True
 11:         break
 12:     i = i + 1
 13: if not found :
 14:     print ( "Not Found" )
 15: 
