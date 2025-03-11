import os

flag = os.environ.get('flag', 'MUSTCTF{fake_flag_for_testing}').encode()

def leak(i):
    return flag[i] ^ sum([c for c in b'MUSTCTF'])


while True:
    try:
        i = int(input('i = '))
        assert i < len(flag) // 2  # Sorry. Only first half is leaked
        print('Leak:', leak(i))
    except Exception:
        print('Unexpected error')
        break