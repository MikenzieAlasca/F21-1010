  1: 
  2: print ( "What is your per year income" )
  3: income_str = input()
  4: income = float(income_str)
  5: 
  6: print ( "1 for single taxpayers. " )
  7: print ( "2 for married taxpayers filing separately.  " )
  8: print ( "3 for heads of households.  " )
  9: print ( "4 for married taxpayers filing jointly. " )
 10: 
 11: maritul_status = input()
 12: 
 13: 
 14: #| Amount  | Description                          |
 15: #|---------|--------------------------------------|
 16: #| $12,550 | single taxpayers.                    |
 17: #| $12,550 | married taxpayers filing separately. |
 18: #| $18,800 | heads of households.                 |
 19: #| $25,100 | married taxpayers filing jointly.    |
 20: 
 21: tax = 0
 22: standard_decuction = 12550
 23: 
 24: if maritul_status == "1" or maritul_status == "2" : # Single, Married File Separately
 25:     standard_decuction = 12550
 26:     income = income - standard_decuction 
 27: 
 28:     tax = (10/100) * income
 29:     if income >= 9951:
 30:         tax = tax + (2/100) * ( income - 14200 )
 31:     if income >= 40526:
 32:         tax = tax + (10/100) * ( income - 54200 )
 33:     if income >= 86376:
 34:         tax = tax + (2/100) * ( income - 86350 )
 35:     if income >= 164926: 
 36:         tax = tax + (10/100) * ( income - 164925 )
 37:     if income >= 209426:
 38:         tax = tax + (3/100) * ( income - 209425 )
 39:     if income >= 523601:
 40:         tax = tax + (2/100) * ( income - 523600 )
 41: 
 42: elif maritul_status == "3" :        # Head of Household
 43:     standard_decuction = 18800
 44: 
 45:     income = income - standard_decuction 
 46: 
 47:     tax = (10/100) * income
 48:     if income >= 14201:
 49:         tax = tax + (2/100) * (income - 14200)
 50:     if income >= 54201:
 51:         tax = tax + (10/100) * (income - 54200)
 52:     if income >= 86351:
 53:         tax = tax + (2/100) * (income - 86350)
 54:     if income >= 164901: 
 55:         tax = tax + (10/100) * (income - 164900) 
 56:     if income >= 209401:
 57:         tax = tax + (3/100) * (income - 209400)
 58:     if income >= 523601:
 59:         tax = tax + (2/100) * (income - 523501)
 60: 
 61: elif maritul_status == "4" :
 62:     standard_decuction = 25100
 63: 
 64:     income = income - standard_decuction 
 65: 
 66:     tax = (10/100) * income
 67:     if income >= 14201:
 68:         tax = tax + (2/100) * (income - 14200)
 69:     if income >= 54201:
 70:         tax = tax + (10/100) * (income - 54200)
 71:     if income >= 86351:
 72:         tax = tax + (2/100) * (income - 86350)
 73:     if income >= 164901: 
 74:         tax = tax + (10/100) * (income - 164900) 
 75:     if income >= 209401:
 76:         tax = tax + (3/100) * (income - 209400)
 77:     if income >= 523601:
 78:         tax = tax + (2/100) * (income - 523501)
 79: 
 80: else:
 81:     print ( "invalid input, should be 1, 2, 3, or 4" )
 82: 
 83: print ( "Standard Deduction = {}".format( standard_decuction ) )
 84: 
 85: 
 86: 
 87: 
 88: print ( "total tax for the year = {:.2f}".format(tax) )
 89: 
 90: print ( "What is monthly witholding" )
 91: withold_str = input()
 92: withold = float(withold_str)
 93: 
 94: owe = tax - ( 12 * withold )
 95: if owe < 0 :
 96:     print ( "You get a tax refund of {:.2f}".format(-owe) )
 97: elif owe == 0:
 98:     print ( "You don't owe any and you don't get a refund" )
 99: elif owe > 0:
100:     print ( "Send the IRS: {:.2f}".format(owe) )
101: 
102:         
