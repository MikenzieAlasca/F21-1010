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
 21: standard_decuction = 12550
 22: if maritul_status == "1" :
 23:     standard_decuction = 12550
 24: elif maritul_status == "2" :
 25:     standard_decuction = 12550
 26: elif maritul_status == "3" :
 27:     standard_decuction = 18800
 28: elif maritul_status == "4" :
 29:     standard_decuction = 25100
 30: else:
 31:     print ( "invalid input, should be 1, 2, 3, or 4" )
 32: 
 33: print ( "Standard Deduction = {}".format( standard_decuction ) )
 34: 
 35: income = income - standard_decuction 
 36: 
 37: if income < 0:
 38:     print ( "Taxable Income = 0" )
 39: else:
 40:     print ( "Taxable Income = {}".format ( income ) )
 41: 
 42: 
 43: 
 44: #| Tax Rate | Taxable Income Bracket | Tax Owed                                    |
 45: #|----------|------------------------|---------------------------------------------|
 46: #| 10%      | $0 to $14,200          | 10% of taxable income                       |
 47: #| 12%      |  $14,201 to $54,200    | $1,420 plus 12% of the amount over $14,200  |
 48: #| 22%      |  $54,201 to $86,350    | $6,220 plus 22% of the amount over $54,200  |
 49: #| 24%      |  $86,351 to $164,900   | $13,293 plus 24% of the amount over $86,350 |
 50: 
 51: tax = 0
 52: if income >= 0 and income <= 14200:
 53:     tax = (10/100) * income
 54: 
 55: if income >= 14201 and income <= 54200:
 56:     tax = (10/100) * 14200
 57:     tmp = income - 14200
 58: 
 59:     tax = tax + (12/100) * tmp
 60: 
 61: if income >= 54201 and income <= 86350:
 62:     tax = (10/100) * 14200
 63:     tax = tax + (12/100) * ( 54200 - 14200 )
 64: 
 65:     tmp = income - 54201
 66:     tax = tax + (22/100) * tmp
 67: 
 68: if income >= 86350 and income <= 164900: 
 69:     tax = (10/100) * 14200
 70:     tax = tax + (12/100) * ( 54200 - 14200 )
 71:     tax = tax + (22/100) * ( 54200 - 14200 )
 72: 
 73:     tmp = income - 86350
 74:     tax = tax + (24/100) * tmp
 75: 
 76: print ( "total tax for the year = {:.2f}".format(tax) )
 77: 
 78: print ( "What is monthly witholding" )
 79: withold_str = input()
 80: withold = float(withold_str)
 81: 
 82: owe = tax - ( 12 * withold )
 83: if owe < 0 :
 84:     print ( "You get a tax refund of {:.2f}".format(-owe) )
 85: elif owe == 0:
 86:     print ( "You don't owe any and you don't get a refund" )
 87: elif owe > 0:
 88:     print ( "Send the IRS: {:.2f}".format(owe) )
 89: 
 90:         
