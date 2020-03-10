
./obj/loop_test_O0.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <normal_for_loop>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  12:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  19:	eb 08                	jmp    23 <normal_for_loop+0x23>
  1b:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  1f:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  23:	83 7d f8 09          	cmpl   $0x9,-0x8(%rbp)
  27:	7e f2                	jle    1b <normal_for_loop+0x1b>
  29:	8b 45 fc             	mov    -0x4(%rbp),%eax
  2c:	5d                   	pop    %rbp
  2d:	c3                   	retq   

000000000000002e <dead_for_loop>:
  2e:	55                   	push   %rbp
  2f:	48 89 e5             	mov    %rsp,%rbp
  32:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  39:	eb 04                	jmp    3f <dead_for_loop+0x11>
  3b:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  3f:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  43:	7e f6                	jle    3b <dead_for_loop+0xd>
  45:	8b 45 fc             	mov    -0x4(%rbp),%eax
  48:	5d                   	pop    %rbp
  49:	c3                   	retq   

000000000000004a <main>:
  4a:	55                   	push   %rbp
  4b:	48 89 e5             	mov    %rsp,%rbp
  4e:	48 83 ec 10          	sub    $0x10,%rsp
  52:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  59:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  60:	b8 00 00 00 00       	mov    $0x0,%eax
  65:	e8 00 00 00 00       	callq  6a <main+0x20>
  6a:	89 45 f8             	mov    %eax,-0x8(%rbp)
  6d:	e8 00 00 00 00       	callq  72 <main+0x28>
  72:	89 45 fc             	mov    %eax,-0x4(%rbp)
  75:	8b 55 f8             	mov    -0x8(%rbp),%edx
  78:	8b 45 fc             	mov    -0x4(%rbp),%eax
  7b:	01 d0                	add    %edx,%eax
  7d:	c9                   	leaveq 
  7e:	c3                   	retq   
