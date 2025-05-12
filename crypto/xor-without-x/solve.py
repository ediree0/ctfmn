def decrypt_flag(keys, encrypted_flags):
    """
    Decrypt the flag using multiple encrypted versions with different keys.
    
    Args:
        keys: List of keys in hex format
        encrypted_flags: List of encrypted flags in hex format
    
    Returns:
        The decrypted flag
    """
    # Convert hex strings to byte arrays
    byte_keys = [bytes.fromhex(key) for key in keys]
    byte_encrypted = [bytes.fromhex(enc) for enc in encrypted_flags]
    
    # Find the length of the encrypted flag (should be same across all encryptions)
    flag_length = len(byte_encrypted[0])
    
    # Initialize result array with all bits set to 1
    possible_flag = [0xFF] * flag_length
    
    # For each encryption and key pair
    for i in range(len(byte_keys)):
        key = byte_keys[i]
        encrypted = byte_encrypted[i]
        
        # For each byte in the encrypted flag
        for j in range(flag_length):
            key_byte = key[j % len(key)]
            
            # If a bit is 0 in the encrypted byte, then it must be 0 in the original flag
            # This is because OR operation with any key bit would have made it 1 otherwise
            # ~encrypted[j] gives us a mask where 1 represents positions where encrypted has 0
            # & operation with current possible_flag eliminates possibilities
            possible_flag[j] &= ~(~encrypted[j] & ~key_byte)
    
    # Convert bytes to ASCII characters
    flag = ''.join(chr(b) for b in possible_flag)
    return flag

# Paste your key-encrypted flag pairs here
keys = [
    # Add the 10 keys here
]

encrypted_flags = [
    # Add the 10 encrypted flags here
]

def main():
    with open("output.txt","r") as f:
        lines = f.readlines()   
    f.close()

    keys = []

    for i in range(len(lines)):
        if i%2 == 0:
            keys.append(lines[i].strip())
        else:
            encrypted_flags.append(lines[i].strip())

    flag = decrypt_flag(keys, encrypted_flags)
    print(flag)

if __name__ == '__main__':
    main()