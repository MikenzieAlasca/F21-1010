  1: 
  2: # 5g + 17m = 30.5
  3: # 8g + 22m = 41
  4: 
  5: # Can be solved in NumPy using
  6: import numpy as np
  7: 
  8: coeffs  = np.array([[5, 17], [8, 22]])
  9: depvars = np.array([30.5, 41])
 10: solution = np.linalg.solve(coeffs, depvars)
 11: 
 12: # solution
 13: print ( solution )
 14: # array([1, 1.5])
 15: # means g=1, m=1.5 or 1 gallon per hour for generator,
 16: # 1.5 gallon per hour for main moter
