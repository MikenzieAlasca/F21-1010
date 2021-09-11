  1: 
  2: import sqlite3
  3: 
  4: sqlite3.connect("lect-08.db")
  5: 
  6: c1 = db.cursor()
  7: x1 = c1.execute ( "select * from phone_numbers" )
  8: d1 = x1.fetchall()
  9: print ( d1 )
 10: 
