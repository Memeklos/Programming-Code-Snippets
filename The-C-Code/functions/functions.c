#include <stdio.h>

void printNumsBackwards(int start, int end);
int factorial(int n);
float f2m(float fl);
float m2f(float ml);
float average(int a, int b, int c);

int main() {

// Definitions
	int a, b, c;
	int s, e;
	float f;
	float m;
	float res;

// Print numbers backwards
	printf("\nEnter start: ");
		scanf(" %d", &s);
	printf("Enter end: ");
		scanf(" %d", &e);
	printNumsBackwards(s, e);

// Feet to meters
	printf("\nEnter length in feet: ");
		scanf(" %f", &f);
	float fres = f2m(f);
	printf(" %f feet is %f meters\n", f, fres);
// Meters to feet
	printf("Enter length in meters: ");
		scanf(" %f", &m);
	float mres = m2f(m);
	printf(" %f meters is %f feet\n", m, mres);
// Factorial
	printf("Enter factorial: ");
		scanf(" %d", &s);
	e = factorial(s);
	printf("Answer: %d\n", e);
// Values
	printf("Enter value 1: ");
		scanf(" %d", &a);
	printf("Enter value 2: ");
		scanf(" %d", &b);
	printf("Enter value 3: ");
		scanf(" %d", &c);
	res = average(a, b, c);
	printf("Average of values: %f\n", res);

	printf("Thank you, that is all.\n\n");
}
// printNumsBackwards
void printNumsBackwards(int start, int end) {
	int i = start;
	if (start < end) {
		printf("Error - Start is not larger than end!\n\n");
	return;
	}
	while (i >= end) {
		printf(" %d ", i);
		i--;
	}
}
// Feet2Meters
float f2m(float fl) {
	float ml = fl / 3.281;
	return ml;
}
// Meters2Feet
float m2f(float ml) {
	float fl = ml * 3.281;
	return fl;
}
// Factorial
int factorial(int n) {
	int index = n;
	int result = 1;

	while (index > 0) {
		result = result * index;
		index = index - 1;
	}
	return result;
}
// Average
float average(int a, int b, int c) {
	float result = (a + b + c) / 3.0;
	return result;
}