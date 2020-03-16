#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include "mm.h"

int main(int argc, char **argv)
{
	int type;
	clock_t begin , end;
	long A[LENGTH][LENGTH];
	long B[LENGTH][LENGTH];
	long C[LENGTH][LENGTH];
	type = atoi(argv[1]);
	begin = clock();
	func[type](A, B, C, LENGTH);
	end = clock();
	printf("%5s %2d %10s %10ld\n", "type", type, "time", (end - begin));

	return 0;
}
