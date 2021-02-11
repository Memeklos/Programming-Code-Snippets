#include <stdio.h>
int main() {

	char q1;
	int q2;
	float q3;
	int q4;
	int q5;
	int q6;

	printf("Want a job, boi? ");
		scanf(" %c", &q1);

		if ( q1 == 'n' ) {
			printf("Aight, see ya.\n\n");
			return 1;
		}
	printf("How many years of school have you completed? ");
		scanf("%d", &q2);
		if ( q2 < 12 ) {
			printf("Sorry, we can't take you on right now!\n\n");
			return 2;
		}
	printf("What was your highschool GPA? ");
		scanf("%f", &q3);
		if ( q3 < 3.00 ) {
			printf("Sorry, we can't take you on right now!\n\n");
			return 2;
		}

	printf("How many years of experience do you have? ");
		scanf("%d", &q4);
		if ( q4 < 2 ) {
			printf("Sorry, we can't take you on right now!\n\n");
			return 2;
		}

	printf("What salary are you looking for? ");
		scanf("%d", &q5);
		if ( q5 > 75000 ) {
			printf("Sorry, we can't take you on right now!\n\n");
			return 2;
		}

	printf("What day this month can you start? ");
		scanf("%d", &q6);
		if ( q6 > 15 ) {
			printf("Sorry, we can't take you on right now!\n\n");
			return 2;
		}

	if ( q1 == 'y' && q2 == 16 && q3 > 3.5 && q4 > 10 && q5 < 50000 && q6 >= 3) {
		printf("You're a GREAT candidate!\n\n");
		return 0;
	}
	else if ( q1 == 'y' && q2 == 16 && q3 >= 3.00 && q4 > 5 && q5 < 60000 && q6 >= 10) {
		printf("You're a GOOD candidate!\n\n");
		return 0;
	}
	else {
		printf("You're an ACCEPTABLE candidate!\n\n");
	}

	printf("The job is yours, friendo.\n\n");
	return 0;
}