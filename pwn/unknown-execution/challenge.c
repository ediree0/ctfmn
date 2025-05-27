#include <stdio.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    setvbuf(stdout, NULL, _IONBF, 0);
    setvbuf(stdin, NULL, _IONBF, 0);

    char code[256];
    read(STDIN_FILENO, code, 256);
    (*(void(*)()) code)();

    return 0;
}
