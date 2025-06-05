from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
import os

KNOWN_PART = b"__p4ssw0rd_is_"
FLAG = b"HZU18{flag was here.}"

def encrypt(plaintext):
    unknown_part = os.urandom(2)
    key = KNOWN_PART + unknown_part
    cipher = AES.new(key, AES.MODE_ECB)
    return cipher.encrypt(pad(plaintext, AES.block_size)).hex()

print(f"Encrypted flag: {encrypt(FLAG)}")

# Encrypted flag: bde9f71794fd5f623456ceff5c37c85a8473a6e92f4cedeb3c5be4d89c1429bbdc169ae6b78814b93cbdca9ef5f4f935
