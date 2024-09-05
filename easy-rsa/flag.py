import sympy
from Crypto.Util.number import *

e=3 # cube root attack only works when public exponent is low like 3

ciphertext = 250383313861288772579552185112260515620934440209335681248467385170408686167759234233964620256298646467799653788002398355192170597

flag = long_to_bytes(sympy.cbrt(ciphertext)).decode()
print(flag)