#!/Users/philip/opt/anaconda3/bin/python

def readFile(fn):
    f = open(fn,"r",encoding="utf8")
    if f == None:
        print ( f"Invalid file {fn} - failed to open" )
        return 

    line_no = 0
    while True:
        line_no = line_no + 1
        line = f.readline()
        if not line:
            break
        print("Line {}: {}".format(line_no, line.strip()))

    f.close()

readFile ( "sample.txt" )
