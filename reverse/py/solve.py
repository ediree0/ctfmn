zuv_arr = [247, 211, 219, 121, 251, 56, 255, 105, 158, 146, 93, 89, 89, 56, 186]

def transform(c):
    return (((ord(c) << 4) | (ord(c) >> 2)) ^ 101) & 0xFF

result = ""
for target in zuv_arr:
    for c in map(chr, range(32, 127)):  # printable ASCII range
        if transform(c) == target:
            print(c, end=" ")
    print()

# HZ{pyth0n_b3st}