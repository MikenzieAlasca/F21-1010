  1: print ( "What is your per year income" )
  2: income_str = input()
  3: income = float(income_str)
  4: 
  5: print ( "1 for single taxpayers. " )
  6: print ( "2 for married taxpayers filing separately.  " )
  7: print ( "3 for heads of households.  " )
  8: print ( "4 for married taxpayers filing jointly. " )
  9: 
 10: maritul_status = input()
 11: 
 12: tax = 0
 13: standard_decuction = 12550
 14: 
 15: if maritul_status == "1" or maritul_status == "2" : # Single, Married File Separately
 16:     standard_decuction = 12550
 17:     income = income - standard_decuction 
 18: 
 19:     tax = (10/100) * income
 20:     if income >= 9951:
 21:         tax = tax + (2/100) * ( income - 14200 )
 22:     if income >= 40526:
 23:         tax = tax + (10/100) * ( income - 54200 )
 24:     if income >= 86376:
 25:         tax = tax + (2/100) * ( income - 86350 )
 26:     if income >= 164926: 
 27:         tax = tax + (10/100) * ( income - 164925 )
 28:     if income >= 209426:
 29:         tax = tax + (3/100) * ( income - 209425 )
 30:     if income >= 523601:
 31:         tax = tax + (2/100) * ( income - 523600 )
 32: 
 33: 
 34: 
 35: 
 36: 
 37: elif maritul_status == "3" :        # Head of Household
 38:     standard_decuction = 18800
 39: 
 40:     income = income - standard_decuction 
 41: 
 42:     tax = (10/100) * income
 43:     if income >= 14201:
 44:         tax = tax + (2/100) * (income - 14200)
 45:     if income >= 54201:
 46:         tax = tax + (10/100) * (income - 54200)
 47:     if income >= 86351:
 48:         tax = tax + (2/100) * (income - 86350)
 49:     if income >= 164901: 
 50:         tax = tax + (10/100) * (income - 164900) 
 51:     if income >= 209401:
 52:         tax = tax + (3/100) * (income - 209400)
 53:     if income >= 523601:
 54:         tax = tax + (2/100) * (income - 523501)
 55: 
 56: elif maritul_status == "4" :
 57:     standard_decuction = 25100
 58: 
 59:     income = income - standard_decuction 
 60: 
 61:     tax = (10/100) * income
 62:     if income >= 14201:
 63:         tax = tax + (2/100) * (income - 14200)
 64:     if income >= 54201:
 65:         tax = tax + (10/100) * (income - 54200)
 66:     if income >= 86351:
 67:         tax = tax + (2/100) * (income - 86350)
 68:     if income >= 164901: 
 69:         tax = tax + (10/100) * (income - 164900) 
 70:     if income >= 209401:
 71:         tax = tax + (3/100) * (income - 209400)
 72:     if income >= 523601:
 73:         tax = tax + (2/100) * (income - 523501)
 74: 
 75: else:
 76:     print ( "invalid input, should be 1, 2, 3, or 4" )
 77: 
 78: print ( "Standard Deduction = {}".format( standard_decuction ) )
 79: 
 80: print ( "total tax for the year = {:.2f}".format(tax) )
 81: 
 82: print ( "What is monthly witholding" )
 83: withold_str = input()
 84: withold = float(withold_str)
 85: 
 86: 
 87: 
 88: owe = tax - ( 12 * withold )
 89: if owe < 0 :
 90:     print ( "You get a tax refund of {:.2f}".format(-owe) )
 91: elif owe == 0:
 92:     print ( "You don't owe any and you don't get a refund" )
 93: elif owe > 0:
 94:     print ( "Send the IRS: {:.2f}".format(owe) )
