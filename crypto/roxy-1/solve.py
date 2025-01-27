from Crypto.Util.number import long_to_bytes

cipher = long_to_bytes(0x33083a49670333066e57243e0a75773c3b0a534d1c05325e542c27)
flag_format = b"HZU18"
flag=""

for i in range(len(cipher)):
	flag += chr(cipher[i] ^ flag_format[i%len(flag_format)])

print(flag)

