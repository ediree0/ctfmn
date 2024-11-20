# Really Suspicious Algorithm Writeup

The Problem

The challenge is to decrypt the two encrypted halves of the flag using the two modulus values. To do this, we can use the fact that:

    We have n1=p×q and n2=q×r, which means they share a common prime q.

Steps to Solve

    Calculate the GCD: Since q is common in both n1 and n2, we can compute q by finding the GCD of n1 and n2:

    q=gcd(n1,n2)

    Once we have q, we can easily find p and r:

    p=n1/q and r=n2/q

    Decrypt the Encrypted Values: With pp, qq, and rr known, we can compute d1d1 and d2d2 (the modular inverses):
        Calculate d1d1 and d2d2 as the modular inverses of ee modulo ϕ(n1)ϕ(n1) and ϕ(n2)ϕ(n2) respectively.
        Decrypt c1c1 and c2c2:

    head=c1 ^ d1 mod n1
    tail=c2 ^ d2 mod n2

    Recombine the Flag: The original flag is the concatenation of the decrypted head and tail.
