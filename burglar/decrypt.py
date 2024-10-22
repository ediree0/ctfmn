def decrypt(data, key):
    encrypted_data = bytearray()
    for byte in data:
    	    encrypted_data.append(byte ^ key)
    return encrypted_data

def main():
    key = 0x55
    with open('sus.data','rb') as file:
        encrypted_flag = file.read()
        decrypted_flag = decrypt(encrypted_flag,key)
        with open('flag.txt','wb') as flag:
            flag.write(decrypted_flag) 

if __name__ == '__main__':
    main()