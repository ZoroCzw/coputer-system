#include <stdio.h>

int cmov_test(int a)
{
	return a ? (a + 1) : (a - 1);
}

int jump_test(int a)
{
	int b = 0;
	if (a) {
		b = a + 1;
		printf("%d", b);
	} else {
		b = a - 1;
	}

	return b;
}

int main()
{
	int a = 0;

	cmov_test(a);
	jump_test(a);

	return 0;
}
