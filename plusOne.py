import sys, random
try:
    number = int(sys.argv[1])
except ValueError:
    raise SystemExit("Error: Input is not an integer")
except IndexError:
    raise SystemExit("Error: No input")

if number < 0:
    neg = True
    number = 0 - number
else:
    neg = False

number = [int(x) for x in str(number)]
if neg:
    number[0] = 0 - number[0]

ops = [random.choice(["+","-","*","/"]) for x in range(len(number)-1)]

operation = [number[0]]

for i in range(len(ops)):
    if number[i+1] == 0 and ops[i] == "/":
        operation.append(random.choice(["+","-","*"]))
    else:
        operation.append(ops[i])
    operation.append(number[i+1])

operation = "".join([str(x) for x in operation])
print(operation)
print(eval(operation))
#I know, I know, this 'eval' pisses me off, just as much as it pisses you off
