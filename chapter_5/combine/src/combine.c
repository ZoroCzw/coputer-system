#include <stdio.h>
#include <string.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <stdint.h>
#include "combine.h"

#define IDENT 1

typedef struct {
	long len;
	data_t *data;
} vec_rec, *vec_ptr;

static vec_ptr new_vec(long len)
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

static int get_vec_element(vec_ptr v, long index, data_t *dest)
{
	if (index < 0 || index >= v->len)
		return 0;
	*dest = v->data[index];

	return 1;
}

static long vec_length(vec_ptr v)
{
	return v->len;
}

static data_t *get_vec_start(vec_ptr v)
{
	return v->data;
}

static void combine1(void *priv, data_t *dest, int op)
{
	long i;
	vec_ptr v = (vec_ptr)priv;

	*dest = IDENT;
	for (i = 0; i < vec_length(v); i++) {
		data_t val = 0;
		get_vec_element(v, i, &val);
		*dest = (op == 0) ?  (*dest + val) : (*dest * val);
	}

	return;
}

static void combine2(void *priv, data_t *dest, int op)
{
	long i;
	vec_ptr v = (vec_ptr)priv;
	long length = vec_length(v);

	*dest = IDENT;
	for (i = 0; i < length; i++) {
		data_t val = 0;
		get_vec_element(v, i, &val);
		*dest = (op == 0) ?  (*dest + val) : (*dest * val);
	}

	return;
}

static void combine3(void *priv, data_t *dest, int op)
{
	long i;
	vec_ptr v = (vec_ptr)priv;
	long length = vec_length(v);
	data_t *data = get_vec_start(v);

	*dest = IDENT;
	for (i = 0; i < length; i++) {
		*dest = (op == 0) ?  (*dest + data[i]) : (*dest * data[i]);
	}

	return;
}

static void combine3_plus(void *priv, data_t *dest, int op)
{
	long i;
	vec_ptr v = (vec_ptr)priv;
	long length = vec_length(v);
	long acc = IDENT;

	for (i = 0; i < length; i++) {
		data_t val = 0;
		get_vec_element(v, i, &val);
		acc = (op == 0) ?  (acc + val) : (acc * val);
	}
	*dest = acc;

	return;
}

static void combine4(void *priv, data_t *dest, int op)
{
	long i;
	vec_ptr v = (vec_ptr)priv;
	long length = vec_length(v);
	data_t acc = IDENT;
	data_t *data = get_vec_start(v);

	for (i = 0; i < length; i++) {
		acc = (op == 0) ?  (acc + data[i]) : (acc * data[i]);
	}

	*dest = acc;
	return;
}

static void combine5(void *priv, data_t *dest, int op)
{
	long i;
	vec_ptr v = (vec_ptr)priv;
	long length = vec_length(v);
	long limit = length - 1;
	data_t acc = IDENT;
	data_t *data = get_vec_start(v);

	for (i = 0; i < limit; i += 2) {
		acc = (op == 0) ?  ((acc + data[i]) + data[i + 1]) :
			((acc * data[i]) * data[i + 1]);
	}

	for (; i < length; i++) {
		acc = (op == 0) ? (acc + data[i]) : (acc * data[i]);
	}

	*dest = acc;
	return;
}

static void combine6(void *priv, data_t *dest, int op)
{
	long i;
	vec_ptr v = (vec_ptr)priv;
	long length = vec_length(v);
	long limit = length - 1;
	data_t acc0 = IDENT;
	data_t acc1 = IDENT;
	data_t *data = get_vec_start(v);

	for (i = 0; i < limit; i += 2) {
		acc0 = (op == 0) ?  (acc0 + data[i]) : (acc0 * data[i]);
		acc1 = (op == 0) ?  (acc1 + data[i + 1]) : (acc1 * data[i + 1]);
	}

	for (; i < length; i++) {
		acc0 = (op == 0) ? (acc0 + data[i]) : (acc0 * data[i]);
	}

	*dest = (op == 0) ? (acc0 + acc1) : (acc0 * acc1);
	return;
}

static void combine7(void *priv, data_t *dest, int op)
{
	long i;
	vec_ptr v = (vec_ptr)priv;
	long length = vec_length(v);
	long limit = length - 1;
	data_t acc = IDENT;
	data_t *data = get_vec_start(v);

	for (i = 0; i < limit; i += 2) {
		acc = (op == 0) ?  ((acc + (data[i]) + data[i + 1])) :
			((acc * (data[i]) * data[i + 1]));
	}

	for (; i < length; i++) {
		acc = (op == 0) ? (acc + data[i]) : (acc * data[i]);
	}

	*dest = acc;
	return;
}

void (* combine_ops[FUNC_NUM])(void *v, data_t *dest, int op_type) = {
	combine1,
	combine2,
	combine3,
	combine4,
	combine5,
	combine6,
	combine7,
	combine3_plus,
};

int init_combine(struct combine *combine, long length)
{
	vec_ptr priv;

	if ((priv = new_vec(length)) == NULL) {
		printf("malloc fail\n");
		return -ENOMEM;
	}
	combine->priv = (void *)priv;
	memcpy(combine->ops, combine_ops, FUNC_NUM * sizeof(void *));

	return 0;
}

void delete_combine(struct combine *combine)
{
	if ((vec_ptr)combine->priv) {
		free((vec_ptr)combine->priv);
	}

	return;
}
