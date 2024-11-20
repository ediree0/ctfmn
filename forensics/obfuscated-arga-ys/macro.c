#include <stdlib.h>
#include <stdio.h>

int main(){
    unsigned char s[] =
    {

        0xc, 0xfa, 0x33, 0x89, 0xd0, 0x2, 0x2f, 0xe5,
        0xd2, 0xc4, 0x78, 0x9e, 0x5a, 0xcb, 0x79, 0x69,
        0x17, 0xa8, 0xf2, 0x59, 0xa8, 0x88, 0xfc
    };

    for (unsigned int m = 0; m < sizeof(s); ++m)
    {
        unsigned char c = s[m];
        c = ~c;
        c += m;
        c ^= 0x8b;
        c = (c >> 0x5) | (c << 0x3);
        c -= 0x35;
        c ^= 0xcc;
        c = (c >> 0x7) | (c << 0x1);
        c ^= 0x66;
        c += m;
        c = (c >> 0x3) | (c << 0x5);
        c += m;
        c = (c >> 0x7) | (c << 0x1);
        c -= m;
        c = -c;
        c ^= m;
        s[m] = c;
    }

    printf("%s\n", s);
    return 0;
}