#include <stdio.h>

int main() {

	int td = 6;
	int ep = 1;
	int pc = 2;
	int fg = 3;
	int safeties = 2;
    int input;

	printf("\nNumber of touchdowns: ");
		scanf("%d",&input);
		td = td * input;
	printf("Number of extrapoints: ");
		scanf("%d", &input);
		ep = ep * input;
	printf("Number of 2-point conversions: ");
		scanf("%d", &input);
		pc = pc * input;
	printf("Number of field goals: ");
		scanf("%d", &input);
		fg = fg * input;
	printf("Number of safeties: ");
		scanf("%d", &input);
		safeties = safeties * input;

	int total = td + ep + pc + fg + safeties;
	printf("Final score: %d \n\n", total);

	return 0;
}