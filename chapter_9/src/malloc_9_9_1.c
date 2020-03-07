#include <stdio.h>
#include <stdlib.h>

int main()
{
	char *p1 = NULL, *p2 = NULL, *p3 = NULL, *p4 = NULL;
	char *tmp1 = NULL, *tmp2;

	p1 = (char *)malloc(50 * sizeof(char));
	tmp1 = p1;
	printf("[%s %02d] p1(%p)\n", __func__, __LINE__, p1);

	p2 = (char *)malloc(10000 * sizeof(char));
	tmp2 = p2;
	printf("[%s %02d] p2(%p)\n", __func__, __LINE__, p2);
	printf("[%s %02d] *p2(%p) = %x\n", __func__, __LINE__, p2, *p2);
	*p2 = 0;
	printf("[%s %02d] *p2(%p) = %x\n", __func__, __LINE__, p2, *p2);
	for (int i = 0; i < 10000; i++) {
		*(p1++) = 0xa;
	}
	//p1 = tmp1;
	//for (int i = 0; i < 50; i++) {
	//	*(p1++) = i;
	//}

	printf("[%s %02d] *p2(%p) = %x\n", __func__, __LINE__, p2, *p2);
	free(p1);
	printf("[%s %02d] Byte Alignment\n", __func__, __LINE__);
	if (p2)
		free(p2);
	//printf("[%s %02d] Byte Alignment\n", __func__, __LINE__);

	//p1 = tmp1;

	//p3 = (char *)malloc(16 * sizeof(char));
	//printf("[%s %02d] p3(%p)\n", __func__, __LINE__, p3);

	//printf("[%s %02d] *p2(%p) = %x\n", __func__, __LINE__, p2, *p2);
	//p2 = tmp2;
	//free(p2);
	//
	//p4 = (char *)malloc(sizeof(char));
	//printf("[%s %02d] p4(%p)\n", __func__, __LINE__, p4);

	//*p4 = 0xa;

	//printf("[%s %02d] *p2(%p) = %x\n", __func__, __LINE__, p2, *p2);

	//p1 = tmp1;
	//free(p1);
	//free(p3);
	//free(p4);
	//
	return 0;
}
