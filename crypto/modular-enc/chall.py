from secret import flag
from Crypto.Util.number import getPrime

n = getPrime(32)
exp = getPrime(31)

def encrypt(flag):
    return (flag*exp) % n

m = list(flag)
enc = []

for i in m:
    enc.append(encrypt(i))

print('enc = ',enc)
print('\nn = ',n)
