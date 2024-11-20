def main():
    text = "y0u_unl03hT_d3kcBSj!d30g_0k_p0_!"
    flag = [''] * 32

    for i in range(8):
        flag[i] = text[i]

    for i in range(8, 16):
        flag[i] = text[23 - i]

    for i in range(16, 32):
        flag[i] = text[46 - i]

    for i in range(31, 16, -2):
        flag[i] = text[i]

    flag = 'HZ{'+''.join(flag) + '}'
    print(flag)

if __name__ == "__main__":
    main()