import os

flag = os.environ.get('flag', 'MUSTCTF{fake_flag_for_testing}').encode()

key = sum([c for c in b'MUSTCTF']) # 550

def leak(i):
    return flag[i] ^ key

def find_flag():
    flag = ""
    for i in range(-1,len(flag) * -1, -1):
        flag += first_function(i)

    flag = flag[::-1]
    flag = "".join(flag)

    print(flag)

def first_function(input):
    try:
        i = int(input)
        assert i < len(flag) // 2  # Sorry. Only first half is leaked
        return chr(leak(i)^key)
    except Exception:
        print('Unexpected error')

find_flag()