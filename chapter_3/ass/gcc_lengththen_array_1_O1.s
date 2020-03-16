	.file	"lengththen_array_1.c"
	.text
	.globl	length_then_array
	.type	length_then_array, @function
length_then_array:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movslq	%edi, %rax
	leaq	18(,%rax,4), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %r14
	leal	(%rdi,%rdi), %eax
	movslq	%eax, %rcx
	leaq	18(,%rcx,4), %rcx
	andq	$-16, %rcx
	subq	%rcx, %rsp
	movq	%rsp, %r15
	addl	%edi, %eax
	cltq
	leaq	18(,%rax,4), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %r13
	sall	$2, %edi
	movslq	%edi, %rdi
	leaq	16(,%rdi,4), %rax
	subq	%rax, %rsp
	movq	%rsp, %r12
	subq	%rax, %rsp
	movq	%rsp, %rbx
	subq	%rax, %rsp
	movq	%rsp, %r11
	subq	%rax, %rsp
	movq	%rsp, %r10
	subq	%rax, %rsp
	movq	%rsp, %r9
	subq	%rax, %rsp
	movq	%rsp, %r8
	subq	%rax, %rsp
	movq	%rsp, %rdi
	subq	%rax, %rsp
	movq	%rsp, %rcx
	subq	%rax, %rsp
	movq	%rsp, -72(%rbp)
	subq	%rax, %rsp
	movq	%rsp, -80(%rbp)
	subq	%rax, %rsp
	movq	%rsp, %rax
	movslq	%esi, %rsi
	movl	(%r15,%rsi,4), %r15d
	addl	(%r14,%rsi,4), %r15d
	addl	0(%r13,%rsi,4), %r15d
	addl	(%r12,%rsi,4), %r15d
	addl	(%rbx,%rsi,4), %r15d
	addl	(%r11,%rsi,4), %r15d
	addl	(%r10,%rsi,4), %r15d
	movl	%r15d, %r10d
	addl	(%r9,%rsi,4), %r10d
	movl	%r10d, %r9d
	addl	(%r8,%rsi,4), %r9d
	movl	%r9d, %r8d
	addl	(%rdi,%rsi,4), %r8d
	movl	%r8d, %edi
	addl	(%rcx,%rsi,4), %edi
	movl	%edi, %ecx
	movq	-72(%rbp), %rbx
	addl	(%rbx,%rsi,4), %ecx
	movq	-80(%rbp), %rbx
	addl	(%rbx,%rsi,4), %ecx
	addl	(%rax,%rsi,4), %ecx
	movl	%ecx, (%rdx)
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L4
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L4:
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
