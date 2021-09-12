  1: 
  2: 
  3: import csv
  4: 
  5: # readNameListCSV opens 'fn' and reads the CSV file into a dictory.
  6: def readNameListCSV(fn):
  7: 
  8:     f = open(fn,"r")
  9:     if f == None:
 10:         print ( f"Invalid file {fn} - failed to open" )
 11:         return None
 12:     csvR = csv.reader(f)
 13:     dt = {}
 14:     for row in csvR:
 15:         dt[row[0]] = row[1]
 16:     f.close()
 17:     return dt
 18: 
 19: 
 20: # Automated Test
 21: if __name__ == "__main__":
 22:     n_err = 0
 23: 
 24:     got = readNameListCSV("2names.txt")
 25:     # print ( "got= {}".format(got))
 26:     expect = {
 27:         "Gunter, Dolly R":"(072) 123-4760",
 28:         "Polk, Hattie S":"(563) 404-0792"
 29:         }
 30:     if got["Polk, Hattie S"] != expect["Polk, Hattie S"]:
 31:         n_err = n_err + 1
 32:         print ( "Error: Test 1: file read error expected {} got {}".
 33:            format (  expect["Polk, Hattie S"], got["Polk, Hattie S"] ) )
 34: 
 35:     if n_err == 0 :
 36:         print ( "PASS" )
 37:     else:
 38:         print ( "FAILED" )
 39: 
