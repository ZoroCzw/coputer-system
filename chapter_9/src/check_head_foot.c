#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
	char *p = NULL, *p_compare = NULL;
	char *p_head = NULL, *p_compare_head = NULL;

	p = (char *)malloc(16 * sizeof(char));
	memset(p, 0, 16 * sizeof(char));
	p_head = p - 16;

	p_compare = (char *)malloc(32 * sizeof(char));
	memset(p_compare, 0, 32 * sizeof(char));
	p_compare_head = p_compare - 16;

	for (int i = 0; i < 64; i++) {
		printf("size (16) [%02d] = %d\n", i - 16, *(p_head++));
	}

	for (int i = 0; i < 64; i++) {
		printf("size (32) [%02d] = %d\n", i - 16, *(p_compare_head++));
	}

	free(p);
	free(p_compare);

	return 0;
}
