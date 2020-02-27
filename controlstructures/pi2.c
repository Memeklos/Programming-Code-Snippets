#include <stdio.h>
int main() {
	double pi = 0.0;
	double cr = 1.0;
	char pm = '+';

	for ( ; 1; cr+=2.0) {

		if (pm == '+') {
			pm = '-';
			pi += 4.0/cr;
		} else {
			pm = '+';
			pi -= 4.0/cr;
		}

		printf("%.10f\n", pi);
	}
	return 0;
}