#include <stdio.h>
#include "optimization.h"

static long twiddle1(long *xp, long *yp)
{
	*xp += *yp;
	*xp += *yp;
}

static long twiddle2(long *xp, long *yp)
{
	*xp = 2 * *yp;
}

long (*func[])(long*, long*) = {
	twiddle1,
	twiddle2,
};
