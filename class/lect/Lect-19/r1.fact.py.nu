  1: #!/Users/pschlump/anaconda3/bin/python
  2: 
  3: def calc_factorial(x):
  4:     # A recursive function to find the factorial of a number
  5:     if x <= 1:
  6:         return 1
  7:     else:
  8:         return (x * calc_factorial(x-1))
  9: 
 10: if __name__ == "__main__": 
 11:     num = 5
 12:     print("The factorial of", num, "is", calc_factorial(num))        
 13: 
 14:     err = False
 15:     v = calc_factorial(num) 
 16:     if v != 120:
 17:         err = True
 18:         print ( "Incorrect result: {n}! Expected {good} got {bad}".format(n=num, good=120, bad=v))
 19: 
 20:     if not err :
 21:         print ( "PASS" )
 22:     else :
 23:         print ( "FAIL" )
 24: 
