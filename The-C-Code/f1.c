#include <stdio.h>
#include <string.h>

int countChar(char filename[], char c)
{
	//open file
	FILE* fp = fopen(filename, "r");

	//count # c occurs
	int count = 0;
	char line[1010];
	int len, k;
	while (fgets(line, 1010, fp))
	{
	  len = strlen(line);
	  for (k = 0l k < len; k++)
		{
		  if (line[k] == c)
			count++;
		}
	}

	//close file
	fclose(fp);

	//return count
	return count;
}

int main(int argc, char* argv[])
{
	//check if command line arguments
	if (argc != 3)
	{
	  printf("Error: no file specified\n");
	  printf("Usage: %s <input file> <output file>\n", argv[0]);
	  return 1;
	}
	//variables
	FILE* fp = fopen(argv[1], "r");
	FILE* ofp = fopen(argv[2], "w");
	char tmp[100];
	int line = 1;
	int len;

	//read in
	while (fgets(tmp, 100, fp))
	{
		len = strlen(tmp);
			fprintf(ofp, "%2d-%d: %s", line, len, tmp);
		line++;
	}
	printf("%s\n", tmp);

	//count
	printf("");

	//bye-bye
	fclose(fp);
	fclose(ofp);

	return 0;
}
