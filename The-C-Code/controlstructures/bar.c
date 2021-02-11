#include <stdio.h>
int main() {

	int age;
	float moneys;
	char isbday;

	printf("How old are you? \n");
	scanf("%d", &age);
	printf("How much money do you have? \n");
	scanf("%f", &moneys);
	printf("Is it your birfday? \n");
	scanf(" %c", &isbday);

	if (age > 20 && moneys > 5.00 || isbday == 'y') {
		printf("Have a beer!\n");
	}
	else if (age <= 2) {
		printf("wHeRe aRe YoUr pArENtS?\n");
	}
	else if (age <= 5) {
		printf("Have a gookie!\n");
	}
	else {
		printf("Have an apple juice!\n");
	}

	return 0;
}