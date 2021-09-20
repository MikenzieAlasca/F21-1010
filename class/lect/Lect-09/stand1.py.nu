  1:  
  2: print ( "1 for single taxpayers. " )
  3: print ( "2 for married taxpayers filing separately.  " )
  4: print ( "3 for heads of households.  " )
  5: print ( "4 for married taxpayers filing jointly. " )
  6: 
  7: maritul_status = input()
  8: 
  9: standard_decuction = 12550
 10: if maritul_status == "1" :
 11:     standard_decuction = 12550
 12: elif maritul_status == "2" :
 13:     standard_decuction = 12550
 14: elif maritul_status == "3" :
 15:     standard_decuction = 18800
 16: elif maritul_status == "4" :
 17:     standard_decuction = 25100
 18: else:
 19:     print ( "invalid input, should be 1, 2, 3, or 4" )
 20: 
 21: print ( "Standard Deduction = {}".format( standard_decuction ) )
 22: 
 23: 
