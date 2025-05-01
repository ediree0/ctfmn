## Description
Cryptography · MUST CTF: 2023 · Bilgee
Solved: 24 · Score: 724
Бид байгууллагынхнаа тасалбар худалддаг вэбсайтад 26 оронтой давтагдашгүй id бүхий тасалбаруудыг хэрэглэгчдэд олгодог ба
энэ id-гаар захиалагчийн хувийн мэдээллийг харах эмзэг байдал илэрсэн ба үүнийг засах даалгаврыг шинээр орсон хөгжүүлэгчид
даалгасан юм. Түүний нэвтрүүлсэн тасалбар нууцлах шийдлийг сонирхооч ?

Flag: MUSTCTF{tug}

Files:

enc.py

## Solution

This is just RSA under the hood so lets just think this is a RSA challenge
```py
from Crypto.Util.number import inverse

ct = 0x5dc3e1d09a42233cc160a1c5bba4100f2556b5ef933d20c5ca
e = 65537
n = 882564595536224140639625987659416029426239230804614613279163

p = 857504083339712752489993810777 # from factor db
q = 1029224947942998075080348647219

phi = (p - 1)*(q - 1)
d = inverse(e, phi)

m = pow(ct, d, n)
m = m.to_bytes((m.bit_length() + 7) // 8, byteorder='big')
print(m)
```
```
b'da59ec40ce31b9c46ef2a8ff5'
```