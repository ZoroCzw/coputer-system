#include <stdio.h>


void case(int *data, int *dest)
{
	for (int i = 0; i < strlen(data); i++) {
		*dest = *dest + data[i];
	}
}

void better_case(int *data, int *dest)
{
	int tmp = 0;
	int length = strlen(data);	//函数调用挪到循环外
	
	for (int i = 0; i < strlen(data); i++) {
		tmp = tmp + data[i];
	}
	*dest += tmp;				//内存引用挪到循环外

}
