	.file	"switch_case_test.c"
	.text
	.globl	switch_case_test
	.type	switch_case_test, @function
switch_case_test:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	cmpl	$102, %eax
	je	.L3
	cmpl	$102, %eax
	jg	.L4
	cmpl	$100, %eax
	je	.L5
	jmp	.L2
.L4:
	cmpl	$104, %eax
	jg	.L2
	jmp	.L8
.L5:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L7
.L3:
	addl	$1, -4(%rbp)
	jmp	.L7
.L8:
	subl	$1, -4(%rbp)
	jmp	.L7
.L2:
	movl	$0, -4(%rbp)
.L7:
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	switch_case_test, .-switch_case_test
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$100, -16(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -20(%rbp)
	leaq	-20(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	switch_case_test
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
