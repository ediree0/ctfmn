import re

with open("numbers.log","r") as f:
	lines = f.readlines()
f.close()

lines = sorted(lines)

sus=""
pattern = re.compile(r'(?:GET|POST|PUT|DELETE|HEAD|OPTIONS)\s+(/[^ ]*)')

for i in lines:
	match = pattern.search(i)
	if match:
		sus+= match.group(1)[-1]

print(sus)
