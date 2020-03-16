#include <stdio.h>

int gl_test = 2;

struct param {
	int param_1;
	//int param_2;
	long param_3;
	long param_4;
};

int param_7(int p1, int p2 , int p3, int p4, int p5 , int p6, int p7)
{
	return p1 + p2 + p3 + p4 + p5 + p6 + p7;
}
int param_6(int p1, int p2, int p3, int p4, int p5, int p6)
{
	return param_7(p1, p2, p3, p4, p5, p6, p6);
}

int param_struct(struct param param)
{
	return param.param_1 +/* param.param_2 +*/ param.param_3 + param.param_4;
}

int ptr_test(int *p)
{
	return p[0] + p[1] + p[2];
}

int main()
{
	int i = 0;
	i += param_6(1, 2, 3, 4, 5, 6);
	i += param_7(1, 2, 3, 4, 5, 6, 7);

	return i;
}
