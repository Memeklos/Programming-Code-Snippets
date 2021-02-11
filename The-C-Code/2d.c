#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void printArray(int arr[][4], int rows, int cols);

int main()
{
  //declare two 2D arrays (first one pre-assigned numbers)
  int arrOne[2][4] = {{5,1,3,8}, {56,7,78,2}};
  int arrTwo[2][4];
  int row, col;

  //fill 2nd array with random numbers
  for (row = 0; row < 2; row++)
  {
	for (col = 0; col < 4; col++)
	{
	  arrTwo[row][col] = rand() % 10 + 1;
	}
  }
  //print both arrays
  printArray(ArrOne, row, 2, 4);

  for(row = 0; row < 2; row++)
  {
	for (col = 0; col < 4; col++)
	{
	  printf("%2d ", arrOne[row][col] + arrTwo[row][col]);
	}
	printf("\n");
  }
  for(row = 0; row < 2; row++)
  {
	for (col = 0; col < 4; col++)
	{
	  printf("%2d ", arrTwo[row][col]);
	}
	printf("\n");
  }
  return 0;
}
void printArray(int arr[][4], int rows, int cols)
{
  int row, col;

  for(row = 0; row < 2; row++)
  {
	for (col = 0; col < 4; col++)
	{
	  printf("%2d ", arrOne[row][col] + arrTwo[row][col]);
	}
	printf("\n");
  }
  for(row = 0; row < 2; row++)
  {
	for (col = 0; col < 4; col++)
	{
	  printf("%2d ", arrTwo[row][col]);
	}
	printf("\n");
  }
}
