
print ( "What is your per year income" )
income_str = input()
income = float(income_str)

print ( "1 for single taxpayers. " )
print ( "2 for married taxpayers filing separately.  " )
print ( "3 for heads of households.  " )
print ( "4 for married taxpayers filing jointly. " )

maritul_status = input()


#| Amount  | Description                          |
#|---------|--------------------------------------|
#| $12,550 | single taxpayers.                    |
#| $12,550 | married taxpayers filing separately. |
#| $18,800 | heads of households.                 |
#| $25,100 | married taxpayers filing jointly.    |

tax = 0
standard_decuction = 12550

if maritul_status == "1" or maritul_status == "2" : # Single, Married File Separately
    standard_decuction = 12550
    income = income - standard_decuction 

    tax = (10/100) * income
    if income >= 9951:
        tax = tax + (2/100) * ( income - 14200 )
    if income >= 40526:
        tax = tax + (10/100) * ( income - 54200 )
    if income >= 86376:
        tax = tax + (2/100) * ( income - 86350 )
    if income >= 164926: 
        tax = tax + (10/100) * ( income - 164925 )
    if income >= 209426:
        tax = tax + (3/100) * ( income - 209425 )
    if income >= 523601:
        tax = tax + (2/100) * ( income - 523600 )

elif maritul_status == "3" :        # Head of Household
    standard_decuction = 18800

    income = income - standard_decuction 

    tax = (10/100) * income
    if income >= 14201:
        tax = tax + (2/100) * (income - 14200)
    if income >= 54201:
        tax = tax + (10/100) * (income - 54200)
    if income >= 86351:
        tax = tax + (2/100) * (income - 86350)
    if income >= 164901: 
        tax = tax + (10/100) * (income - 164900) 
    if income >= 209401:
        tax = tax + (3/100) * (income - 209400)
    if income >= 523601:
        tax = tax + (2/100) * (income - 523501)

elif maritul_status == "4" :
    standard_decuction = 25100

    income = income - standard_decuction 

    tax = (10/100) * income
    if income >= 14201:
        tax = tax + (2/100) * (income - 14200)
    if income >= 54201:
        tax = tax + (10/100) * (income - 54200)
    if income >= 86351:
        tax = tax + (2/100) * (income - 86350)
    if income >= 164901: 
        tax = tax + (10/100) * (income - 164900) 
    if income >= 209401:
        tax = tax + (3/100) * (income - 209400)
    if income >= 523601:
        tax = tax + (2/100) * (income - 523501)

else:
    print ( "invalid input, should be 1, 2, 3, or 4" )

print ( "Standard Deduction = {}".format( standard_decuction ) )




print ( "total tax for the year = {:.2f}".format(tax) )

print ( "What is monthly witholding" )
withold_str = input()
withold = float(withold_str)

owe = tax - ( 12 * withold )
if owe < 0 :
    print ( "You get a tax refund of {:.2f}".format(-owe) )
elif owe == 0:
    print ( "You don't owe any and you don't get a refund" )
elif owe > 0:
    print ( "Send the IRS: {:.2f}".format(owe) )

        
