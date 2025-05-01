## Description
Reverse Engineering · MUST CTF: 2024 · Bekkaze
Solved: 21 · Score: 790
In the neon-lit sprawl of Night City, an invisible netrunner known as Specter has hidden a secret deep within the datastreams. To reveal it, you must decipher his wisdom and see through the invisible layers of the digital world.

Files:

Specters_encoder
secret.bin

## Solution
Hard coded key and just xor

```py
with open("secret.bin", "rb") as f:
    data = f.read()
f.close()

key = [0x13, 0x37, 0x56, 0x78]

flag = ""
for i in range(len(data)):
    flag += chr(data[i] ^ key[i % 4])

print(flag)
```
