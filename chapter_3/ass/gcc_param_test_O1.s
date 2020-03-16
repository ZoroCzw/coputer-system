	.file	"param_test.c"
	.text
	.globl	param_7
	.type	param_7, @function
param_7:
.LFB23:
	.cfi_startproc
	addl	%esi, %edi
	addl	%edi, %edx
	addl	%edx, %ecx
	addl	%r8d, %ecx
	addl	%r9d, %ecx
	movl	%ecx, %eax
	addl	8(%rsp), %eax
	ret
	.cfi_endproc
.LFE23:
	.size	param_7, .-param_7
	.globl	param_6
	.type	param_6, @function
param_6:
.LFB24:
	.cfi_startproc
	addl	%esi, %edi
	addl	%edi, %edx
	addl	%edx, %ecx
	addl	%r8d, %ecx
	leal	(%rcx,%r9,2), %eax
	ret
	.cfi_endproc
.LFE24:
	.size	param_6, .-param_6
	.globl	param_struct
	.type	param_struct, @function
param_struct:
.LFB25:
	.cfi_startproc
	movl	8(%rsp), %eax
	addl	16(%rsp), %eax
	addl	24(%rsp), %eax
	ret
	.cfi_endproc
.LFE25:
	.size	param_struct, .-param_struct
	.globl	ptr_test
	.type	ptr_test, @function
ptr_test:
.LFB26:
	.cfi_startproc
	movl	4(%rdi), %eax
	addl	(%rdi), %eax
	addl	8(%rdi), %eax
	ret
	.cfi_endproc
.LFE26:
	.size	ptr_test, .-ptr_test
	.globl	main
	.type	main, @function
main:
.LFB27:
	.cfi_startproc
	movl	$55, %eax
	ret
	.cfi_endproc
.LFE27:
	.size	main, .-main
	.globl	gl_test
	.data
	.align 4
	.type	gl_test, @object
	.size	gl_test, 4
gl_test:
	.long	2
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
