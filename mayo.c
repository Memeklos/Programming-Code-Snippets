#include <stdio.h>
#include <time.h>
#include <stdlib.h>

void printRay(int ray[], int size);
int main()
{
	// array of size 10, filled with random numbers between 0 & 15
	int ray[10]; // index value 0-9
	int c;
	srand(time(0));
	for (c = 0; c < 10; c++)
	{
		ray[c] = rand() % 16;
	}

	// print the random numbers
	printRay(ray, 10);
	// print the index of any 5, 9, or 12s
	for (c = 0; c < 10; c++)
	{
		switch (ray[c])
		{
			case 5:
			case 9:
			case 12:
				printf("Found a %2d at %2d\n", ray[c], c);
				break;

		}
	}
	return 0;
}

void printRay(int ray[], int size)
{
	int j;
	for (j = 0; j < size ; j++)
		printf("%3d - %3d\n", j, ray[j]);
}
