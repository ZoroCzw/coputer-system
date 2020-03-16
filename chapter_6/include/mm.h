#ifndef __MM_H__
#define __MM_H__

#define LENGTH 500UL

extern void (*func[6])(long A[LENGTH][LENGTH], long B[LENGTH][LENGTH],
	long C[LENGTH][LENGTH], int n);

#endif
