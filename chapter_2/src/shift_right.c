#include <stdio.h>

int main()
{
    int s_int_pos = 1000, s_int_neg = -1000;
    unsigned int us_int = 0x1234;

    printf("%25s %#010x %20s %#010x \n", "signed positive number", s_int_pos,
		"after shift right", (s_int_pos >> 1));

    printf("%25s %#010x %20s %#010x \n", "signed negative number", s_int_neg,
		"after shift right",  (s_int_neg >> 1));

    printf("%25s %#010x %20s %#010x \n", "unsigned number", us_int,
		"after shift right", (us_int >> 1));

    return 0;
}

