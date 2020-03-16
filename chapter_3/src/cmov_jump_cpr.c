#include <stdio.h>

int cmov_test(int a)
{
	return a ? (a + 1) : (a - 1);
}

int jump_test(int a)
{
	if (a) {
		return a + 1;
	} else {
		return a - 1;
	}
}

int main()
{
	int a = 0;

	cmov_test(a);
	jump_test(a);

	return 0;
}
