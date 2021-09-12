
# ly_to_miles converts from miles as an integer or float to kilometers.  
def ly_to_miles ( ly ):
    conv = 5_878_625_352_016_794
    mi = ly * conv
    return (mi)

# Automated Test
if __name__ == "__main__":
    n_err = 0
    x = ly_to_miles ( 3 )
    if x != 17635876056050382:
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".format ( 17635876056050382, x ) )
    x = ly_to_miles ( 0 )
    if x != 0:
        n_err = n_err + 1
        print ( "Error: Test 2: conversion not working, expected {} got {}".format ( 0, x ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

