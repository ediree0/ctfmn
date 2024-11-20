#include <stdio.h>
#include <string.h>

int secret[22] = {
    84, 49, 114, 98, 87, 56, 105, 121, 109, 125, 
    105, -126, 60, 127, 114, 110, 123, 68, -117, 
    52, 53, 54
};

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
    char output[22]; 
    getSecretKey((long)output);
    printf("%s\n", output);
    return 0;
}