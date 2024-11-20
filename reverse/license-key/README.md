## Description
```
License key
Reverse Engineering · Haruul Zangi U18 · unknown
Solved: 17 · Score: 864
Crack license

licensekey
```

## Solution

Ghidra and look at the `checkLicense` Function.
`rabin2 -z license` to get flagenc `WEJ.'dz+*FS.|zq*zQ.\,\/qxm~keeb`.
after wrote a simple script to generate valid license key

```
#!/usr/bin/env python3

def main():
	flagenc = """WEJ.'dz+*FS.|zq*zQ.\,\/qxm~keeb""" 
	param_2 = len(flagenc) 

	valid_key = ''.join(chr(ord(flagenc[i]) ^ param_2) for i in range(len(flagenc)))
	print(valid_key)

if __name__ == '__main__':
	main()
print("Valid License Key:", valid_key)
```
```
HZU18{e45YL1cen5eN1C3C0ngratzz}
```