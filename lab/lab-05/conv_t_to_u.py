#!/Users/philip/opt/anaconda3/bin/python

# Convert DNA's T to RNA's U for later use in the code.  Also convert all to lower case.

def conv_t_to_u(s) :
    s = s.lower()
    s = s.replace("t","u")
    return s

# Automated Test
if __name__ == "__main__":
    n_err = 0

    s = conv_t_to_u("atATGct")
    ex =  "auaugcu"
    if s != ex :
        n_err = n_err + 1
        print ( "Error: Test 1: conversion not working, expected {} got {}".format ( ex, s ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

