
# Convert from light years to miles

import ly_to_miles

print ( "Enter Light Years" )

ly_str = input()
ly = int(ly_str)

mi = ly_to_miles.ly_to_miles(ly)

print ( "mi = {}".format(mi) )
