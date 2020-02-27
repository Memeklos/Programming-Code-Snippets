#include <stdio.h>
int main() {

	int beanburro[10];
	int fishtaco;
	int yuge;
	int smol;

	for (fishtaco=1; fishtaco<=10; fishtaco++) {
		scanf("%d", &beanburro[fishtaco]);
	}

	yuge = beanburro[0];
	smol = beanburro[0];

	for (fishtaco=1; fishtaco<10; fishtaco++) {
		if (beanburro[fishtaco] > yuge) {
			yuge = beanburro[fishtaco];
		}
		if (beanburro[fishtaco] < smol) {
			smol = beanburro[fishtaco];
		}
	}

	printf("Largest: %d\n Smallest: %d\n\n", yuge, smol);
	return 0;
}