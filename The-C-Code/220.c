#include <stdio.h>
#include <string.h>

char* splitNames(char fn[]){
	int i;
	int l = strlen(fn);
	for (i=0; i < l; i++) {
//	  printf("%16p | %c\n", fn+i, fn[i]);
	  if (fn[i] == ' ') {
		fn[i] = '\0';
		*first = fn;
		*last = &fn[i+1]; // Or, fn + i + 1
	  }
	}
}

int main() {

	char full_name[100] = {'\0'};
	printf("Enter your full name: ");
	fgets(full_name, 100, stdin);

	char *newline = strchr(full_name, '\n');

	if (newline != NULL) {
	  *newline = '\0';
	}

	printf("%s\n", full_name);

	char *first, *last;
	first = full_name;
	last = splitNames(full_name);
	printf("First: %s\nLast: %s\n", first, last);
	return 0;
}
