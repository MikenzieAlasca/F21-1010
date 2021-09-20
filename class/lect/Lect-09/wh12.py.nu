  1: # Example of why to use a "while" - reverse a string
  2: 
  3: vIn = "abcd"
  4: vOut = ""
  5: i = len(vIn)-1
  6: while ( i >= 0 ):
  7:     vOut = vOut + vIn[i]
  8:     i = i - 1
  9: 
 10: print ( "vOut = ->{}<-".format(vOut ) )
