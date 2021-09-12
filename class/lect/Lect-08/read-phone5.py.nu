  1: 
  2: from readNameListCSV import readNameListCSV
  3: 
  4: x = readNameListCSV("5-lines.phone.csv" )
  5: 
  6: for key in x:
  7:     print ( "name={}         phone={}".format(key,x[key]))
  8: 
