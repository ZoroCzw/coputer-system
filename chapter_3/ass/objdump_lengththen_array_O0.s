
./obj/lengththen_array_O0.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <length_then_array>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	89 7d dc             	mov    %edi,-0x24(%rbp)
   b:	89 75 d8             	mov    %esi,-0x28(%rbp)
   e:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  12:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  19:	00 00 
  1b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1f:	31 c0                	xor    %eax,%eax
  21:	48 89 e0             	mov    %rsp,%rax
  24:	48 89 c1             	mov    %rax,%rcx
  27:	8b 45 dc             	mov    -0x24(%rbp),%eax
  2a:	48 63 d0             	movslq %eax,%rdx
  2d:	48 83 ea 01          	sub    $0x1,%rdx
  31:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  35:	48 63 d0             	movslq %eax,%rdx
  38:	49 89 d2             	mov    %rdx,%r10
  3b:	41 bb 00 00 00 00    	mov    $0x0,%r11d
  41:	48 63 d0             	movslq %eax,%rdx
  44:	49 89 d0             	mov    %rdx,%r8
  47:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4d:	48 98                	cltq   
  4f:	48 c1 e0 02          	shl    $0x2,%rax
  53:	48 8d 50 03          	lea    0x3(%rax),%rdx
  57:	b8 10 00 00 00       	mov    $0x10,%eax
  5c:	48 83 e8 01          	sub    $0x1,%rax
  60:	48 01 d0             	add    %rdx,%rax
  63:	be 10 00 00 00       	mov    $0x10,%esi
  68:	ba 00 00 00 00       	mov    $0x0,%edx
  6d:	48 f7 f6             	div    %rsi
  70:	48 6b c0 10          	imul   $0x10,%rax,%rax
  74:	48 29 c4             	sub    %rax,%rsp
  77:	48 89 e0             	mov    %rsp,%rax
  7a:	48 83 c0 03          	add    $0x3,%rax
  7e:	48 c1 e8 02          	shr    $0x2,%rax
  82:	48 c1 e0 02          	shl    $0x2,%rax
  86:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  8a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  8e:	8b 55 d8             	mov    -0x28(%rbp),%edx
  91:	48 63 d2             	movslq %edx,%rdx
  94:	8b 14 90             	mov    (%rax,%rdx,4),%edx
  97:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  9b:	89 10                	mov    %edx,(%rax)
  9d:	48 89 cc             	mov    %rcx,%rsp
  a0:	90                   	nop
  a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  a5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  ac:	00 00 
  ae:	74 05                	je     b5 <length_then_array+0xb5>
  b0:	e8 00 00 00 00       	callq  b5 <length_then_array+0xb5>
  b5:	c9                   	leaveq 
  b6:	c3                   	retq   

00000000000000b7 <fixed_array>:
  b7:	55                   	push   %rbp
  b8:	48 89 e5             	mov    %rsp,%rbp
  bb:	48 81 ec b0 01 00 00 	sub    $0x1b0,%rsp
  c2:	89 bd 5c fe ff ff    	mov    %edi,-0x1a4(%rbp)
  c8:	48 89 b5 50 fe ff ff 	mov    %rsi,-0x1b0(%rbp)
  cf:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  d6:	00 00 
  d8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  dc:	31 c0                	xor    %eax,%eax
  de:	48 8d 95 60 fe ff ff 	lea    -0x1a0(%rbp),%rdx
  e5:	b8 00 00 00 00       	mov    $0x0,%eax
  ea:	b9 32 00 00 00       	mov    $0x32,%ecx
  ef:	48 89 d7             	mov    %rdx,%rdi
  f2:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  f5:	8b 85 5c fe ff ff    	mov    -0x1a4(%rbp),%eax
  fb:	48 98                	cltq   
  fd:	8b 94 85 60 fe ff ff 	mov    -0x1a0(%rbp,%rax,4),%edx
 104:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
 10b:	89 10                	mov    %edx,(%rax)
 10d:	90                   	nop
 10e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 112:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 119:	00 00 
 11b:	74 05                	je     122 <fixed_array+0x6b>
 11d:	e8 00 00 00 00       	callq  122 <fixed_array+0x6b>
 122:	c9                   	leaveq 
 123:	c3                   	retq   
