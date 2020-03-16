	.file	"combine.c"
	.text
	.type	new_vec, @function
new_vec:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -24(%rbp)
	jle	.L4
	movq	-24(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	new_vec, .-new_vec
	.type	get_vec_element, @function
get_vec_element:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L6
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jl	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_vec_element, .-get_vec_element
	.type	vec_length, @function
vec_length:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	vec_length, .-vec_length
	.type	get_vec_start, @function
get_vec_start:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	get_vec_start, .-get_vec_start
	.type	combine1, @function
combine1:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	$1, (%rax)
	movq	$0, -24(%rbp)
	jmp	.L14
.L17:
	movq	$0, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_vec_element
	cmpl	$0, -52(%rbp)
	jne	.L15
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L16
.L15:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	imulq	%rdx, %rax
.L16:
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$1, -24(%rbp)
.L14:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	vec_length
	cmpq	%rax, -24(%rbp)
	jl	.L17
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	combine1, .-combine1
	.type	combine2, @function
combine2:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	vec_length
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	$1, (%rax)
	movq	$0, -32(%rbp)
	jmp	.L21
.L24:
	movq	$0, -40(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_vec_element
	cmpl	$0, -68(%rbp)
	jne	.L22
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L23
.L22:
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	imulq	%rdx, %rax
.L23:
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$1, -32(%rbp)
.L21:
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.L24
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	combine2, .-combine2
	.type	combine3, @function
combine3:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	vec_length
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_vec_start
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	$1, (%rax)
	movq	$0, -32(%rbp)
	jmp	.L28
.L31:
	cmpl	$0, -52(%rbp)
	jne	.L29
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	jmp	.L30
.L29:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	imulq	%rdx, %rax
.L30:
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$1, -32(%rbp)
.L28:
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.L31
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	combine3, .-combine3
	.type	combine3_plus, @function
combine3_plus:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	vec_length
	movq	%rax, -16(%rbp)
	movq	$1, -32(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L34
.L37:
	movq	$0, -48(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_vec_element
	cmpl	$0, -68(%rbp)
	jne	.L35
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L36
.L35:
	movq	-48(%rbp), %rax
	imulq	-32(%rbp), %rax
.L36:
	movq	%rax, -32(%rbp)
	addq	$1, -40(%rbp)
.L34:
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.L37
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L39
	call	__stack_chk_fail@PLT
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	combine3_plus, .-combine3_plus
	.type	combine4, @function
combine4:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$72, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	vec_length
	movq	%rax, -16(%rbp)
	movq	$1, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_vec_start
	movq	%rax, -8(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L41
.L44:
	cmpl	$0, -68(%rbp)
	jne	.L42
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L43
.L42:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	imulq	-32(%rbp), %rax
.L43:
	movq	%rax, -32(%rbp)
	addq	$1, -40(%rbp)
.L41:
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.L44
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	combine4, .-combine4
	.type	combine5, @function
combine5:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$72, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	vec_length
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	$1, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	get_vec_start
	movq	%rax, -8(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L47
.L50:
	cmpl	$0, -68(%rbp)
	jne	.L48
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	jmp	.L49
.L48:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	imulq	%rdx, %rax
.L49:
	movq	%rax, -40(%rbp)
	addq	$2, -48(%rbp)
.L47:
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.L50
	jmp	.L51
.L54:
	cmpl	$0, -68(%rbp)
	jne	.L52
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L53
.L52:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	imulq	-40(%rbp), %rax
.L53:
	movq	%rax, -40(%rbp)
	addq	$1, -48(%rbp)
.L51:
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.L54
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	combine5, .-combine5
	.type	combine6, @function
combine6:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$88, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	vec_length
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	$1, -48(%rbp)
	movq	$1, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	get_vec_start
	movq	%rax, -8(%rbp)
	movq	$0, -56(%rbp)
	jmp	.L57
.L62:
	cmpl	$0, -84(%rbp)
	jne	.L58
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L59
.L58:
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	imulq	-48(%rbp), %rax
.L59:
	movq	%rax, -48(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L60
	movq	-56(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L61
.L60:
	movq	-56(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	imulq	-40(%rbp), %rax
.L61:
	movq	%rax, -40(%rbp)
	addq	$2, -56(%rbp)
.L57:
	movq	-56(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.L62
	jmp	.L63
.L66:
	cmpl	$0, -84(%rbp)
	jne	.L64
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L65
.L64:
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	imulq	-48(%rbp), %rax
.L65:
	movq	%rax, -48(%rbp)
	addq	$1, -56(%rbp)
.L63:
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.L66
	cmpl	$0, -84(%rbp)
	jne	.L67
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L68
.L67:
	movq	-48(%rbp), %rax
	imulq	-40(%rbp), %rax
.L68:
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	combine6, .-combine6
	.type	combine7, @function
combine7:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$72, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	vec_length
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	$1, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	get_vec_start
	movq	%rax, -8(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L71
.L74:
	cmpl	$0, -68(%rbp)
	jne	.L72
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	jmp	.L73
.L72:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	imulq	%rdx, %rax
.L73:
	movq	%rax, -40(%rbp)
	addq	$2, -48(%rbp)
.L71:
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.L74
	jmp	.L75
.L78:
	cmpl	$0, -68(%rbp)
	jne	.L76
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L77
.L76:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	imulq	-40(%rbp), %rax
.L77:
	movq	%rax, -40(%rbp)
	addq	$1, -48(%rbp)
.L75:
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.L78
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	combine7, .-combine7
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
	.section	.rodata
.LC0:
	.string	"malloc fail"
	.text
	.globl	init_combine
	.type	init_combine, @function
init_combine:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	new_vec
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L81
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-12, %eax
	jmp	.L82
.L81:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	$64, %edx
	leaq	combine_ops(%rip), %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$0, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	init_combine, .-init_combine
	.globl	delete_combine
	.type	delete_combine, @function
delete_combine:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
.L86:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	delete_combine, .-delete_combine
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
