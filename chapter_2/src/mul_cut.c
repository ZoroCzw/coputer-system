#include <stdio.h>

int main()
{
	int s_int = 1U << 30;

	printf("%20s %d\n", "before mul", s_int);
	printf("%20s %d\n", "after mul 2", s_int * 2);
	printf("%20s %d\n", "after mul 4", s_int * 4);

	return 0;
}
