import os
from random import choice
from hashlib import md5
from Crypto.Util.number import bytes_to_long as b2l, long_to_bytes as l2b

flag = os.environ.get('flag', 'MUSTCTF{fake_flag_for_testing}')

padding = os.urandom(100)
rounds = 1  # easy

def sign(i, letter):
    letter = bytes([letter])

    signature = md5(letter + padding + padding[:i]).digest()
    signature = b2l(signature) * (256 ** 21)
    signature ^= b2l(flag.encode())

    return l2b(signature)


def verify(i, letter, signature):
    return sign(i, letter) == signature


while True:
    option = input('option = ')
    if option == 'sign':
        for i in range(rounds):
            letter = choice(b'MUSTCTF')
            print(f'Round {i+1}. {sign(i, letter).hex()}')
    elif option == 'verify':
        correct = 0
        for i in range(rounds):
            print(f'Round {i+1}')
            signature = bytes.fromhex(input('signature = '))
            letter = input('letter = ').encode()[0]
            if verify(i, letter, signature):
                correct += 1
        if correct == rounds:
            print('Verified. Flag:', flag)
        else:
            print('Verification failed.')
    else:
        print('Must be one of: sign, verify')
