lines = open("crypto_warmup.txt","r").readlines()

typeshi = []
for line in lines:
	typeshi.append(len(line))


deez = ""
for shi in typeshi:
	deez += chr(shi)

nut = deez.replace("/","-")
print(nut)