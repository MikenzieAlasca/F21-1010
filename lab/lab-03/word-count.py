#!/Users/philip/opt/anaconda3/bin/python

from readNameList import readNameList

def main():

    print ( "Enter File Name\n=> ", end="" )
    fn = input()
    # read in file to a list of lines
    data = readNameList(fn)

    nwords, lines = 0, 0

    for line in data:

        lines += 1

        # Split line up into a set of words
        words = line.split()

        for word in words:

            nwords += 1

    print ( "Words: {}".format(nwords) )
    print ( "Lines: {}".format(lines) )

if __name__ == "__main__":
    main()

