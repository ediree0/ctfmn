## Description
Reverse Engineering · Харуул Занги U18: 2018 · w01f
Solved: 22 · Score: 769
PWN гэж юу вэ?

`nc 139.162.5.230 10321`

Files:

pwn_lesson_x64

## Solution

```c
undefined8 main(int param_1)

{
  if (1 < param_1) {
    puts("Awral ugui..");
                    /* WARNING: Subroutine does not return */
    exit(1);
  }
  checkpw();
  return 0;
}
```
```c
undefined8 checkpw(void)

{
  int iVar1;
  long in_FS_OFFSET;
  char local_28 [24];
  long local_10;
  
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  printf("Nuuts ugee oruulna uu: ");
  gets(local_28);
  iVar1 = strcmp(local_28,"password");
  if (iVar1 == 0) {
    puts("Oh come on man!, I\'m super hacker");
  }
  else {
    iVar1 = strcmp(local_28,"p!g30n");
    if (iVar1 == 0) {
      granted();
    }
    else {
      puts("Access Denied!");
    }
  }
  if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return 0;
}

```
```c
undefined8 granted(void)

{
  FILE *pFVar1;
  long in_FS_OFFSET;
  undefined1 local_38 [40];
  long local_10;
  
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  pFVar1 = fopen("flag.txt","r");
  __isoc99_fscanf(pFVar1,&DAT_00100af3,local_38);
  puts("Access Granted");
  printf("Flag: %s\n",local_38);
  if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return 0;
}
```
Exploit code:
```py
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pwn import *

exe = context.binary = ELF(args.EXE or 'pwn_lesson_x64',checksec=False)

host = args.HOST or '139.162.5.230'
port = int(args.PORT or 10321)


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

context.log_level='critical'

io = start()
io.sendline(b"p!g30n")
io.recvuntil(b"Flag: ")
flag = io.recvline().strip()
print(flag.decode())
io.close()
```