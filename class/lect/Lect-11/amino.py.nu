  1: 
  2: import conv_t_to_u
  3: import rna_lookup
  4: 
  5: dna_input = [
  6: "taaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaacccta",
  7: "accctaaccctaaccctaaccctaacccaaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccctaac",
  8: "cctaaccctaaccctaacctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccc",
  9: "taaccctaaaccctaaaccctaaccctaaccctaaccctaaccctaaccccaaccccaaccccaaccccaaccccaaccc",
 10: "caaccctaacccctaaccctaaccctaaccctaccctaaccctaaccctaaccctaaccctaaccctaacccctaacccc",
 11: "taaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccctaaccctaaccctaacccaugCGGTACCCTC",
 12: "AGCCGGCCCGCCCGCCCGGGTCTGACCTGAGGAGAACTGTGCTCCGCCTTCAGAGTACCACCGAAATCTGTGCAGAGGAc",
 13: "aacgcagctccgccctcgcggtGCTCtccgggtctgtgctgaggagaacgCAACTCCGCCGTTGCAAAGGCGcgccgcgc",
 14: "cggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcagagaggcgUGAcgcgccggcgcaggcgcagagaggcgc",
 15: "gccgcgccggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcagagaggcgcgccgcgccggcgcaggcgcaga",
 16: ]
 17: 
 18: amino_string = ""
 19: 
 20: rna = conv_t_to_u.conv_t_to_u ( "".join(dna_input) )
 21: 
 22: st = "before"
 23: i = 0
 24: while i < len(rna)-2:
 25:     three = rna[i:i+3]
 26:     # print ( "st {} three >{}< at i={}".format(st, three,i)) 
 27:     amino = rna_lookup.rna_to_amino_acid(three)
 28:     if amino == '!' :
 29:         print ( "Invalid 3 letter sequence {} at {}".format(three, i ) )
 30:         break
 31:     if st == "before" and amino == "M" :
 32:         st = "encode"
 33:         i = i + 3
 34:     elif st == "encode" and amino == ".":
 35:         st = "before"
 36:         print ("Protein String: ", amino_string)
 37:         i = i + 3
 38:     elif st == "encode" :
 39:         amino_string = amino_string + amino
 40:         i = i + 3
 41:     else:
 42:         i = i + 1
 43: 
