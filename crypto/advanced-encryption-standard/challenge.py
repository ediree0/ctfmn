from hashlib import sha256
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad

flag = b'<REDACTED>'

key = sha256(flag[:6]).digest()
cipher = AES.new(key, AES.MODE_ECB)
encrypted = cipher.encrypt(pad(flag, 16))

print(encrypted.hex())

# Output:
# 2ae44c5da2804d2048f5f713f84be44d385ab3527ece6d18f4b90de3455720a78b3a2ed777229975afe99bf1ce57c794