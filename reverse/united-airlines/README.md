## Description
Reverse Engineering · Харуул Занги U18: 2017 · unknown
Solved: 23 · Score: 747
Нэгэн зорчигчийг онгоцноос буулгасан байна. Шалтгаан нь юу байв?

Files:

rvrse

## Solution
Opening this on ghidra provides us with some interesting functions `plane()` `dont_call_it()`

```c
undefined8 main(void)
{
  puts("Ta United Airlines-d tavtai morilno uu!");
  return 0;
}

ulong plane(ulong param_1,ulong param_2)
{
  return param_1 ^ param_2;
}

undefined8 dont_call_it(void)
{
  undefined8 uVar1;
  
  uVar1 = plane(0x5e19110d045c0e0c,0x6e6f745f666c6167);
  printf("flag is %llx",uVar1);
  return uVar1;
}
```

this is just xor :|

```py
from Crypto.Util.number import long_to_bytes

sus = 0x5e19110d045c0e0c ^ 0x6e6f745f666c6167
sus = long_to_bytes(sus)	
print(sus.decode())
```
```
0veRb0ok
```