from pwn import xor

# Read the encrypted file
with open('output.txt', 'rb') as f:
    enc = f.read()

# Calculate the split lengths
len_flag = len(enc)
len_a = len_flag // 3
len_b = len_flag // 3
len_c = len_flag - (len_a + len_b)

# Split encrypted data
a = enc[:len_a]
b = enc[len_a:len_a + len_b]
c = enc[len_a + len_b:]

# Reverse the transformations

# Undo the final XOR on c
c = xor(c, int(str(len_flag)[0]) * int(str(len_flag)[1]))

# Reverse the shuffling and XORs
c = xor(b, c)
b = xor(a, b)
a = xor(c, a)

# Undo earlier XORs
c = xor(b, c)
b = xor(a, b)

# Undo the XOR with the sum of flag length digits
a = xor(a, int(str(len_flag)[0]) + int(str(len_flag)[1]))

# Combine to reconstruct the flag
flag = a + b + c

# Output the flag
print(flag.decode('utf-8', errors='ignore'))
