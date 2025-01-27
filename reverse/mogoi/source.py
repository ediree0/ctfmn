# uncompyle6 version 3.9.2
# Python bytecode version base 2.7 (62211)
# Decompiled from: Python 3.12.7 (main, Nov  8 2024, 17:55:36) [GCC 14.2.0]
# Embedded file name: re1.py
# Compiled at: 2017-04-19 20:21:33
inp = raw_input('Dartsagaa oruulna uu: ')
flag = 'I[V29|S4wfst4s~'
orolt = ''
for i in inp:
    orolt += chr(ord(i) + 1)

if orolt == flag:
    print 'Good Job :)'
else:
    print 'Oor dartsag oruulna uu!'

# okay decompiling mogoi.pyc
