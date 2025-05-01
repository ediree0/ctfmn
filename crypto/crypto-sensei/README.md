## Description 
Cryptography · MUST CTF: 2023 · unknown
Solved: 28 · Score: 622
Sensei said : learn for the sake of knowledge not for CTF.

Files:

crypto_sensei.py

## Solution
```py
from Crypto.Util.Padding import unpad

def decrypt_custom(ct_hex, kii):
    ct_bytes = bytes.fromhex(ct_hex)
    reversed_bytes = ct_bytes[::-1]
    
    decrypted = bytearray()
    for i, b in enumerate(reversed_bytes):
        decrypted.append(b ^ kii[i % len(kii)])
    
    try:
        decrypted_unpadded = unpad(decrypted, 16)
    except:
        print("Invalid padding.")
        return None
    
    tug = decrypted_unpadded
    return tug

# Given values
ct_hex = '3e31303e31303e4b035a0e0f0050560d08025601005558014c7f62746d65627408070608070608070608070608070608'
kii = b'9769769769769769'

tug = decrypt_custom(ct_hex, kii)
print("Recovered Tug:", tug)
```