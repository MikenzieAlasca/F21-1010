
ll = [ "abc", "def", "ghi" ]
lookFor = "def"

found = False
i = 0
while i < len(ll):
    if lookFor == ll[i]:
        print ( "Found at {}".format(i) )
        found = True
        break
    i = i + 1
if not found :
    print ( "Not Found" )

