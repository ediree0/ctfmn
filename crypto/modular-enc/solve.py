from Crypto.Util.number import inverse

# Given data
enc = [35962162, 1838017951, 3130512147, 3112531066, 2020265291, 3348721649, 2329598463, 
       1219351607, 2839160056, 2748036386, 53943243, 1619808449, 654628506, 545523755, 
       745752176, 654628506, 1546665860, 854856927, 3239616898, 1947122702, 3312759487, 
       854856927, 1546665860, 945980597, 545523755, 3112531066, 17981081, 545523755, 
       1328456358, 1219351607, 1219351607, 53943243, 545523755, 654628506, 3112531066, 
       1346437439, 3239616898, 854856927, 927999516, 3548950070]
n = 3586130497

# Known plaintext "HZU18" converted to ASCII values
known_flag = [72, 90, 85, 49, 56]

# Let's use the first two known plaintext values
flag_guess_1 = known_flag[0]  # 'H' = 72
flag_guess_2 = known_flag[1]  # 'Z' = 90

# Encrypted values for the first two characters
enc_1 = enc[0]  # First encrypted value
enc_2 = enc[1]  # Second encrypted value

# Calculate the modular difference and its inverse
diff = (flag_guess_2 - flag_guess_1) % n
inv_diff = inverse(diff, n)

# Calculate exp
exp = (enc_2 - enc_1) * inv_diff % n
print("Calculated exp:", exp)

# Decrypting the rest of the flag using the calculated exp
decrypted_flag = []
for e in enc:
    decrypted_char = (e * inverse(exp, n)) % n
    decrypted_flag.append(decrypted_char)

# Convert decrypted values back to characters
decrypted_message = ''.join(chr(c) for c in decrypted_flag)
print("Decrypted flag:", decrypted_message)
