flag = 'I[V29|S4wfst4s~'
real_flag = ''

for i in flag:
	real_flag+= chr(ord(i)-1)

print(real_flag)