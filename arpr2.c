#include <stdio.h>
#include <string.h>


int main () {

	char eyo[101];
	int c;

	scanf("%100s", eyo);

//	for (c=0; eyo[c] != '\0'; c++);

	c = strlen(eyo);

	printf("The length is %d\n\n", c);

	return 0;
}