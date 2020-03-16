	.file	"combine.c"
	.text
	.type	get_vec_element, @function
get_vec_element:
.LFB53:
	.cfi_startproc
	movl	$0, %eax
	testq	%rsi, %rsi
	js	.L1
	cmpq	%rsi, (%rdi)
	jle	.L1
	movq	8(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	movq	%rax, (%rdx)
	movl	$1, %eax
.L1:
	rep ret
	.cfi_endproc
.LFE53:
	.size	get_vec_element, .-get_vec_element
	.type	combine1, @function
combine1:
.LFB56:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	$1, (%rsi)
	cmpq	$0, (%rdi)
	jle	.L5
	movq	%rdi, %rbp
	movq	%rsi, %r12
	movl	%edx, %r13d
	movl	$0, %ebx
	movq	%rsp, %r14
	jmp	.L9
.L7:
	movq	(%r12), %rax
	imulq	(%rsp), %rax
.L8:
	movq	%rax, (%r12)
	addq	$1, %rbx
	cmpq	0(%rbp), %rbx
	jge	.L5
.L9:
	movq	$0, (%rsp)
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	get_vec_element
	testl	%r13d, %r13d
	jne	.L7
	movq	(%rsp), %rax
	addq	(%r12), %rax
	jmp	.L8
.L5:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L13
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE56:
	.size	combine1, .-combine1
	.type	combine7, @function
combine7:
.LFB63:
	.cfi_startproc
	movq	(%rdi), %r9
	leaq	-1(%r9), %r8
	movq	8(%rdi), %rdi
	testq	%r8, %r8
	jle	.L23
	movl	$1, %ecx
	movl	$0, %eax
	jmp	.L18
.L16:
	imulq	(%rdi,%rax,8), %rcx
	imulq	8(%rdi,%rax,8), %rcx
.L17:
	addq	$2, %rax
	cmpq	%rax, %r8
	jle	.L15
.L18:
	testl	%edx, %edx
	jne	.L16
	addq	(%rdi,%rax,8), %rcx
	addq	8(%rdi,%rax,8), %rcx
	jmp	.L17
.L23:
	movl	$1, %ecx
	movl	$0, %eax
.L15:
	cmpq	%rax, %r9
	jle	.L19
.L22:
	testl	%edx, %edx
	jne	.L20
	addq	(%rdi,%rax,8), %rcx
.L21:
	addq	$1, %rax
	cmpq	%r9, %rax
	jne	.L22
.L19:
	movq	%rcx, (%rsi)
	ret
.L20:
	imulq	(%rdi,%rax,8), %rcx
	jmp	.L21
	.cfi_endproc
.LFE63:
	.size	combine7, .-combine7
	.type	combine6, @function
combine6:
.LFB62:
	.cfi_startproc
	movq	(%rdi), %r10
	leaq	-1(%r10), %r9
	movq	8(%rdi), %rdi
	testq	%r9, %r9
	jle	.L37
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$0, %eax
	jmp	.L30
.L28:
	imulq	(%rdi,%rax,8), %rcx
	imulq	8(%rdi,%rax,8), %r8
.L29:
	addq	$2, %rax
	cmpq	%rax, %r9
	jle	.L27
.L30:
	testl	%edx, %edx
	jne	.L28
	addq	(%rdi,%rax,8), %rcx
	addq	8(%rdi,%rax,8), %r8
	jmp	.L29
.L37:
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$0, %eax
.L27:
	cmpq	%rax, %r10
	jle	.L31
.L34:
	testl	%edx, %edx
	jne	.L32
	addq	(%rdi,%rax,8), %rcx
.L33:
	addq	$1, %rax
	cmpq	%r10, %rax
	jne	.L34
.L31:
	testl	%edx, %edx
	je	.L40
	imulq	%r8, %rcx
.L36:
	movq	%rcx, (%rsi)
	ret
.L32:
	imulq	(%rdi,%rax,8), %rcx
	jmp	.L33
.L40:
	addq	%r8, %rcx
	jmp	.L36
	.cfi_endproc
.LFE62:
	.size	combine6, .-combine6
	.type	combine5, @function
combine5:
.LFB61:
	.cfi_startproc
	movq	(%rdi), %r9
	leaq	-1(%r9), %r8
	movq	8(%rdi), %rdi
	testq	%r8, %r8
	jle	.L50
	movl	$1, %ecx
	movl	$0, %eax
	jmp	.L45
.L43:
	imulq	(%rdi,%rax,8), %rcx
	imulq	8(%rdi,%rax,8), %rcx
.L44:
	addq	$2, %rax
	cmpq	%rax, %r8
	jle	.L42
.L45:
	testl	%edx, %edx
	jne	.L43
	addq	(%rdi,%rax,8), %rcx
	addq	8(%rdi,%rax,8), %rcx
	jmp	.L44
.L50:
	movl	$1, %ecx
	movl	$0, %eax
.L42:
	cmpq	%rax, %r9
	jle	.L46
.L49:
	testl	%edx, %edx
	jne	.L47
	addq	(%rdi,%rax,8), %rcx
.L48:
	addq	$1, %rax
	cmpq	%r9, %rax
	jne	.L49
.L46:
	movq	%rcx, (%rsi)
	ret
.L47:
	imulq	(%rdi,%rax,8), %rcx
	jmp	.L48
	.cfi_endproc
.LFE61:
	.size	combine5, .-combine5
	.type	combine4, @function
combine4:
.LFB60:
	.cfi_startproc
	movq	(%rdi), %r8
	movq	8(%rdi), %rdi
	testq	%r8, %r8
	jle	.L58
	movl	$1, %ecx
	movl	$0, %eax
	jmp	.L57
.L55:
	imulq	(%rdi,%rax,8), %rcx
.L56:
	addq	$1, %rax
	cmpq	%r8, %rax
	je	.L54
.L57:
	testl	%edx, %edx
	jne	.L55
	addq	(%rdi,%rax,8), %rcx
	jmp	.L56
.L58:
	movl	$1, %ecx
.L54:
	movq	%rcx, (%rsi)
	ret
	.cfi_endproc
.LFE60:
	.size	combine4, .-combine4
	.type	combine3_plus, @function
combine3_plus:
.LFB59:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsi, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	(%rdi), %r12
	testq	%r12, %r12
	jle	.L66
	movq	%rdi, %r13
	movl	%edx, %r14d
	movl	$1, %ebp
	movl	$0, %ebx
	leaq	16(%rsp), %r15
	jmp	.L64
.L62:
	imulq	16(%rsp), %rbp
.L63:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L61
.L64:
	movq	$0, 16(%rsp)
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	get_vec_element
	testl	%r14d, %r14d
	jne	.L62
	addq	16(%rsp), %rbp
	jmp	.L63
.L66:
	movl	$1, %ebp
.L61:
	movq	8(%rsp), %rax
	movq	%rbp, (%rax)
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L69
	addq	$40, %rsp
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
.L69:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE59:
	.size	combine3_plus, .-combine3_plus
	.type	combine3, @function
combine3:
.LFB58:
	.cfi_startproc
	movq	(%rdi), %r8
	movq	8(%rdi), %rdi
	movq	$1, (%rsi)
	testq	%r8, %r8
	jle	.L70
	movl	$0, %eax
	jmp	.L74
.L72:
	movq	(%rsi), %rcx
	imulq	(%rdi,%rax,8), %rcx
.L73:
	movq	%rcx, (%rsi)
	addq	$1, %rax
	cmpq	%r8, %rax
	je	.L70
.L74:
	testl	%edx, %edx
	jne	.L72
	movq	(%rdi,%rax,8), %rcx
	addq	(%rsi), %rcx
	jmp	.L73
.L70:
	rep ret
	.cfi_endproc
.LFE58:
	.size	combine3, .-combine3
	.type	combine2, @function
combine2:
.LFB57:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	(%rdi), %r12
	movq	$1, (%rsi)
	testq	%r12, %r12
	jle	.L76
	movq	%rdi, %r13
	movq	%rsi, %rbp
	movl	%edx, %r14d
	movl	$0, %ebx
	movq	%rsp, %r15
	jmp	.L80
.L78:
	movq	0(%rbp), %rax
	imulq	(%rsp), %rax
.L79:
	movq	%rax, 0(%rbp)
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L76
.L80:
	movq	$0, (%rsp)
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	get_vec_element
	testl	%r14d, %r14d
	jne	.L78
	movq	(%rsp), %rax
	addq	0(%rbp), %rax
	jmp	.L79
.L76:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L84
	addq	$24, %rsp
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
.L84:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE57:
	.size	combine2, .-combine2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"malloc fail"
	.text
	.globl	init_combine
	.type	init_combine, @function
init_combine:
.LFB64:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbp
	movq	%rsi, %r12
	movl	$16, %edi
	call	malloc@PLT
	testq	%rax, %rax
	je	.L86
	movq	%rax, %rbx
	movq	%r12, (%rax)
	movl	$0, %eax
	testq	%r12, %r12
	jg	.L91
.L87:
	movq	%rax, 8(%rbx)
	movq	%rbx, 0(%rbp)
	movq	combine_ops(%rip), %rcx
	movq	8+combine_ops(%rip), %rbx
	movq	%rcx, 8(%rbp)
	movq	%rbx, 16(%rbp)
	movq	16+combine_ops(%rip), %rcx
	movq	24+combine_ops(%rip), %rbx
	movq	%rcx, 24(%rbp)
	movq	%rbx, 32(%rbp)
	movq	32+combine_ops(%rip), %rcx
	movq	40+combine_ops(%rip), %rbx
	movq	%rcx, 40(%rbp)
	movq	%rbx, 48(%rbp)
	movq	48+combine_ops(%rip), %rcx
	movq	56+combine_ops(%rip), %rbx
	movq	%rcx, 56(%rbp)
	movq	%rbx, 64(%rbp)
	movl	$0, %eax
.L85:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L91:
	.cfi_restore_state
	movl	$8, %esi
	movq	%r12, %rdi
	call	calloc@PLT
	testq	%rax, %rax
	jne	.L87
	movq	%rbx, %rdi
	call	free@PLT
.L86:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-12, %eax
	jmp	.L85
	.cfi_endproc
.LFE64:
	.size	init_combine, .-init_combine
	.globl	delete_combine
	.type	delete_combine, @function
delete_combine:
.LFB65:
	.cfi_startproc
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L95
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	free@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
.L95:
	rep ret
	.cfi_endproc
.LFE65:
	.size	delete_combine, .-delete_combine
	.globl	combine_ops
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	combine_ops, @object
	.size	combine_ops, 64
combine_ops:
	.quad	combine1
	.quad	combine2
	.quad	combine3
	.quad	combine4
	.quad	combine5
	.quad	combine6
	.quad	combine7
	.quad	combine3_plus
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
