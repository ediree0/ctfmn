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