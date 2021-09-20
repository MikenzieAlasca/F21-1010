

# Example of why to use a "while" - reverse a string

vIn = "abcd"
vOut = ""
i = len(vIn)-1
while ( i >= 0 ):
    vOut = vOut + vIn[i]
    i = i - 1

print ( "vOut = ->{}<-".format(vOut ) )

