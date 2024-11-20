# Complete Random Key Writup

source.py and output.txt
```python
import os
from secret import flag

def xor(x, y):
    result = []
    length = max(len(x), len(y))
    for i in range(length):
        result.append(x[i % len(x)] ^ y[i % len(y)])
    return bytes(result)

key = os.urandom(8)
with open('output.txt', 'w') as f:
    f.write(xor(flag, key).hex())
```
```
4728d7c027e2e172467dcafe2db3e8794b1df29038dcf3795a26ffd57fedee69
```
From looking at the source.py we know that the flag was encrypted with XOR encryption with an unknown key

XOR function is reverseble by just XOR-ing again also we know the flag format mazala{...}
With this information we can do a know text attack and figure out our encryption key
and get out flag :P

```python
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
```
```
mazala{fl4g_f0rmaT_1s_impoRt4nt}
```
