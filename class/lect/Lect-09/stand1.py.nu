  1: print ( "1 for single taxpayers. " )
  2: print ( "2 for married taxpayers filing separately.  " )
  3: print ( "3 for heads of households.  " )
  4: print ( "4 for married taxpayers filing jointly. " )
  5: 
  6: maritul_status = input()
  7: 
  8: standard_decuction = 12550
  9: if maritul_status == "1" :
 10:     standard_decuction = 12550
 11: elif maritul_status == "2" :
 12:     standard_decuction = 12550
 13: elif maritul_status == "3" :
 14:     standard_decuction = 18800
 15: elif maritul_status == "4" :
 16:     standard_decuction = 25100
 17: else:
 18:     print ( "invalid input, should be 1, 2, 3, or 4" )
 19: 
 20: print ( "Standard Deduction = {}".format( standard_decuction ) )
