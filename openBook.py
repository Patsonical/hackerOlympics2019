import os
with open(os.path.realpath(__file__)) as p:
	for line in p:
		print(line, end="")
