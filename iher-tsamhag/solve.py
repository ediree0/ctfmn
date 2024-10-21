#!/usr/bin/env python3 

def main():
    a = open("elf").read()
    b = open("elf2").read()

    result = ""
    for i in range(len(a)):
        if a[i] == b[i]:
            result += a[i]

    result = result.replace(" ", "")
    print(result)

if __name__ == '__main__':
    main()