import socket
import re
import time

def bruteforce():
	flag = ""
	total = 32 - 1
	chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-~!?#%&@{}'

	while True:
		payload = '1' * (total - len(flag))
		ciphertext_1 = encrypt(payload)
		#print("c1 : ",ciphertext_1)
		for c in chars:
			ciphertext_2 = encrypt(payload + flag + c)
			#print("c2 : ",ciphertext_2)
			# Comapare the middle blocks ([32:64]) of each encrypted text
			if ciphertext_2[32:64] == ciphertext_1[32:64]:
				flag += c
				print(flag)
				break

			
def encrypt(content='test'):
	res = ""
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect(('139.162.5.230', 10093))
	s.sendall(content.encode())
	s.shutdown(socket.SHUT_WR)
	while 1:
		data = s.recv(1024)
		if len(data) == 0:
			break
		res += data.decode()			
	s.close()
	
	return re.search(r'encrypted message : ([a-f0-9]+)',res).group(1)

bruteforce() #HZU18{0racl3_4ttack_with_ECB}