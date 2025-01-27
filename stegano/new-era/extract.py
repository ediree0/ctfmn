l = []
with open('sustext.txt','r') as file:
	text = file.readline()
	for ch in text:
		l.append(str(ord(ch) % 2))

print(''.join(l))
