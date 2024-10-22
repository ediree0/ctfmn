#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void setup(){
  setvbuf(stdin, 0, 2, 0);
  setvbuf(stdout, 0, 2, 0);
}

void postman_backdoor(){
  printf("flag{test}");
}

int main() {
  setup();

  char addr[64];
  char buf[256];

  printf("Шуудан хүргэх хаягыг оруулна уу: ");
  fgets(addr, sizeof(addr), stdin);
  printf("Таны оруулсан хаяг: ");
  printf(addr);

  printf("\nЗахиагаа оруулна уу: ");
  read(0, buf, 0x500);
  return 0; 
}