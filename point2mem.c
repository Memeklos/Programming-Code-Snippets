#include <stdio.h>

void recMath(int w, int h, int * a, int * p)
{
	// Rectangle math
	*a = w * h;
	*p = (w + h) * 2;
}

int main()
{
	int h, w, a, p;

	printf("Height: ");
	  scanf("%d", &h);
	printf("Width: ");
	  scanf("%d", &w);

	rectMath(w, h, &a, &p);
	printf("A rectangle of height %d and width %d has an area of %d and a perimeter of %d\n", h, w, a, p);

	return 0;
}
