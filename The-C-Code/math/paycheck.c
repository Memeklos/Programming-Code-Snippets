#include <stdio.h>

int main() {

	float hrs;
	float pay;
	float tax;

	printf("\nHours worked: ");
		scanf("%f", &hrs);
	printf("Hourly pay: ");
		scanf("%f", &pay);
		pay = pay * hrs;
	printf("Tax percentage: ");
		scanf("%f", &tax);

	printf("Gross Income: %f\n", pay);
		tax = tax * pay / 100;
	printf("Tax Taken: %f\n", tax);
		pay = pay - tax;
	printf("Net Income: %f\n\n", pay);

	return 0;
}