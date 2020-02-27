#include <stdio.h>
int main() {

	int input;

	printf("\nPlease enter your score to find out your grade: ");
		scanf("%d", &input);

	if ( input >= 90 && input < 101 ) {
		printf("You have an A!\n\n");
	}
	if else ( input >= 80 && input < 90 ) {
		printf("B like Be Better Next Time.\n\n");
	}
	if else ( input >= 70 && input < 80 ) {
		printf("C as in C You Later.\n\n");
	}
	if else ( input >= 60 && input < 70 ) {
		printf("D for Did You Even Try?\n\n");
	}
	if else ( input < 60 ) {
		printf("There's an F in the chat for you.\n\n");
	}
	else {
		printf("Boi you lyin'\n\n");
	}

	return 0;
}