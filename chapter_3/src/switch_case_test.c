#include <stdio.h>

void switch_case_test(int x, int n, int *dest)
{
	int val = x;

	switch (n) {
		case 100:
			val *= 13;
			break;
		case 102:
			val += 1;
			break;
		case 103:
		case 104:
			val --;
			break;
		default:
			val = 0;
	}

	*dest = val;
}

int main()
{
	int x = 100;
	int i = 1;
	int d = 0;

	switch_case_test(x, i, &d);

	return x + i + d;
}
