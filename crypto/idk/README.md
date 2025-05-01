## Description
Cryptography · Харуул Занги U18: 2023 · unknown
Solved: 22 · Score: 769
In a group skydiving session, one of the skydivers mysteriously disappears. The remaining members start to experience paranormal events and must unravel the nature of this supernatural force to fight for their lives.
https://www.youtube.com/watch?v=FJsEtCV2dMM

Files:

output.txt

## Solution
the video is irrelevent just the name hex 
use regex to extract all hex possible value then just convert to bytes

```py
import re

with open("output.txt", "r") as f:
    output = f.read()
f.close()

hex_chars = ''.join(re.findall(r'[0-9a-f]', output))
# Convert hex string to bytes
flag = bytes.fromhex(hex_chars)
print(flag.decode())

```

```
HZU18{h3x3d_3nhj0_b4d_b0y}
```