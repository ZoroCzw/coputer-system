
./obj/cmov_jump_cpr_O0.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <cmov_test>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	89 7d fc             	mov    %edi,-0x4(%rbp)
   7:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   b:	74 08                	je     15 <cmov_test+0x15>
   d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  10:	83 c0 01             	add    $0x1,%eax
  13:	eb 06                	jmp    1b <cmov_test+0x1b>
  15:	8b 45 fc             	mov    -0x4(%rbp),%eax
  18:	83 e8 01             	sub    $0x1,%eax
  1b:	5d                   	pop    %rbp
  1c:	c3                   	retq   

000000000000001d <jump_test>:
  1d:	55                   	push   %rbp
  1e:	48 89 e5             	mov    %rsp,%rbp
  21:	89 7d fc             	mov    %edi,-0x4(%rbp)
  24:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  28:	74 08                	je     32 <jump_test+0x15>
  2a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  2d:	83 c0 01             	add    $0x1,%eax
  30:	eb 06                	jmp    38 <jump_test+0x1b>
  32:	8b 45 fc             	mov    -0x4(%rbp),%eax
  35:	83 e8 01             	sub    $0x1,%eax
  38:	5d                   	pop    %rbp
  39:	c3                   	retq   

000000000000003a <main>:
  3a:	55                   	push   %rbp
  3b:	48 89 e5             	mov    %rsp,%rbp
  3e:	48 83 ec 10          	sub    $0x10,%rsp
  42:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  49:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4c:	89 c7                	mov    %eax,%edi
  4e:	e8 00 00 00 00       	callq  53 <main+0x19>
  53:	8b 45 fc             	mov    -0x4(%rbp),%eax
  56:	89 c7                	mov    %eax,%edi
  58:	e8 00 00 00 00       	callq  5d <main+0x23>
  5d:	b8 00 00 00 00       	mov    $0x0,%eax
  62:	c9                   	leaveq 
  63:	c3                   	retq   
