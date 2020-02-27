#include <stdio.h>
int main() {

	int num, pnum; // User input
	int sp, last = 1; // Spaces
	int a = 1, b;

	printf("Enter a number: ");
	scanf("%d", &num);
	sp = num - 1;

	while (a <= num) {
		pnum = last + 2;
		sp = sp - 1;
		b = 0;

		while (b <= sp){
			printf(" ");
			b++;
		}
		if (a == 1){
			printf("#");
			last = 1;
		}
		else{
		b = 2;
			while (b < pnum){
				printf("#");
				b++;
			}
		}
		printf("\n");
		a++;
		last = pnum;
	}
	b = 0;
	sp = num - 1;
	while (b < sp) {
		printf(" ");
		b++;
	}
	printf("#\n\n");

	return 0;
}