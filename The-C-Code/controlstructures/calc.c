#include <stdio.h>

int main() {

	float uno;
	float dos;
	float total;
	char op;

	printf("\nEnter a number: ");
		scanf("%f", &uno);
	printf("Enter an operation: ");
		scanf(" %c", &op);
	printf("Enter another number: ");
		scanf("%f", &dos);

	if ( op == '+' ) {
		total = uno + dos;
		printf("The total is: %f\n\n", total);
	}
	else if ( op == '-') {
		total = uno - dos;
		printf("The total is: %f\n\n", total);
	}
	else if ( op == '*') {
		total = uno * dos;
		printf("The total is: %f\n\n", total);
	}

	else if ( op == '/' ) {
		total = uno / dos;
		printf("The total is: %f\n\n", total);
	}
	else {
		printf("Maybe another time.\n\n");
	}


	return 0;
}