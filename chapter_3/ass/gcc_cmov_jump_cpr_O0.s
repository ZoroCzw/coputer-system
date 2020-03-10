	.file	"cmov_jump_cpr.c"
	.text
	.globl	cmov_test
	.type	cmov_test, @function
cmov_test:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	jmp	.L4
.L2:
	movl	-4(%rbp), %eax
	subl	$1, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cmov_test, .-cmov_test
	.globl	jump_test
	.type	jump_test, @function
jump_test:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L6
	movl	-4(%rbp), %eax
	addl	$1, %eax
	jmp	.L7
.L6:
	movl	-4(%rbp), %eax
	subl	$1, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	jump_test, .-jump_test
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	cmov_test
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	jump_test
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
