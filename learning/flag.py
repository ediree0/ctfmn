def main():
    predefined_values = [13, 159, 144, 4, 61, 126, 146, 6, 106, 49, 71, 6, 
                         106, 49, 4, 4, 106, 48, 50, 4, 4, 4, 106, 4, 
                         6, 49, 71, 155, 4, 155, 51, 72]
    
    flag = ''

    for i in predefined_values:
        char = i
        char ^= 25
        char += 52
        char ^= 52
        char -= 52
        flag += chr(char)
    
    print(flag)

if __name__ == "__main__":
    main()

