## Description 
Hello world
Pwn · MUST CTF: 2024 · Myagmartseren
Solved: 4 · Score: 994
nc 139.162.5.230 10197
Files:

hello-world

## Solution
Let's do some basic file checks
```
[Output of file]
hello-world: ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=300033cb60b0c80c07893f09bcdc5217f45da2cb, for GNU/Linux 3.2.0, not stripped

```
```
[Output of checksec]
[*] '/home/kali/ctf/ctfmn/pwn/hello-world/hello-world'
    Arch:       amd64-64-little
    RELRO:      Partial RELRO
    Stack:      Canary found
    NX:         NX enabled
    PIE:        No PIE (0x400000)
    Stripped:   No
```
Now let's look at it in ghidra

```c
```
