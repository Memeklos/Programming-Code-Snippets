#include <stdio.h>
int main(){

	int cn;
	float cost;

	printf("How many chicken nuggers do you want?");
	scanf("%d", &cn);

	printf("How much does an individual chicken nugger cost?");
	scanf("%f", &cost);

	printf("Those chicken nuggers will cost you $%f\n", cn * cost);

	
return 0;
}