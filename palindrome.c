#include <stdio.h>
#include <string.h>

int isPalindrome(char str[])
{
	int len = strlen(str);
	int i, pal = 1;
	str[len-1] = '\0';
	len--;

	for (i = 0; i < len/2; i++)
	{
		if (str[i] != str[len-i-1])
			pal = 0;
	}
	return pal;
}

int main()
{
	char str[100];
	printf("Enter a string: ");

	//Safe read up to 99 characters including null
	fgets(str, 100, stdin);

	if (isPalindrome(str);)
		printf("%s is a palindrome\n", str);
	else
		printf("%s is not a palindrome\n", str);

	return 0;
}
