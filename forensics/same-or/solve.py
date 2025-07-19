with open("pool1.txt","r") as f1, open("pool2.txt","r") as f2:
	pool1 = f1.read().split(" ")
	pool2 = f2.read().split(" ")

flag = ""
for i in range(len(pool2)):
	if pool1[i] != pool2[i]:
		flag += pool2[i]

print(flag)