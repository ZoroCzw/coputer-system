	file	"lengththen_array.c"
	.text
	.globl	length_then_array
	.type	length_then_array, @function
length_then_array:
.LFB23:
	.cfi_startproc
	pushq	%rbp				/* save old %rbp */
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp			/* set length_then_array pointrt */
	.cfi_def_cfa_register 6
	subq	$16, %rsp			/* %rsp - 16 */
	movq	%fs:40, %rax        /* retrieve canary */
	movq	%rax, -8(%rbp)		/* store on stack */
	xorl	%eax, %eax			/* zoro out regiter */
	movslq	%edi, %rdi			/* param1 Sign extension*/
	leaq	18(,%rdi,4), %rax	/* %rax = 18 + 4 * n */
	andq	$-16, %rax			/* get low 4 bit */
	subq	%rax, %rsp			/* %rsp = %rsp - %rax */
	movq	%rsp, %rax			/* %rax = %rsp */
	movslq	%esi, %rsi			/* parmam 2 */
	movl	(%rax,%rsi,4), %eax /* %eax = %rax + 4 * idx */
	movl	%eax, (%rdx)		/* (val)= %eax */
	movq	-8(%rbp), %rax		/* retrieve canary */
	xorq	%fs:40, %rax		/* if =, goto lesve*/
	jne	.L4
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L4:							/* stack corrupted */
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE23:
	.size	length_then_array, .-length_then_array
	.globl	fixed_array
	.type	fixed_array, @function
fixed_array:
.LFB24:
	.cfi_startproc
	movl	$0, (%rsi)
	ret
	.cfi_endproc
.LFE24:
	.size	fixed_array, .-fixed_array
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
