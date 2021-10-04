
def readGeneticData(fn):

    f = open(fn,"r",encoding="utf8")
    if f == None:
        print ( f"Invalid file {fn} - failed to open" )
        return None
    dt = f.readlines()
    f.close()
    for i in range (len(dt)):
        s = dt[i].rstrip()
        dt[i] = s

    return dt


# Automated Test
if __name__ == "__main__":
    n_err = 0

    got = readGeneticData("GCF_000001405.39_GRCh38.p41214_genomic.s44a-21.fna")
    if len(got) == 400000:
        n_err = n_err + 1
        print ( "Error: Test 1: file read error expected {} got {}".
                format (  expect[0], got[0] ) )

    if n_err == 0 :
        print ( "PASS" )
    else:
        print ( "FAILED" )

