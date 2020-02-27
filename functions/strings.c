#include <stdio.h>
int main() {

//	char class[7] = {'c', 's', 'c', '1', '5', '0', '\0'};
	char class[] = "csc\n150";

	printf("\nI'm in %s\n\n", class);

	char name[16];
	scanf("%s", name);
	printf("\nHello, %s\n\n", name);

	return 0;
}