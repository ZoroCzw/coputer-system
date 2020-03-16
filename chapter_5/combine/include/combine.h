#ifndef __COMBINE_H_
#define __COMBINE_H_

typedef long data_t;
#define FUNC_NUM 8

struct combine {
	/* Private */
	void *priv;
	/* public fun ops */
	void (* ops[FUNC_NUM])(void *v, data_t *dest, int op_type);
};

/* 构造函数 */
extern int init_combine(struct combine *combine, long length);
/* 析构函数 */
extern void delete_combine(struct combine *combine);

#endif
