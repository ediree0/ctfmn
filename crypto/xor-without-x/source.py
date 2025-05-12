import os

from Crypto.Util.number import bytes_to_long as b2l

from secret import flag


def encrypt(pt, key):
    result = bytearray()
    for i in range(len(pt)):
        result.append(pt[i] | key[i % len(key)])
    return result


for i in range(10):
    key = os.urandom(20)
    print(key.hex())
    print(encrypt(flag, key).hex())
