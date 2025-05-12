import struct
from base64 import b64decode

# Dump from local_13d to local_115 (44 bytes)
data = [
    0x76310712, 0x10177214, 0x270b700c, 0x71033b13,
    0x71267318, 0x03787014, 0x27172a22, 0x14032b15,
    0x34177119, 0x2f17090c, 0x7c710912
]

# Pack as bytes
raw_bytes = b''.join(struct.pack('<I', x) for x in data)

# XOR with 0x41
decoded = bytes([b ^ 0x41 for b in raw_bytes])

print(b64decode(decoded.decode()).decode())  # May contain non-printables or '='
