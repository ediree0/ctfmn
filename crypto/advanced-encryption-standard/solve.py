# decrypt_hzu18.py
from hashlib import sha256
from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad

# --- inputs (from the challenge) ---
prefix = b"HZU18{"   # first 6 bytes used to derive the key
ct_hex = "2ae44c5da2804d2048f5f713f84be44d385ab3527ece6d18f4b90de3455720a78b3a2ed777229975afe99bf1ce57c794"

# --- derive AES key from the 6-byte prefix ---
key = sha256(prefix).digest()   # 32-byte AES key (SHA-256 of the 6 bytes)

# --- decrypt (AES-ECB) and unpad ---
ct = bytes.fromhex(ct_hex)             		# ciphertext bytes
cipher = AES.new(key, AES.MODE_ECB)         # create AES-ECB cipher with derived key
pt_padded = cipher.decrypt(ct)              # decrypt ciphertext (still padded)
plaintext = unpad(pt_padded, 16)            # remove PKCS#7 padding

print("Derived key (hex):", key.hex())
print("Plaintext:", plaintext.decode('utf-8'))
