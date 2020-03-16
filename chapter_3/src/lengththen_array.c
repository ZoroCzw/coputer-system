#include <stdio.h>

#define LENGTH	100

void length_then_array(int n, int idx, int *val)
{
	int array[n];

	*val = array[idx];
}

void fixed_array(int idx, int *val)
{
	int array[LENGTH] = {0};

	*val = array[idx];
}
