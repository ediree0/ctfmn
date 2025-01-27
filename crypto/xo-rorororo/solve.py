from base64 import b64decode

with open('data.txt','r') as file:
	data = file.readline()
	file.close()

print(b64decode(data).decode())
