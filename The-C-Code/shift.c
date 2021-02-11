#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[])
{

	//get a string
	if (argc != 2)
		return 1;

	//encrypt
	int c;
	int len = strlen(argv[1]);

	for (c = 0; c < len; c++)
	{
	  argv[1][c] -= 3;
	}

	//print string
	printf("%s\n", argv[1]);

return 0;
}
