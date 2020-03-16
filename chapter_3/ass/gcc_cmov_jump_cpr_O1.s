	.file	"cmov_jump_cpr.c"
	.text
	.globl	cmov_test
	.type	cmov_test, @function
cmov_test:
.LFB23:
	.cfi_startproc
	leal	1(%rdi), %eax
	testl	%edi, %edi
	movl	$-1, %edx
	cmove	%edx, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	cmov_test, .-cmov_test
	.globl	jump_test
	.type	jump_test, @function
jump_test:
.LFB24:
	.cfi_startproc
	leal	1(%rdi), %eax
	testl	%edi, %edi
	movl	$-1, %edx
	cmove	%edx, %eax
	ret
	.cfi_endproc
.LFE24:
	.size	jump_test, .-jump_test
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
