import binascii

def main():
	with open("2d.txt",'r') as file:
		text = file.read()
		binary = ''
		for _ in text:
			if _ == '1' or _ == '0':
				binary += _
	file.close()
	n = int(binary,2)
	flag = n.to_bytes((n.bit_length() + 7) // 8, 'big').decode()
	print(flag)


if __name__ == '__main__':
	main()
