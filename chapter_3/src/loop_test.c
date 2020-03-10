#include <stdio.h>

int normal_for_loop()
{
	int i = 0;
	int j = 0;

	for(i = 0; i < 10; i++) {
		j++;
	}

	return j;
}

int dead_for_loop(void)
{
	int i = 0;

	for( ; i < 1; i++) {

	}

	return i;
}

int main()
{
	int j = 0, k = 0;

	j = normal_for_loop();
	k = dead_for_loop();

	return j + k;
}
