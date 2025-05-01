## Description
Cryptography · Харуул Занги U18: 2017 · unknown
Solved: 32 · Score: 504
Flag format: HZU18{***}

Files:

cipher
readme

## Solution

```python
with open ("cipher", "r") as f:
    cipher = f.read()
f.close()

cipher = cipher.split("\n")
temp = cipher
cipher = []
for i in temp:
    duo = i.split(", ")
    if len(duo) < 2:
        continue
    cipher.append([int(duo[0]), int(duo[1])])

with open ("readme", "r") as f:
    readme = f.read().strip()
f.close()

readme = readme.split("\n")

for i in range(len(cipher)):
    print(readme[cipher[i][0]-1][cipher[i][1]-1], end="")
```

cipher is coordinates for the letters in the flag

```
flag is Wow_How_much_time_did_you_spend_?_Anyway_you_are_good.
```

