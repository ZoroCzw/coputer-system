#include <stdio.h>

int main()
{
	int s_int = 0x1ff;

	printf("%25s %d %10s %d\n", "[signed] before cut", s_int,
		"after cut", (char)s_int);
	printf("%25s %d %10s %d\n", "[unsigned] before cut", s_int,
		"after cut", (unsigned char)s_int);

	return 0;
}
