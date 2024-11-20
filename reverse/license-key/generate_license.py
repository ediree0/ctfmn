#!/usr/bin/env python3

def main():
	flagenc = """WEJ.'dz+*FS.|zq*zQ.\,\/qxm~keeb""" 
	param_2 = len(flagenc) 

	valid_key = ''.join(chr(ord(flagenc[i]) ^ param_2) for i in range(len(flagenc)))
	print(valid_key)

if __name__ == '__main__':
	main()