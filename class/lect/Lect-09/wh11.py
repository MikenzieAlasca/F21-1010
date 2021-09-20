# Example of why to use a "while" - reverse a string

vIn = "abcd"
vOut = ""
i = len(vIn)
while ( i > 0 ):
    i = i - 1
    vOut = vOut + vIn[i]

print ( "vOut = ->{}<-".format(vOut ) )
