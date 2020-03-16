
./obj/switch_case_test_O0.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <switch_case_test>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	89 7d ec             	mov    %edi,-0x14(%rbp)
   7:	89 75 e8             	mov    %esi,-0x18(%rbp)
   a:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   e:	8b 45 ec             	mov    -0x14(%rbp),%eax
  11:	89 45 fc             	mov    %eax,-0x4(%rbp)
  14:	8b 45 e8             	mov    -0x18(%rbp),%eax
  17:	83 f8 66             	cmp    $0x66,%eax
  1a:	74 26                	je     42 <switch_case_test+0x42>
  1c:	83 f8 66             	cmp    $0x66,%eax
  1f:	7f 07                	jg     28 <switch_case_test+0x28>
  21:	83 f8 64             	cmp    $0x64,%eax
  24:	74 09                	je     2f <switch_case_test+0x2f>
  26:	eb 26                	jmp    4e <switch_case_test+0x4e>
  28:	83 f8 68             	cmp    $0x68,%eax
  2b:	7f 21                	jg     4e <switch_case_test+0x4e>
  2d:	eb 19                	jmp    48 <switch_case_test+0x48>
  2f:	8b 55 fc             	mov    -0x4(%rbp),%edx
  32:	89 d0                	mov    %edx,%eax
  34:	01 c0                	add    %eax,%eax
  36:	01 d0                	add    %edx,%eax
  38:	c1 e0 02             	shl    $0x2,%eax
  3b:	01 d0                	add    %edx,%eax
  3d:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40:	eb 13                	jmp    55 <switch_case_test+0x55>
  42:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  46:	eb 0d                	jmp    55 <switch_case_test+0x55>
  48:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
  4c:	eb 07                	jmp    55 <switch_case_test+0x55>
  4e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  55:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  59:	8b 55 fc             	mov    -0x4(%rbp),%edx
  5c:	89 10                	mov    %edx,(%rax)
  5e:	90                   	nop
  5f:	5d                   	pop    %rbp
  60:	c3                   	retq   

0000000000000061 <main>:
  61:	55                   	push   %rbp
  62:	48 89 e5             	mov    %rsp,%rbp
  65:	48 83 ec 20          	sub    $0x20,%rsp
  69:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  70:	00 00 
  72:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  76:	31 c0                	xor    %eax,%eax
  78:	c7 45 f0 64 00 00 00 	movl   $0x64,-0x10(%rbp)
  7f:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
  86:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  8d:	48 8d 55 ec          	lea    -0x14(%rbp),%rdx
  91:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  94:	8b 45 f0             	mov    -0x10(%rbp),%eax
  97:	89 ce                	mov    %ecx,%esi
  99:	89 c7                	mov    %eax,%edi
  9b:	e8 00 00 00 00       	callq  a0 <main+0x3f>
  a0:	8b 55 f0             	mov    -0x10(%rbp),%edx
  a3:	8b 45 f4             	mov    -0xc(%rbp),%eax
  a6:	01 c2                	add    %eax,%edx
  a8:	8b 45 ec             	mov    -0x14(%rbp),%eax
  ab:	01 d0                	add    %edx,%eax
  ad:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  b1:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  b8:	00 00 
  ba:	74 05                	je     c1 <main+0x60>
  bc:	e8 00 00 00 00       	callq  c1 <main+0x60>
  c1:	c9                   	leaveq 
  c2:	c3                   	retq   
