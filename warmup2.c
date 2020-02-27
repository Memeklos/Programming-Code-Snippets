#include <stdio.h>
int main()
{
	int i = 5;
	float f = 6.23;
	printf("%d\n", i);
	printf("%3d\n", i);
	printf("%03d\n", i);
	printf("%.3d\n", i);

	printf("%f\n", f);
	printf("%2.2f\n", f);

	printf("%c\n", 'A');
	printf("%c\n", 65);
	printf("%c\n", 0x41);

	printf("Put yo int there: ");
		scanf("%d", &i);
	printf("i is %d\n", i);
	return 0;
}
