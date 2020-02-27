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
int main()
{


   return 0;
}
