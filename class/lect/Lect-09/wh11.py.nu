  1: # Example of why to use a "while" - reverse a string
  2: 
  3: vIn = "abcd"
  4: vOut = ""
  5: i = len(vIn)
  6: while ( i > 0 ):
  7:     i = i - 1
  8:     vOut = vOut + vIn[i]
  9: 
 10: print ( "vOut = ->{}<-".format(vOut ) )
