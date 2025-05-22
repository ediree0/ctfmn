#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

void error() {
    puts("Oops! Something went wrong.");
    puts("Our organizers are looking into it and will fix it shortly.");
    puts("In the meantime, please accept this flag as a token of our apology.");

    system("cat flag.txt");
    exit(1);
}

int main(int argc, char *argv[]) {
    setbuf(stdout, NULL);
    signal(SIGSEGV, error);

    char name[64];

    puts("                                        ");
    puts("  ██╗  ██╗███████╗██╗   ██╗ ██╗ █████╗  ");
    puts("  ██║  ██║╚══███╔╝██║   ██║███║██╔══██╗ ");
    puts("  ███████║  ███╔╝ ██║   ██║╚██║╚█████╔╝ ");
    puts("  ██╔══██║ ███╔╝  ██║   ██║ ██║██╔══██╗ ");
    puts("  ██║  ██║███████╗╚██████╔╝ ██║╚█████╔╝ ");
    puts("  ╚═╝  ╚═╝╚══════╝ ╚═════╝  ╚═╝ ╚════╝  ");
    puts("                                        ");
    puts("Welcome to Haruul Zangi U18: Final Stage");
    puts("                                        ");

    puts("What's your team name?");
    gets(name);

    puts("Your team has been registered successfully. Good luck in the contest!"); 
    return 0;
}
