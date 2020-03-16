	.file	"optimization.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"argc should be 3"
.LC1:
	.string	"repeat"
.LC2:
	.string	"type"
.LC3:
	.string	"%5s %2d %5s %10d %10s %5ld\n"
.LC4:
	.string	"time"
	.text
	.globl	main
	.type	main, @function
main:
.LFB52:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	$1, 40(%rsp)
	movq	$2, 48(%rsp)
	cmpl	$3, %edi
	jne	.L9
	movq	%rsi, %rbx
	movq	8(%rsi), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol@PLT
	movq	%rax, 24(%rsp)
	movl	%eax, %ebp
	movq	16(%rbx), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol@PLT
	movq	%rax, %rbx
	movq	%rax, 16(%rsp)
	movl	%eax, %r12d
	call	clock@PLT
	movq	%rax, 8(%rsp)
	testl	%ebx, %ebx
	jle	.L4
	movl	$0, %ebx
	leaq	48(%rsp), %r15
	leaq	40(%rsp), %r14
	leaq	func(%rip), %r13
	movslq	%ebp, %rbp
.L5:
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	*0(%r13,%rbp,8)
	addl	$1, %ebx
	cmpl	%r12d, %ebx
	jne	.L5
.L4:
	call	clock@PLT
	subq	8(%rsp), %rax
	pushq	%rax
	.cfi_def_cfa_offset 136
	leaq	.LC4(%rip), %rax
	pushq	%rax
	.cfi_def_cfa_offset 144
	movl	32(%rsp), %r9d
	leaq	.LC1(%rip), %r8
	movl	40(%rsp), %ecx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$16, %rsp
	.cfi_def_cfa_offset 128
	movl	$0, %eax
.L1:
	movq	56(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L10
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-22, %eax
	jmp	.L1
.L10:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE52:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
