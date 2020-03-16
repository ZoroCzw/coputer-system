#include <stdio.h>
#include "mm.h"

void func_ijk(long A[LENGTH][LENGTH], long B[LENGTH][LENGTH],
	long C[LENGTH][LENGTH], int n)
{
	int i = 0, j = 0, k = 0;
	long sum = 0;

	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			sum = 0;
			for (k = 0; k < n; k++)
				sum += A[i][k]*B[k][j];
			C[i][j] +=sum;
		}
	}
}

void func_jik(long A[LENGTH][LENGTH], long B[LENGTH][LENGTH],
	long C[LENGTH][LENGTH], int n)
{
	int i = 0, j = 0, k = 0;
	long sum = 0;

	for (j = 0; j < n; j++) {
		for (i = 0; i < n; i++) {
			sum = 0;
			for (k = 0; k < n; k++)
				sum += A[i][k]*B[k][j];
			C[i][j] +=sum;
		}
	}
}

void func_jki(long A[LENGTH][LENGTH], long B[LENGTH][LENGTH],
	long C[LENGTH][LENGTH], int n)
{
	int i = 0, j = 0, k = 0;
	long r = 0;

	for (j = 0; j < n; j++) {
		for (k = 0; k < n; k++) {
			r = B[k][j];
			for (i = 0; i < n; i++)
				C[i][j] += A[i][k]*r;
		}
	}
}

void func_kji(long A[LENGTH][LENGTH], long B[LENGTH][LENGTH],
	long C[LENGTH][LENGTH], int n)
{
	int i = 0, j = 0, k = 0;
	long r = 0;

	for (k = 0; k < n; k++) {
		for (j = 0; j < n; j++) {
			r = B[k][j];
			for (i = 0; i < n; i++)
				C[i][j] += A[i][k]*r;
		}
	}
}

void func_kij(long A[LENGTH][LENGTH], long B[LENGTH][LENGTH],
	long C[LENGTH][LENGTH], int n)
{
	int i = 0, j = 0, k = 0;
	long r = 0;

	for (k = 0; k < n; k++) {
		for (i = 0; i < n; i++) {
			r = A[i][k];
			for (i = 0; i < n; i++)
				C[i][j] += r * B[k][j];
		}
	}
}

void func_ikj(long A[LENGTH][LENGTH], long B[LENGTH][LENGTH],
	long C[LENGTH][LENGTH], int n)
{
	int i = 0, j = 0, k = 0;
	long r = 0;

	for (k = 0; k < n; k++) {
		for (i = 0; i < n; i++) {
			r = A[i][k];
			for (i = 0; i < n; i++)
				C[i][j] += r * B[k][j];
		}
	}
}
void (*func[])(long A[LENGTH][LENGTH], long B[LENGTH][LENGTH],
	long C[LENGTH][LENGTH], int n) = {
	func_ijk,
	func_jik,
	func_jki,
	func_kji,
	func_kij,
	func_ikj,
};
