#include <stdio.h>
int main () {

	int sum = 0;		// add
	int i;				// stop
	int n;				// loop counter

	printf("Enter a number: ");
	scanf("%d", &n);

	for ( i= 0; i<=n; i++) {

		sum = sum + i;
	}

	printf("The sum is: %d\n", sum);

	return 0;
}