#include <stdio.h>
#include <string.h>
int main()
{

	// prog-defined string
	//char str[] = "A series of unfortunate characters";
	char str[500];
	printf("Enter a string: ");
	fgets(str, 500, stdin);

	// count the a's
	int i, len, count = 0;
	len = strlen(str);
	for (i = 0; i < len; i++)
	{
		if (str[i] == 'a' || str[i] == 'A')
			count++;
	}

	// print the result
	printf("There are %d a's\n", count);

	return 0;
}
