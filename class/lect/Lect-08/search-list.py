
def readNameList(fn):
    f = open(fn,"r")
    if f == None:
        print ( f"Invalid file {fn} - failed to open" )
        return None
    dt = f.readlines()
    f.close()
    for i in range (len(dt)):
        s = dt[i].rstrip()
        dt[i] = s
    return dt

phone_list = readNameList("50000phone.csv")

print ( "Enter a Name to Lookup" )
lookFor = input()
found = False
for v in phone_list:
    if lookFor in v:
        found = True
        print ( "Found {}".format(v) )
if not found:
    print ( "no names found" )

