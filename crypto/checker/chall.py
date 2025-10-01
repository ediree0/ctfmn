def check(user_input):
    compare_flag = [1048576, 1048576, 0, 5308416, 625, 279841, 187388721, 9834496, 200533921, 193877776, 157351936, 163047361, 163047361, 181063936, 200533921, 1048576, 1874161, 2313441, 1336336, 193877776, 168896016, 157351936, 163047361, 1874161, 1874161, 181063936, 157351936, 157351936, 2313441, 181063936, 200533921, 181063936, 1048576, 221533456, 1185921, 187388721, 221533456, 221533456, 14776336, 200533921]

    user_flag = []

    if len(user_input) != 40: return

    for char in user_input:
        user_flag.append(ord(char) ^ ord('C'))
    for i in range(0, len(user_flag) - 1, 2):
        user_flag[i], user_flag[i + 1] = user_flag[i + 1], user_flag[i]

    for i, char in enumerate(user_flag):
        user_flag[i] = char ** 4

    if compare_flag != user_flag:
        return
    else:
        print("Well done")

def generate_flag():
    flag = [1048576, 1048576, 0, 5308416, 625, 279841, 187388721, 9834496, 200533921, 193877776, 157351936, 163047361, 163047361, 181063936, 200533921, 1048576, 1874161, 2313441, 1336336, 193877776, 168896016, 157351936, 163047361, 1874161, 1874161, 181063936, 157351936, 157351936, 2313441, 181063936, 200533921, 181063936, 1048576, 221533456, 1185921, 187388721, 221533456, 221533456, 14776336, 200533921]

    generated_flag = []

    for i, char in enumerate(flag):
        flag[i] = int(round(char ** 0.25))

    for i in range(0, len(flag) - 1, 2):
        flag[i], flag[i + 1] = flag[i + 1], flag[i]

    for char in flag:
        generated_flag.append(chr(char ^ ord('C')))

    print("".join(generated_flag))


if __name__ == "__main__":
    # user_input = input("Please enter your flag >  ")
    # check(user_input)
    generate_flag()


# 1. LEN 40
# 2. xor with ord('C')
# swap even and odd chars
# power of 4 every chars

