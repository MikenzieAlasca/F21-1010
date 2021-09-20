print ( "1 for single taxpayers. " )
print ( "2 for married taxpayers filing separately.  " )
print ( "3 for heads of households.  " )
print ( "4 for married taxpayers filing jointly. " )

maritul_status = input()

standard_decuction = 12550
if maritul_status == "1" :
    standard_decuction = 12550
elif maritul_status == "2" :
    standard_decuction = 12550
elif maritul_status == "3" :
    standard_decuction = 18800
elif maritul_status == "4" :
    standard_decuction = 25100
else:
    print ( "invalid input, should be 1, 2, 3, or 4" )

print ( "Standard Deduction = {}".format( standard_decuction ) )
