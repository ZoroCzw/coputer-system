
./obj/lengththen_array_O1.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <length_then_array>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
   f:	00 00 
  11:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  15:	31 c0                	xor    %eax,%eax
  17:	48 63 ff             	movslq %edi,%rdi
  1a:	48 8d 04 bd 12 00 00 	lea    0x12(,%rdi,4),%rax
  21:	00 
  22:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  26:	48 29 c4             	sub    %rax,%rsp
  29:	48 89 e0             	mov    %rsp,%rax
  2c:	48 63 f6             	movslq %esi,%rsi
  2f:	8b 04 b0             	mov    (%rax,%rsi,4),%eax
  32:	89 02                	mov    %eax,(%rdx)
  34:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  38:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  3f:	00 00 
  41:	75 02                	jne    45 <length_then_array+0x45>
  43:	c9                   	leaveq 
  44:	c3                   	retq   
  45:	e8 00 00 00 00       	callq  4a <fixed_array>

000000000000004a <fixed_array>:
  4a:	c7 06 00 00 00 00    	movl   $0x0,(%rsi)
  50:	c3                   	retq   
