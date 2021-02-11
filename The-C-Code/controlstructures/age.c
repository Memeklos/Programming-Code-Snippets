#include <stdio.h>

int main() {

	int grade;

	printf("\nCurrent grade: ");
		scanf("%d",&grade);

	switch (grade)
	{
		case 90 ... 100:
			printf("A for Amazing\n\n");
			break;
		case 80 ... 89:
			printf("B like Be Better Next Time\n\n");
			break;
		case 70 ... 79:
			printf("C as in C You Later\n\n");
			break;
		case 69:
			printf("Nice\n\n");
			break;
		case 60 ... 68:
			printf("D for Did You Even Try?\n\nd");
			break;
		case 1 ... 59:
			printf("Got an F in the chat for you, boi\n\n");
			break;
		case 420:
			printf("You high as a kite\n\n");
			break;
		default:
			printf("Boi you lyin");


	}

	return 0;
}