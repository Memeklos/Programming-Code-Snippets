#include <stdio.h>

// Removes new line from a string. Returns 0 if not found; 1 if found
int removeNewline(char str[])
{
  int i = 0;
  int found = 0;
  while (str[i] != '\0') // iterate over string until a null byte is found
  {
    // change \n to \0 if found
    if (str[i] == '\n')
    {
      str[i] = '\0';
      found = 1;
    }
    i++;
  }
  return found;
}

void cleanup()
{
  //while (getchar() != '\n');
  
  /*char c;
  c = getchar();
  while (c != '\n')
    c = getchar();*/

  char c;
  scanf("%c", &c);
  while (c != '\n')
    scanf("%c", &c);
}

int stringLength(char str[], int size)
{
	int i = 0;
	while (i < size && str[i] != '\0')
		i++;
	return i;
}

int main()
{
  char hello[] = "hello";
  char howdy[5] = {'h', 'o', 'w', 'd', 'y'};
  char bye[4] = {'b', 'y', 'e', '\0'};

  printf("%s\n", hello);
  printf("%s\n", howdy);
  printf("%s\n", bye);

  char name[10];
  printf("Enter your name: ");
  //scanf("%9s", name);
  fgets(name, 10, stdin);
  int found = removeNewline(name);
  if (!found)
    cleanup();
  printf("Hi there %s\n", name);
  printf("Your name is %d characters long\n", stringLength(name, 10));

  printf("What's your favorite color: ");
  fgets(name, 10, stdin);
  printf("Cool, I like the color %s too\n", name);
  return 0;
}
