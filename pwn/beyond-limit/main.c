#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

int main(){
    logo(); 
    char value = "A";
    char check = "A";
    char name[] = "HZU18 Beyond Limit Challenge ";
    int index=0;

    printf("Зөвхөн нэг тэмдэгт өөрчилж болно.\n");
    
    printf("Байршил:");
    scanf("%d", &index);

    printf("Тэмдэгт:");
    scanf("%s", &name[index]);

    if (check == value) {
        printf("\nАмжилтгүй\n");
        return 0;
    }
    printf("\nАмжилттай %c\n", check);

    system("/bin/sh");
}