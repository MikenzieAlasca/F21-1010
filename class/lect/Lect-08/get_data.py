
import sqlite3

sqlite3.connect("lect-08.db")

c1 = db.cursor()
x1 = c1.execute ( "select * from phone_numbers" )
d1 = x1.fetchall()
print ( d1 )

