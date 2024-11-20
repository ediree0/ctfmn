## Description

```
License key 2023
Reverse Engineering · Харуул Занги - 2023 · unknown
Solved: 16 · Score: 880
License key?
Flag: HZ2023{What you found}

rev
```

## Solution

Open this up in ghidra and the secret key is hard coded in bytes that read `'SECRET_KEY'.` backwards and split in 3 part. So the flag is the following
```
HZ2023{'SECRET_KEY'.}
```