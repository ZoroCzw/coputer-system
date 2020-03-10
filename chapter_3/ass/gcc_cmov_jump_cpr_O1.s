	.file	"cmov_jump_cpr.c"
	.text
	.globl	cmov_test
	.type	cmov_test, @function
cmov_test:
.LFB23:
	.cfi_startproc
	leal	1(%rdi), %eax
	testl	%edi, %edi
	movl	$-1, %edx
	cmove	%edx, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	cmov_test, .-cmov_test
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
	.text
	.globl	jump_test
	.type	jump_test, @function
jump_test:
.LFB24:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$-1, %ebx
	testl	%edi, %edi
	jne	.L8
.L4:
	movl	%ebx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	leal	1(%rdi), %ebx
	movl	%ebx, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	jmp	.L4
	.cfi_endproc
.LFE24:
	.size	jump_test, .-jump_test
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
