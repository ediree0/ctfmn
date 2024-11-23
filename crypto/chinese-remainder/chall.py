from Crypto.Util.number import bytes_to_long as b2l, getPrime 
from secret import flag

x = b2l(flag) ** 3

n1 = getPrime(512)
n2 = getPrime(512)
n3 = getPrime(512)

with open('out.txt','w') as f:
    f.write(f"n1 = {n1}\n")
    f.write(f"n2 = {n2}\n")
    f.write(f"n3 = {n3}\n")
    f.write(f"a1 = {x%n1}\n")
    f.write(f"a2 = {x%n2}\n")
    f.write(f"a3 = {x%n3}")


