import Crypto.Util.number as cun
from pprint import pprint


def roots_of_unity(e, phi, n, rounds=500):
    # Divide common factors of `phi` and `e` until they're coprime.
    phi_coprime = phi
    while cun.GCD(phi_coprime, e) != 1:
        phi_coprime //= cun.GCD(phi_coprime, e)

    # Don't know how many roots of unity there are, so just try and collect a bunch
    roots = set(pow(i, phi_coprime, n) for i in range(1, rounds))

    assert all(pow(root, e, n) == 1 for root in roots)
    return roots, phi_coprime

p = 79565304973649738046890929641550086406229645142982116252431882783628570446741
q = 104895446414749804110599905404014579424417002368568255490767700901764221803853
c =4540356813631057206329938934275504497042552943607683102015080934372428231345551929844529058302190596843384780497234278626232722159254772622184794355722055
e = 65536

n = p * q

# Problem: e and phi are not coprime - d does not exist
phi = (p - 1) * (q - 1)

# Find e'th roots of unity modulo n
roots, phi_coprime = roots_of_unity(e, phi, n)

# Use our `phi_coprime` to get one possible plaintext
d = pow(e, -1, phi_coprime)
m = pow(c, d, n)
assert pow(m, e, n) == c

# Use the roots of unity to get all other possible plaintexts
ms = [(m * root) % n for root in roots]
ms = [cun.long_to_bytes(m) for m in ms]
pprint(ms)

for m in ms:
    if m.startswith(b"mazala"):
        print(f"Flag: {m}")
        break
else:
    print("No flag found :(")

