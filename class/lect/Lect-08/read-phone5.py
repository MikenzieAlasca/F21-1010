
from readNameListCSV import readNameListCSV

x = readNameListCSV("5-lines.phone.csv" )

for key in x:
    print ( "name={}         phone={}".format(key,x[key]))

