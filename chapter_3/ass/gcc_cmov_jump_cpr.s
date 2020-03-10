	.file	"cmov_jump_cpr.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L3
.L2:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.L3:
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L4
	movl	-8(%rbp), %eax
	addl	$1, %eax
	jmp	.L5
.L4:
	movl	-8(%rbp), %eax
	subl	$1, %eax
.L5:
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
