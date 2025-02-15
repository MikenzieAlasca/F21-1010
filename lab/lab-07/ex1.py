
class Name:
	def __init__(self, name):
		self.name = name

	def printName(self):
		print ( "Name is: {}".format(self.name) )

	def reverseMyName(self):
		i = len(self.name)-1
		s = ""
		while i >= 0:
			s = s + self.name[i]
			i = i - 1
		return s

# Automated Test
if __name__ == "__main__":
	n_err = 0
	myName = Name("Philip")			# Create Instance of Class
	x = myName.reverseMyName()		# Call Method
	if x != "pilihP":				# Validate results of Call
		n_err = n_err + 1
		print ( "Error: Test 1: Name not working, expected {} got {}".format (  'pilihP', x ) )

	if n_err == 0 :
		print ( "PASS" )
	else:
		print ( "FAILED" )
