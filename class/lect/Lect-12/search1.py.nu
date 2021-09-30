  1: s = "We The People, In order for form a more perfect union"
  2: 
  3: pos = s.index("The")
  4: print ( "index of 'The' = {}".format(pos) )
  5: 
  6: pos = s.index("more")
  7: print ( "index of 'more' = {}".format(pos) )
  8: 
  9: try:
 10:     pos = s.index("xyz")
 11:     print ( "index of 'xyz' = {}".format(pos) )
 12: except:
 13:     print ( "not found" )
 14: 
