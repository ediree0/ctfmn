# smartdoor Writeup

using radare2 to decompile the program and looking through the functions and found something called `sym.getSecretKey` 

![aaa and afl result](https://github.com/ediree0/ctfmn/blob/main/smartdoor/aaa-and-afl-result.png)

this is the function decompiled using ghidra and some chat gpt to make it little bit more easy on the eyes xd

```c
void getSecretKey(long baseAddress) {
    for (int i = 0; i < 22; i++) {
        char modifiedValue = secret[i] - (char)i;
        
        if (modifiedValue == -126) {  // -0x7e
            *(unsigned char *)(baseAddress + i) = 119;  // 0x77
        } else if (modifiedValue == 127) {  // 0x7f
            *(unsigned char *)(baseAddress + i) = 114;  // 0x72
        } else if (modifiedValue == -117) {  // -0x75
            *(unsigned char *)(baseAddress + i) = 121;  // 0x79
        } else {
            *(char *)(baseAddress + i) = modifiedValue;
        }
    }
    *(unsigned char *)(baseAddress + 22) = 0;
}

```
this is the secret variable
```c
secret[22] ={84, 49, 114, 98, 87, 56, 105, 121, 109, 125, 105, -126, 60, 127, 114, 110, 123, 68, -117, 52, 53, 54} 
```
we can run this code little code to get the secret key

```c
#include <stdio.h>
#include <string.h>

int secret[22] = {
    84, 49, 114, 98, 87, 56, 105, 121, 109, 125, 
    105, -126, 60, 127, 114, 110, 123, 68, -117, 
    52, 53, 54
};

// Function to get the secret key
void getSecretKey(long baseAddress) {
    for (int i = 0; i < 22; i++) {
        char modifiedValue = secret[i] - (char)i;
        
        if (modifiedValue == -126) {  // -0x7e
            *(unsigned char *)(baseAddress + i) = 119;  // 0x77
        } else if (modifiedValue == 127) {  // 0x7f
            *(unsigned char *)(baseAddress + i) = 114;  // 0x72
        } else if (modifiedValue == -117) {  // -0x75
            *(unsigned char *)(baseAddress + i) = 121;  // 0x79
        } else {
            *(char *)(baseAddress + i) = modifiedValue;
        }
    }
    *(unsigned char *)(baseAddress + 22) = 0;
}

int main() {
    // Allocate memory to hold the output
    char output[23]; // 22 characters + null terminator
    // Call getSecretKey with the address of the output array
    getSecretKey((long)output);
    printf("%s\n", output);
    return 0;
}
```
runnig this code gives us the secret key

```
T0p_S3cret_w0rd_k3y!!!
```
making this our flag :)
```
HZU18{T0p_S3cret_w0rd_k3y!!!}
```