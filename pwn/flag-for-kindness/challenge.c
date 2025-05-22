#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void stack(char *buff);

void win() {
    puts("Since you asked nicely, we've decided to give you flag:");
    system("cat flag.txt");
}

int main(int argc, char *argv[])
{
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

    char buffer[16];
    memset(buffer, 0, sizeof(buffer));
    stack(buffer);

    puts("Ask nicely, and we might just give you flag:");
    gets(buffer);
    stack(buffer);

    return 0;
}
