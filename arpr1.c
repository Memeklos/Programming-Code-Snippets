#include <stdio.h>
int main() {

	char stf[101];
	int idx;
	int a_counter = 0;
	int b_counter = 0;
	int c_counter = 0;

	scanf("%100s", stf);

	idx = 0;
	while (stf[idx] != '\0') {
		if (stf[idx] == 'a') {
//			printf("Saw an A at position %d\n", idx);
			a_counter++;
		}
		if (stf[idx] == 'b') {
//			printf("Saw a B at position %d\n", idx);
			b_counter++;
		}
		if (stf[idx] == 'c') {
//			printf("Saw a C at position %d\n", idx);
			c_counter++;
		}
		idx++;
	}
	if (a_counter > 0) {
		printf("Is some Aaaayyyyy\n");
	}
	if (b_counter > 0) {
		printf("You got some Bs\n");
	}
	if (c_counter > 0) {
		printf("Thar be a C or more\n");
	}


/*	for (idx=0; stf[idx] !=]; idx++;) {

	}
*/
	return 0;
}