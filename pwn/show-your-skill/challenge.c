#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void stack(char *buff);

int main(int argc, char *argv[]) {
    setbuf(stdout, NULL);

    puts("                                        ");
    puts("  ██╗  ██╗███████╗██╗   ██╗ ██╗ █████╗  ");
    puts("  ██║  ██║╚══███╔╝██║   ██║███║██╔══██╗ ");
    puts("  ███████║  ███╔╝ ██║   ██║╚██║╚█████╔╝ ");
    puts("  ██╔══██║ ███╔╝  ██║   ██║ ██║██╔══██╗ ");
    puts("  ██║  ██║███████╗╚██████╔╝ ██║╚█████╔╝ ");
    puts("  ╚═╝  ╚═╝╚══════╝ ╚═════╝  ╚═╝ ╚════╝  ");
    puts("                                        ");
    puts("         -= Haruul Zangi U18 =-         ");
    puts("                                        ");

    int skill = 0xBADC0DE5;

    char buffer[16];
    memset(buffer, 0, sizeof(buffer));
    stack(buffer);

    puts("Show us your skills:");
    gets(buffer);
    stack(buffer);

    if (skill == 0x600DC0DE) {
        puts("Impressive work!");
        puts("Here's the flag to recognize your skill:");
        system("cat flag.txt");
        return 0;
    }

    puts("We couldn't spot any skill this time.");
    puts("Sorry -- Please try again!");

    return 0;
}
