#include <stdio.h>

int main(){

	int age;
	char init1;
	char init2;
	char init3;
	int num;
	char grade;
	float gpa;

	printf("Enter your age: \n");
	scanf("%d", &age);

	printf("Enter your initials: \n");
	scanf(" %c", &init1);
	scanf(" %c", &init2);
	scanf(" %c", &init3);

	printf("Enter your favorite number 1-100: \n");
	scanf("%d", &num);

	printf("Enter your desired grade: \n");
	scanf(" %c", &grade);

	printf("Enter your your GPA: \n");
	scanf("%f", &gpa);

	printf("Your age is %d\n", age);

	printf("Your initials are %c%c%c\n", init1, init2, init3);

	printf("Your favorite number is %d\n", num);

	printf("Your desired grade is %c\n", grade);

	printf("Your current GPA is %f\n", gpa);


	return 0;
}