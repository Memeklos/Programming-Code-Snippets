#include <stdio.h>
int main() {
	double pi = 0.0;
	double counter = 1.0;
	char plusminus = '+';
/*
	pi += 4.0 / 1.0;
	pi -= 4.0 / 3.0;
	pi += 4.0 / 5.0;
	pi -= 4.0 / 7.0;
	pi += 4.0 / 9.0;
	pi -= 4.0 / 11.0;
	pi += 4.0 / 13.0;
*/

	for ( ; 1; counter+=2.0) {

		if (plusminus == '+') {
			plusminus = '-';
			pi += 4.0 / counter;
		} else {
			plusminus = '+';
			pi -= 4.0 / counter;
		}

		printf("%.10f\n", pi);

	}

	return 0;
}