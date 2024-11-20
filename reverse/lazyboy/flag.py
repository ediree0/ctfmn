bytes = [
    122,
    94,
    50,
    82,
    75,
    92,
    125,
    67,
    92,
    94,
    101,
    47,
    54,
    128,
    102,
    103,
    102,
    133,
    102,
    106]

def initial_function():
    for _ in range(len(text)):
        tmp = ord(text[_]) ^ 5
        tmp += 5
        tmp ^= 5
        tmp += 17
        tmp ^= 5
        tmp += 17
        tmp -= 35
        if tmp != bytes[_]:
            print('hmm')
            exit()
    print('WOW')

def flag():
    flag = ''
    for i in bytes:
        tmp = i
        tmp += 35
        tmp -= 17
        tmp ^= 5
        tmp -= 17
        tmp ^= 5
        tmp -= 5 
        tmp ^= 5
        flag += chr(tmp)
    print(flag[::-1])

flag()

