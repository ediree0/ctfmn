#!/usr/bin/env python3

def main():
	flagenc = """tfgzn//Czp({C&XCk(nq/xC+L##a""" 
	param_2 = len(flagenc) 

	valid_key = ''.join(chr(ord(flagenc[i]) ^ param_2) for i in range(len(flagenc)))
	print(valid_key)

if __name__ == '__main__':
	main()