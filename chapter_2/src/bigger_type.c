#include <stdio.h>

int main()
{
	unsigned int max_us_int = -1;

	printf("%20s %ld\n%20s %ld\n", "size first", (long)max_us_int,
		"signed first", (long)((int)max_us_int));
	return 0;
}
