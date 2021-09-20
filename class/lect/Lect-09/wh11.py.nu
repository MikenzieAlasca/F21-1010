  1: 
  2: # Example of why to use a "while" - reverse a string
  3: 
  4: vIn = "abcd"
  5: vOut = ""
  6: i = len(vIn)
  7: while ( i > 0 ):
  8:     i = i - 1
  9:     vOut = vOut + vIn[i]
 10: 
 11: print ( "vOut = ->{}<-".format(vOut ) )
 12: 
