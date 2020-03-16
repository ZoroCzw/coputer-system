#include <stdio.h>

int main()
{
	char c_p[10];
	int i_p[10];
	long l_p[10];

	printf("%15s %llx %llx\n", "char pointer", c_p, c_p + 1);
	printf("%15s %llx %llx\n", "int pointer", i_p, i_p + 1);
	printf("%15s %llx %llx\n", "long pointer", l_p, l_p + 1);

	return 0;
}
