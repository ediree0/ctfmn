from base64 import b64decode

def main():
	for i in range(1,4401):
		with open(f'files/FF{i}.txt','r') as file:
			lines = file.readlines()
			line_number = 0
			for line in lines:
				try:
					tmp = b64decode(line)
					print(f'FF{i}:{line_number}:',tmp.decode())
				except:
					pass
				line_number += 1
	
	# FF2000, FF1118 same UM{Z@x3_L0he_Ge0ho!r_$vzc!l}
	# ROT13 UM{Z@x3_L0he_Ge0ho!r_$vzc!l} => HZ{M@k3_Y0ur_Tr0ub!e_$imp!y}
	
if __name__ == '__main__':
	main()