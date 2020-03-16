	.file	"switch_case_test.c"
	.text
	.globl	switch_case_test
	.type	switch_case_test, @function
switch_case_test:
.LFB23:
	.cfi_startproc
	leal	1(%rdi), %eax
	cmpl	$102, %esi
	je	.L2
	cmpl	$102, %esi
	jg	.L4
	cmpl	$100, %esi
	jne	.L7
	leal	(%rdi,%rdi,2), %eax
	leal	(%rdi,%rax,4), %eax
	jmp	.L2
.L4:
	leal	-1(%rdi), %eax
	cmpl	$104, %esi
	jg	.L7
.L2:
	movl	%eax, (%rdx)
	ret
.L7:
	movl	$0, %eax
	jmp	.L2
	.cfi_endproc
.LFE23:
	.size	switch_case_test, .-switch_case_test
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	movl	$101, %eax
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
