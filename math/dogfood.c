#include <stdio.h>

int main() {

	int dogs;
	float pfpd;
	float bag;
	float cost;

	printf("\nNumber of dogs: ");
		scanf("%d", &dogs);
	printf("Pounds of food each digests daily: ");
		scanf("%f", &pfpd);
		pfpd = pfpd * dogs;
	printf("Pounds of food in each bag: ");
		scanf("%f", &bag);
		bag = pfpd / bag;
		pfpd = bag * 365;
	printf("Cost of each bag: ");
		scanf("%f", &cost);
		cost = cost * pfpd;

	printf("You will spend about $%f per year.\n\n", cost);

	return 0;
}