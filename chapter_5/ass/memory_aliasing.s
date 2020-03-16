	.file	"memory_aliasing.c"
	.text
	.type	twiddle1, @function
twiddle1:
.LFB23:
	.cfi_startproc
	movq	(%rsi), %rax
	addq	(%rdi), %rax
	movq	%rax, (%rdi)
	addq	(%rsi), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE23:
	.size	twiddle1, .-twiddle1
	.type	twiddle2, @function
twiddle2:
.LFB24:
	.cfi_startproc
	movq	(%rsi), %rax
	addq	%rax, %rax
	addq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE24:
	.size	twiddle2, .-twiddle2
	.globl	func
	.section	.data.rel.local,"aw",@progbits
	.align 16
	.type	func, @object
	.size	func, 16
func:
	.quad	twiddle1
	.quad	twiddle2
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
