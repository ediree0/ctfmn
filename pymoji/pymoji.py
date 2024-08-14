def sum(x, y):
    return x + y

def sub(x, y):
    return x - y

def mult(x, y):
    return x * y

def div(x, y):
    return x // y

shuffled_flag = ['3$N7-17-', '-3c69a08', '6-dad6-4', 'LO0K-L1K', '28e8e}', 'HZU18{D0', '3-4-FL4G', '577-8d9b', '-dbc0ac3']

def flag():
    flag = []
    flag.append(shuffled_flag[sub(ord('😎'), ord('😉'))])
    flag.append(shuffled_flag[sum(ord('😀'), -ord('😀'))])
    flag.append(shuffled_flag[int(mult(ord('😑'), 2.34e-05))])
    flag.append(shuffled_flag[div(ord('🤐') * 6, ord('🤐'))])
    flag.append(shuffled_flag[sum(ord('🤓'), mult(ord('🤒'), -1))])
    flag.append(shuffled_flag[sub(ord('🤑'), ord('🤏'))])
    flag.append(shuffled_flag[-2])
    flag.append(shuffled_flag.pop())
    [flag.append(_) for _ in shuffled_flag if len(_) != 8]
    return flag

print(''.join(flag()))
