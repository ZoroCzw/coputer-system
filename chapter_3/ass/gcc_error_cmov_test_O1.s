	.file	"error_cmov_test.c"
	.text
	.globl	error_cmov
	.type	error_cmov, @function
error_cmov:
.LFB23:
	.cfi_startproc
	movl	$0, %eax
	testq	%rdi, %rdi
	je	.L1
	movl	(%rdi), %eax
.L1:
	rep ret
	.cfi_endproc
.LFE23:
	.size	error_cmov, .-error_cmov
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
