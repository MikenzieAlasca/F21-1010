  1: 
  2: 
  3: # Example of why to use a "while" - reverse a string
  4: 
  5: vIn = "abcd"
  6: vOut = ""
  7: i = len(vIn)-1
  8: while ( i >= 0 ):
  9:     vOut = vOut + vIn[i]
 10:     i = i - 1
 11: 
 12: print ( "vOut = ->{}<-".format(vOut ) )
 13: 
