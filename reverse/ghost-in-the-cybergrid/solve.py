with open("secret.bin", "rb") as f:
    data = f.read()
f.close()

key = [0x13, 0x37, 0x56, 0x78]

flag = ""
for i in range(len(data)):
    flag += chr(data[i] ^ key[i % 4])

print(flag)
