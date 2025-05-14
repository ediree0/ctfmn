import base64
import zlib

encoded_string = b"84gKNbRQNXcKT/X0TM7PTQXy4hPzUlSNzOKdEiuLchJzEhNVzV0A"
decoded_data = base64.b64decode(encoded_string)
decompressed_data = zlib.decompress(decoded_data,-zlib.MAX_WBITS)  # Raw deflate data
print(decompressed_data.decode())
