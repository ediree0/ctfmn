import re

with open("output.txt", "r") as f:
    output = f.read()
f.close()

hex_chars = ''.join(re.findall(r'[0-9a-f]', output))
# Convert hex string to bytes
flag = bytes.fromhex(hex_chars)
print(flag.decode())

