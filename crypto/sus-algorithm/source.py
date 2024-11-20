from Crypto.Util.number import getPrime
from Crypto.Util.number import bytes_to_long as b2l

from secret import flag

p = getPrime(256)
q = getPrime(256)
r = getPrime(256)
e = 0x10001

head = b2l(flag[:len(flag)//2])
tail = b2l(flag[len(flag)//2:])

print(p * q, pow(head, e, p * q))
print(q * r, pow(tail, e, q * r))
