#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
  //open a file specified
  FILE *fp = fopen(argv[1], "r");

  //store each line
  char lines[10][110];
  int linec = 0;
  int longLine = 0;
  while (fgets(lines[linec], 110, fp) != NULL)
  {
  }

  //print the longest line only

  return 0;
}
