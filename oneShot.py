import os
print("THIS RUNS!")
with open(os.path.realpath(__file__), 'w') as p:
	p.write("But THIS won't!\n")
