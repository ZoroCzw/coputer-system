#include <stdio.h>
#include <time.h>

static void twiddle1(long *xp, long *yp)
{
	*xp += *yp;
	*xp += *yp;
}

static void twiddle2(long *xp, long *yp)
{
	*xp += 2* *yp;
}

static inline void twiddle_in1(long *xp, long *yp)
{
	*xp += *yp;
	*xp += *yp;
}

static inline void twiddle_in2(long *xp, long *yp)
{
	*xp += 2* *yp;
}

int main()
{
	long x = 0, y = 1;
	long *xp = &x, *yp = &y;
	unsigned long cycle;
	clock_t begin , end;

	begin = clock();
	for (int i = 0; i < 100000; i++) {
		twiddle1(xp, yp);	
	}
	end = clock();
	cycle = end - begin;
	printf("twiddle1 cycle %ld us\n", cycle);

	x = 0;
	y = 0;
	begin = clock();
	for (int i = 0; i < 100000; i++) {
		twiddle2(xp, yp);	
	}
	end = clock();
	cycle = end - begin;
	printf("twiddle2 cycle %ld us\n", cycle);

	twiddle2(xp, xp);	
	//x = 0;
	//y = 0;
	//begin = clock();
	//for (int i = 0; i < 100000; i++) {
	//	twiddle_in1(xp, yp);	
	//}
	//end = clock();
	//cycle = end - begin;
	//printf("inline twiddle1 cycle %ld us\n", cycle);

	//x = 0;
	//y = 0;
	//begin = clock();
	//for (int i = 0; i < 100000; i++) {
	//	twiddle_in2(xp, yp);	
	//}
	//end = clock();
	//cycle = end - begin;
	//printf("inline twiddle2 cycle %ld us\n", cycle);

	x = 0;
	y = 0;
	begin = clock();
	for (int i = 0; i < 100000; i++) {
		*xp += *yp;
		*xp += *yp;
	}
	end = clock();
	cycle = end - begin;
	printf("twiddle1 out fun cycle %ld us\n", cycle);

	x = 0;
	y = 0;
	begin = clock();
	for (int i = 0; i < 100000; i++) {
		*xp += 2* *yp;
	}
	end = clock();
	cycle = end - begin;
	printf("twiddle2 out fun cycle %ld us\n", cycle);

	return 0;
}
