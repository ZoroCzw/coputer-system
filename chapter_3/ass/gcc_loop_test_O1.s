	.file	"loop_test.c"
	.text
	.globl	normal_for_loop
	.type	normal_for_loop, @function
normal_for_loop:
.LFB23:
	.cfi_startproc
	movl	%edi, %eax
	testl	%edi, %edi
	jle	.L4
	movl	$0, %edx
.L3:
	addl	$1, %edx
	cmpl	%edx, %eax
	jne	.L3
	rep ret
.L4:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	normal_for_loop, .-normal_for_loop
	.globl	dead_for_loop
	.type	dead_for_loop, @function
dead_for_loop:
.LFB24:
	.cfi_startproc
.L7:
	jmp	.L7
	.cfi_endproc
.LFE24:
	.size	dead_for_loop, .-dead_for_loop
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
.L9:
	jmp	.L9
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
