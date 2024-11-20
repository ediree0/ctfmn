from base64 import b64decode

for i in range(1,2):
	with open(f"flag_{i}.txt","r") as file:
		print(f"opened : file {i}")
		output = file.read()
		lines = [line.split(":")[1].strip() for line in output.splitlines()]
		try:
			for line in lines:
				flag=b64decode(line)
				print(flag)
		except:
			pass
	file.close()