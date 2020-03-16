#include <stdio.h>
#include <string.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <time.h>
#include "combine.h"

#define MUL 100L

int main(int argc, char **argv)
{
	struct combine combine;
	int func_num, length, op;
	long real_length;
	clock_t begin , end;

	data_t dest;

	if (argc != 4) {
		printf("argc should be 4\n");
		return -EINVAL;
	}

	func_num = atoi(argv[1]);
	length = atoi(argv[2]);
	op = atoi(argv[3]);

	real_length = (long)length * MUL;

	if (init_combine(&combine, real_length)) {
		printf("init combine fail\n");
		return -1;
	}

	begin = clock();
	combine.ops[func_num - 1](combine.priv, &dest, op);
	end = clock();

	printf("%5s %2d %5s %10ld %5s %d %10s %ld\n", "func num", func_num,
		"real_length", real_length, "op", op, "time", (end - begin));

	delete_combine(&combine);
	return 0;
}
