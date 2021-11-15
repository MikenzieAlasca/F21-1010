  1: 
  2: import readGeneticData 
  3: 
  4: filepath = 'GCF_000001405.39_GRCh38.p41214_genomic.s44a-21.fna'
  5: 
  6: data = readGeneticData.readGeneticData (filepath)
  7: pattern = 'ACTGGCTGGCCTAGTGACTTCCAGCTGCACAGCTATCGACCCAGGGCTGGACAGCCCCTGCCTGGC'
  8: 
  9: data_str = "".join(data)
 10: data_str = data_str.upper()
 11: 
 12: try:
 13:     x = data_str.index ( pattern )
 14:     print ( "Pattern Found at {}".format( x ))
 15: except:
 16:     print ( "Not Found" )
 17: 
 18: 
