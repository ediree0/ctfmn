import re
import base64

# The encoded text
encoded = """INXW4sZ3SMFdsg2HUIBkjOlFYFvAUnQnrJANByQWG23FOoIQGIp3u3FOMQGqM33SEBWcG65TFEnB3WQYLfUEBXrXI2DFtOJZS
A53POVdWGddIdIfbDmON52,CAZDndPEbBvTG64pRAiNVuXW4ewZLZqFYeQAUgCT/IPJ.5TAY'ZUMRS;TGZJoTMYZDIuZDGolGFlRGGmNRX
MM4DCZgjJklXG;;EYDAsOJRerHBfSWIdhM3h5BI======"""

print("Trying different encoding schemes...\n")

# Try Base32 (uses A-Z and 2-7, with = padding)
print("="*60)
print("Attempt 1: Base32 (A-Z, 2-7)")
base32_chars = re.findall(r'[A-Z2-7=]', encoded)
base32_str = ''.join(base32_chars)
print(f"Extracted: {base32_str}")
try:
    decoded = base64.b32decode(base32_str)
    print(f"✓ Decoded: {decoded.decode('utf-8', errors='ignore')}")
except Exception as e:
    print(f"✗ Error: {e}")

# Try extracting only uppercase letters
print("\n" + "="*60)
print("Attempt 2: Uppercase letters only")
uppercase = ''.join(re.findall(r'[A-Z]', encoded))
print(f"Extracted: {uppercase}")
for encoding in ['base32', 'base64', 'ascii85']:
    try:
        if encoding == 'base32':
            # Pad to multiple of 8
            padded = uppercase + '=' * ((8 - len(uppercase) % 8) % 8)
            decoded = base64.b32decode(padded)
            print(f"✓ Base32 decoded: {decoded.decode('utf-8', errors='ignore')}")
        elif encoding == 'base64':
            padded = uppercase + '=' * ((4 - len(uppercase) % 4) % 4)
            decoded = base64.b64decode(padded)
            print(f"✓ Base64 decoded: {decoded.decode('utf-8', errors='ignore')}")
    except Exception as e:
        pass

# Try extracting capital letters that follow lowercase (pattern matching)
print("\n" + "="*60)
print("Attempt 3: Capital letters after lowercase")
pattern_matches = re.findall(r'[a-z]([A-Z])', encoded)
result = ''.join(pattern_matches)
print(f"Extracted: {result}")
print(f"As text: {result}")

# Try extracting capital letters that are NOT followed by lowercase
print("\n" + "="*60)
print("Attempt 4: Capital letters NOT followed by lowercase")
pattern_matches = re.findall(r'[A-Z](?![a-z])', encoded)
result = ''.join(pattern_matches)
print(f"Extracted: {result}")
try:
    # Try Base32
    padded = result + '=' * ((8 - len(result) % 8) % 8)
    decoded = base64.b32decode(padded)
    print(f"✓ Base32 decoded: {decoded.decode('utf-8', errors='ignore')}")
except:
    print(f"As text: {result}")

# Try specific character positions or patterns
print("\n" + "="*60)
print("Attempt 5: Characters at specific positions (every Nth char)")
for n in [2, 3, 4, 5]:
    chars = encoded[::n]
    print(f"Every {n}th character: {chars[:50]}...")

# Try extracting based on special character delimiters
print("\n" + "="*60)
print("Attempt 6: Extract characters BEFORE special chars (,.';\)")
special_pattern = re.findall(r'([A-Za-z0-9])[\,\.\';\;]', encoded)
result = ''.join(special_pattern)
print(f"Extracted: {result}")

# Hex decode attempt
print("\n" + "="*60)
print("Attempt 7: Look for hex patterns")
hex_chars = re.findall(r'[0-9A-Fa-f]', encoded)
hex_str = ''.join(hex_chars)
if len(hex_str) % 2 == 0:
    try:
        decoded = bytes.fromhex(hex_str)
        print(f"Hex decoded: {decoded.decode('utf-8', errors='ignore')}")
    except:
        pass

print("\n" + "="*60)
print("Try looking at the raw extracted strings for patterns!")