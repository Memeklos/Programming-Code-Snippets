#include <stdio.h>

int main() {

	float rad;
	float pi = 3.1415926;

	printf("Enter a radius: ");
	scanf("%f" &rad);

	printf("The diameter is: %f\n", rad * 2);
	printf("The circumference is: %f\n", 2 * pi * rad);
	printf("The area is: %\n", pi * rad * rad);

	return 0;
}