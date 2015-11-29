f = open("sig_in_binary.txt", "r")
g = open("sig_encoded_in_spaces_and_tabs.txt", "w")
for char in f.readline():
	if char == '0':
		g.write("\t")
	elif char == '1':
		g.write(" ")
		
