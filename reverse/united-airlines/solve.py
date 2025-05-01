from Crypto.Util.number import long_to_bytes

sus = 0x5e19110d045c0e0c ^ 0x6e6f745f666c6167
sus = long_to_bytes(sus)	
print(sus.decode())
