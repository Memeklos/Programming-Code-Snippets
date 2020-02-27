#include <stdio.h>

int isEe(int n)
{
	if (n % 2 == 0)
		return 1;
	else
		return 0;
}
void printA(int ree[], int l)
{
	int i;
	for (i =0; i < 5; ++i)
	{
		printf("%d - %d\n", i, ree[i]);
		if (isEe(ree[i]))
			printf(" - even\n");
		else
			printf(" - odd\n");
	}

}
int main() {

	int ree[5]={3,6,88,42,69};
	printA(ree, 5);
	return 0;
}
