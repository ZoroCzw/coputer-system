#include <stdio.h>

int main()
{
	unsigned int un_int_max = -1;
	int s_int_max = (1UL << 31) - 1;
	unsigned int un_int = 10;
	unsigned long un_long = 0, un_long_strong = 0;
	unsigned int un_int_cpr = 0;
	long s_long = 0, s_long_cpr = 0;
	long long_rev = 0, long_rev_strong;
	long itol = 10;

	un_long = un_int_max + 1;
	un_long_strong = (unsigned long)un_int_max + 1;
	un_int_cpr = un_int_max + 1;
	s_long = s_int_max + un_int;
	s_long_cpr = s_int_max + (int)un_int;
	long_rev = itol + s_int_max;
	long_rev_strong = (int)itol + s_int_max;

	printf("%20s %u\n",  "un_int_max = ", un_int_max);
	printf("%20s %d\n",  "s_int_max = ", s_int_max);
	printf("%20s %lu\n", "un_long = ", un_long);
	printf("%20s %lu\n", "un_long_strong = ", un_long_strong);
	printf("%20s %u\n",  "un_int_cpr = ", un_int_cpr);
	printf("%20s %ld\n", "long_rev = ", long_rev);
	printf("%20s %ld\n", "long_rev_strong = ", long_rev_strong);

	return 0;
}
