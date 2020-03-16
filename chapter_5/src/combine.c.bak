#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>

#define IDENT 1
#define OP_ADD +
#define OP_MUL *

#define LEN			10000L
typedef long data_t;

typedef struct {
	long len;
	data_t *data;
} vec_rec, *vec_ptr;

vec_ptr new_vec(long len)
{
	vec_ptr result = (vec_ptr) malloc(sizeof(vec_rec));
	data_t *data = NULL;
	if (!result)
		return NULL;

	result->len = len;
	if (len > 0) {
		data = (data_t *)calloc(len, sizeof(data_t));
		if (!data) {
			free((void *) result);
			return NULL;
		}
	}
	result->data = data;

	return result;
}

int get_vec_element(vec_ptr v, long index, data_t *dest)
{
	if (index < 0 || index >= v->len)
		return 0;
	*dest = v->data[index];

	return 1;
}

long vec_length(vec_ptr v)
{
	return v->len;
}

data_t *get_vec_start(vec_ptr v)
{
	return v->data;
}

static inline void combine1_add_in(vec_ptr v, data_t *dest)
{
	long i;

	*dest = IDENT;
	for (i = 0; i < vec_length(v); i++) {
		data_t val;
		get_vec_element(v, i, &val);
		*dest = *dest OP_ADD val;
	}
}

static inline void combine1_mul_in(vec_ptr v, data_t *dest)
{
	long i;

	*dest = IDENT;
	for (i = 0; i < vec_length(v); i++) {
		data_t val;
		get_vec_element(v, i, &val);
		*dest = *dest OP_MUL val;
	}
}

void combine1_add(vec_ptr v, data_t *dest)
{
	long i;

	*dest = IDENT;
	for (i = 0; i < vec_length(v); i++) {
		data_t val;
		get_vec_element(v, i, &val);
		*dest = *dest OP_ADD val;
	}
}

void combine1_mul(vec_ptr v, data_t *dest)
{
	long i;

	*dest = IDENT;
	for (i = 0; i < vec_length(v); i++) {
		data_t val;
		get_vec_element(v, i, &val);
		*dest = *dest OP_MUL val;
	}
}

void combine2_add(vec_ptr v, data_t *dest)
{
	long i;
	long length = vec_length(v);

	*dest = IDENT;
	for (i = 0; i < length; i++) {
		data_t val;
		get_vec_element(v, i, &val);
		*dest = *dest OP_ADD val;
	}
}

void combine2_mul(vec_ptr v, data_t *dest)
{
	long i;
	long length = vec_length(v);

	*dest = IDENT;
	for (i = 0; i < length; i++) {
		data_t val;
		get_vec_element(v, i, &val);
		*dest = *dest OP_MUL val;
	}
}

void combine3_add(vec_ptr v, data_t *dest)
{
	long i;
	long length = vec_length(v);
	data_t *data = get_vec_start(v);

	*dest = IDENT;
	for (i = 0; i < length; i++) {
		*dest = *dest OP_ADD data[i];
	}
}

void combine3_mul(vec_ptr v, data_t *dest)
{
	long i;
	long length = vec_length(v);
	data_t *data = get_vec_start(v);

	*dest = IDENT;
	for (i = 0; i < length; i++) {
		*dest = *dest OP_MUL data[i];
	}
}

void combine4_add(vec_ptr v, data_t *dest)
{
	long i;
	long length = vec_length(v);
	data_t *data = get_vec_start(v);
	data_t acc = IDENT;

	for (i = 0; i < length; i++) {
		acc = acc OP_ADD data[i];
	}
	*dest = acc;
}

void combine4_mul(vec_ptr v, data_t *dest)
{
	long i;
	long length = vec_length(v);
	data_t *data = get_vec_start(v);
	data_t acc = IDENT;
	for (i = 0; i < length; i++) {
		acc = acc OP_MUL data[i];
	}
	*dest = acc;
}

void combine5_add(vec_ptr v, data_t *dest)
{
	long i;
	long length = vec_length(v);
	long limit = length - 1;
	data_t *data = get_vec_start(v);
	data_t acc = IDENT;

	for (i = 0; i < limit; i++) {
		acc = (acc OP_ADD data[i]) OP_ADD data[i + 1];
	}

	for ( ; i < length; i++) {
		acc = acc OP_ADD data[i];
	}
	*dest = acc;
}

void combine5_mul(vec_ptr v, data_t *dest)
{
	long i;
	long length = vec_length(v);
	long limit = length - 1;
	data_t *data = get_vec_start(v);
	data_t acc = IDENT;

	for (i = 0; i < limit; i++) {
		acc = (acc OP_MUL data[i]) OP_MUL data[i + 1];
	}

	for ( ; i < length; i++) {
		acc = acc OP_MUL data[i];
	}
	*dest = acc;
}

int main(int argc, char **argv)
{
	vec_ptr v;
	data_t *dest;
	clock_t begin , end;

	if (argc != 2) {
		printf("argc should be 2\n");
		return -EINVAL;
	}

	v = new_vec(LEN);
	dest = (data_t *)malloc(sizeof(data_t));
	int s = atoi(argv[1]);

	switch (s) {
		case 1:	
			begin = clock();
			combine1_add(v, dest);
			end = clock();	
			printf("combine1 add %ld data %ld us\n", LEN, (end - begin));
			break;

		case 2:
			begin = clock();
			combine1_mul(v, dest);
			end = clock();	
			printf("combine1 mul %ld data %ld us\n", LEN, (end - begin));
			break;

		case 3:
			begin = clock();
			combine2_add(v, dest);
			end = clock();	
			printf("combine2 add %ld data %ld us\n", LEN, (end - begin));
			break;

		case 4:
			begin = clock();
			combine2_mul(v, dest);
			end = clock();	
			printf("combine2 mul %ld data %ld us\n", LEN, (end - begin));
			break;

		case 5:
			begin = clock();
			combine3_add(v, dest);
			end = clock();	
			printf("combine3 add %ld data %ld us\n", LEN, (end - begin));
			break;

		case 6:
			begin = clock();
			combine3_mul(v, dest);
			end = clock();	
			printf("combine3 mul %ld data %ld us\n", LEN, (end - begin));
			break;

		case 7:
			begin = clock();
			combine4_add(v, dest);
			end = clock();	
			printf("combine4 add %ld data %ld us\n", LEN, (end - begin));
			break;

		case 8:
			begin = clock();
			combine4_mul(v, dest);
			end = clock();	
			printf("combine4 mul %ld data %ld us\n", LEN, (end - begin));
			break;

		case 9:
			begin = clock();
			combine5_add(v, dest);
			end = clock();	
			printf("combine5 add %ld data %ld us\n", LEN, (end - begin));
			break;

		case 10:
			begin = clock();
			combine5_mul(v, dest);
			end = clock();	
			printf("combine5 mul %ld data %ld us\n", LEN, (end - begin));
			break;

		default:
			printf("input error, no support!\n");
			return -EINVAL;
	}
	return 0;
}
