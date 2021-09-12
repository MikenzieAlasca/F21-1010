  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: from readNameListCSV import readNameListCSV
  4: 
  5: phone_list = readNameListCSV("50000phone.csv")
  6: 
  7: print ( "Enter a Name to Lookup\n=> ", end="" )
  8: lookFor = input()
  9: 
 10: if lookFor in phone_list:
 11:     print ( "Found {}".format(phone_list[lookFor]) )
 12: else:
 13:     print ( "{} not found".format(lookFor) )
 14: 
