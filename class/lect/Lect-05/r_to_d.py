
# r_to_d converts from radius as an integer or float to diameter.  
def r_to_d ( radius ):
    if radius < 0:
        radius = -radius
    print ( "in function radius= ->{}<-".format(radius) )
    diameter = radius * 2
    print ( "in function diameter= ->{}<-".format(diameter) )
    return (diameter)

# Automated Test
if __name__ == "__main__":
    n_err = 0
    r = 2
    print ( "in test radious={}".format(r) ) 
    x = r_to_d ( r )
    if x !=  4:
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".format (  4, x ) )
    r = -2
    x = r_to_d ( r )
    if x !=  4:
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".format (  4, x ) )
    x = r_to_d ( 0 )
    if x != 0:
        n_err = n_err + 1
        print ( "Error: Test 2: conversion not working, expected {} got {}".format ( 0, x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

