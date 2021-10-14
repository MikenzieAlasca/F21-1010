  1: class Person:
  2:   def __init__(self, fname, lname):
  3:     self.firstname = fname
  4:     self.lastname = lname
  5: 
  6:   def printname(self):
  7:     print(self.firstname, self.lastname)
  8: 
  9: class Student(Person):
 10:   def __init__(self, fname, lname, year):
 11:     super().__init__(fname, lname)
 12:     self.graduationyear = year
 13: 
 14: x = Student("Philip", "Schlump", 1989)
 15: print(x.graduationyear)
 16: 
