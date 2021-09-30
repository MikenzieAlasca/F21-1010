s = "We The People, In order for form a more perfect union"

pos = s.index("The")
print ( "index of 'The' = {}".format(pos) )

pos = s.index("more")
print ( "index of 'more' = {}".format(pos) )

try:
    pos = s.index("xyz")
    print ( "index of 'xyz' = {}".format(pos) )
except:
    print ( "not found" )

