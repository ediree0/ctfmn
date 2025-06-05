from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad
from itertools import product

# Known values
KNOWN_PART = b"__p4ssw0rd_is_"  # 14 bytes
ciphertext_hex = "bde9f71794fd5f623456ceff5c37c85a8473a6e92f4cedeb3c5be4d89c1429bbdc169ae6b78814b93cbdca9ef5f4f935"
ciphertext = bytes.fromhex(ciphertext_hex)

# Brute-force the 2-byte suffix
for a, b in product(range(256), repeat=2):
    suffix = bytes([a, b])
    key = KNOWN_PART + suffix
    cipher = AES.new(key, AES.MODE_ECB)
    try:
        plaintext = unpad(cipher.decrypt(ciphertext), AES.block_size)
        if plaintext.startswith(b"HZU18{"):
            print(f"[+] Found key: {key}")
            print(f"[+] Decrypted flag: {plaintext}")
            break
    except ValueError:
        continue  # padding error, invalid key
