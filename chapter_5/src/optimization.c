#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include "optimization.h"

int main(int argc, char **argv)
{
	int type, repeat;
	clock_t begin , end;
	long x = 1, y = 2, t;

	if (argc != 3) {
		printf("argc should be 3\n");
		return -EINVAL;
	}

	type = atoi(argv[1]);
	repeat = atoi(argv[2]);

	begin = clock();
	for (int i = 0; i < repeat; i++) {
		t = func[type](&x, &y);
		x = 1;
		y = 1;
	}
	end = clock();
	printf("%5s %2d %5s %10d %10s %10ld\n", "type", type, "repeat", repeat, "time", (end - begin));

	return 0;
}
