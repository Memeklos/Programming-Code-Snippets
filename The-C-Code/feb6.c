#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
  if (argc == 2)
  {
  //Get integer

  //Print integer and a ":"
  int num = atoi(argv[1]);
  printf("%d: ", num);

  //print the number of the # the user specified
  int z;
  for (z = 0; z < num; z++)
	printf("#");
  printf("\n");

  }

  return 0;
}
