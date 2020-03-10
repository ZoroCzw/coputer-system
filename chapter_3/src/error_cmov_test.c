#include <stdio.h>

int error_cmov(int *p)
{
	return (p ? *p : 0);
}

int main()
{
	int a = 0;
	int *test = &a;

	error_cmov(test);
	return 0;
}
