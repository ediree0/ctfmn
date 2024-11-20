import os
from binascii import unhexlify

def xor(x, y):
    result = []
    length = max(len(x), len(y))
    for i in range(length):
        result.append(x[i % len(x)] ^ y[i % len(y)])
    return bytes(result)

output = unhexlify("4728d7c027e2e172467dcafe2db3e8794b1df29038dcf3795a26ffd57fedee69")
formt = [ord(i) for i in "mazala{"]

key = xor(output[:7], formt) + chr(ord("}") ^ output[-1]).encode()
flag = xor(output, key).decode()
print(flag)