  1: #!/Users/pschlump/anaconda3/bin/python
  2: 
  3: def factorial_iterative(x):
  4:     if x <= 1:
  5:         return 1
  6:     nn = 2
  7:     rv = 1
  8:     while ( nn <= x ):
  9:         rv = rv * nn
 10:     return rv
 11: 
 12: if __name__ == "__main__": 
 13:     num = 5
 14:     print("The factorial of", num, "is", factorial_iterative(num))        
 15: 
 16:     err = False
 17:     v = factorial_iterative(num) 
 18:     if v != 120:
 19:         err = True
 20:         print ( "Incorrect result: {n}! Expected {good} got {bad}".format(n=num, good=120, bad=v))
 21: 
 22:     if not err :
 23:         print ( "PASS" )
 24:     else :
 25:         print ( "FAIL" )
 26: 
