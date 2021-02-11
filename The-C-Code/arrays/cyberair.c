#include <stdio.h>

int reservestat(int a);
int printstat();
int seat[10] = {0};
int count = 0;

int main() {

	int reserve;
	while (count < 10) {
		printstat();
		printf("Which seat would you like to reserve? ");
			scanf("%d", &reserve);
		reservestat(reserve);
	}

	printf("\n'This is your pilot speaking. We are clear for takeoff!'\n");
	printf("*Cabin cheers*\n\n");

	return 0;
}

int reservestat(int r) {

	if (r > 10) {
		printf("That seat doesn't exist. Please request one that does!\n");
		return 0;
	} else if (r < 1) {
		printf("That seat doesn't exist. You can request one that does!\n");
		return 0;
	}
	if (seat[r-1] == 0) {
		seat[r-1] = 1;
		printf("Seat #%d reserved!\n", r);
		count++;
	}
	else if (seat[r-1] == 1) {
		printf("This seat is already reserved!\n");
	}
}

int printstat() {

	printf("\nCurrent reservation status:\n");
	if (seat[0] == 0) {
		printf("Seat #1: Available\n");
	} else {printf("Seat #1: Unavailable\n");}
	if (seat[1] == 0) {
		printf("Seat #2: Available\n");
	} else {printf("Seat #2: Unavailable\n");}
	if (seat[2] == 0) {
		printf("Seat #3: Available\n");
	} else {printf("Seat #3: Unavailable\n");}
	if (seat[3] == 0) {
		printf("Seat #4: Available\n");
	} else {printf("Seat #4: Unavailable\n");}
	if (seat[4] == 0) {
		printf("Seat #5: Available\n");
	} else {printf("Seat #5: Unavailable\n");}
	if (seat[5] == 0) {
		printf("Seat #6: Available\n");
	} else {printf("Seat #6: Unavailable\n");}
	if (seat[6] == 0) {
		printf("Seat #7: Available\n");
	} else {printf("Seat #7: Unavailable\n");}
	if (seat[7] == 0) {
		printf("Seat #8: Available\n");
	} else {printf("Seat #8: Unavailable\n");}
	if (seat[8] == 0) {
		printf("Seat #9: Available\n");
	} else {printf("Seat #9: Unavailable\n");}
	if (seat[9] == 0) {
		printf("Seat #10: Available\n\n");
	} else {printf("Seat #10: Unavailable\n\n");}

	return 0;
}