#include <stdio.h>

#define LENGTH	100

void length_then_array(int n, int idx, int *val)
{
	int array[n];
	int array_1[2 * n];
	int array_2[3 * n];
	int array_3[4 * n];
	int array_4[4 * n];
	int array_5[4 * n];
	int array_6[4 * n];
	int array_7[4 * n];
	int array_8[4 * n];
	int array_9[4 * n];
	int array_10[4 * n];
	int array_11[4 * n];
	int array_12[4 * n];
	int array_13[4 * n];

	*val = array[idx] + array_1[idx] + array_2[idx] + array_3[idx]
		+ array_4[idx] + array_5[idx] + array_6[idx] + array_7[idx] + array_8[idx]
		+ array_9[idx] + array_10[idx] + array_11[idx] + array_12[idx] + array_13[idx];
}

void fixed_array(int idx, int *val)
{
	int array[LENGTH] = {0};

	*val = array[idx];
}
