
def encrypt(data, key):
    encrypted_data = bytearray()
    for byte in data:
        encrypted_data.append(byte ^ key)
    return encrypted_data


with open('flag.txt', 'rb') as file:
    flag_content = file.read()
    encrypted_flag = encrypt(flag_content, 0x55)

    print(encrypted_flag)