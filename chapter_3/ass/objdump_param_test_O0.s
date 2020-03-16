
./obj/param_test_O0.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <param_7>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	89 7d fc             	mov    %edi,-0x4(%rbp)
   7:	89 75 f8             	mov    %esi,-0x8(%rbp)
   a:	89 55 f4             	mov    %edx,-0xc(%rbp)
   d:	89 4d f0             	mov    %ecx,-0x10(%rbp)
  10:	44 89 45 ec          	mov    %r8d,-0x14(%rbp)
  14:	44 89 4d e8          	mov    %r9d,-0x18(%rbp)
  18:	8b 55 fc             	mov    -0x4(%rbp),%edx
  1b:	8b 45 f8             	mov    -0x8(%rbp),%eax
  1e:	01 c2                	add    %eax,%edx
  20:	8b 45 f4             	mov    -0xc(%rbp),%eax
  23:	01 c2                	add    %eax,%edx
  25:	8b 45 f0             	mov    -0x10(%rbp),%eax
  28:	01 c2                	add    %eax,%edx
  2a:	8b 45 ec             	mov    -0x14(%rbp),%eax
  2d:	01 c2                	add    %eax,%edx
  2f:	8b 45 e8             	mov    -0x18(%rbp),%eax
  32:	01 c2                	add    %eax,%edx
  34:	8b 45 10             	mov    0x10(%rbp),%eax
  37:	01 d0                	add    %edx,%eax
  39:	5d                   	pop    %rbp
  3a:	c3                   	retq   

000000000000003b <param_6>:
  3b:	55                   	push   %rbp
  3c:	48 89 e5             	mov    %rsp,%rbp
  3f:	48 83 ec 18          	sub    $0x18,%rsp
  43:	89 7d fc             	mov    %edi,-0x4(%rbp)
  46:	89 75 f8             	mov    %esi,-0x8(%rbp)
  49:	89 55 f4             	mov    %edx,-0xc(%rbp)
  4c:	89 4d f0             	mov    %ecx,-0x10(%rbp)
  4f:	44 89 45 ec          	mov    %r8d,-0x14(%rbp)
  53:	44 89 4d e8          	mov    %r9d,-0x18(%rbp)
  57:	44 8b 4d e8          	mov    -0x18(%rbp),%r9d
  5b:	44 8b 45 ec          	mov    -0x14(%rbp),%r8d
  5f:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  62:	8b 55 f4             	mov    -0xc(%rbp),%edx
  65:	8b 75 f8             	mov    -0x8(%rbp),%esi
  68:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b:	8b 7d e8             	mov    -0x18(%rbp),%edi
  6e:	57                   	push   %rdi
  6f:	89 c7                	mov    %eax,%edi
  71:	e8 00 00 00 00       	callq  76 <param_6+0x3b>
  76:	48 83 c4 08          	add    $0x8,%rsp
  7a:	c9                   	leaveq 
  7b:	c3                   	retq   

000000000000007c <main>:
  7c:	55                   	push   %rbp
  7d:	48 89 e5             	mov    %rsp,%rbp
  80:	48 83 ec 10          	sub    $0x10,%rsp
  84:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  8b:	41 b9 06 00 00 00    	mov    $0x6,%r9d
  91:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  97:	b9 04 00 00 00       	mov    $0x4,%ecx
  9c:	ba 03 00 00 00       	mov    $0x3,%edx
  a1:	be 02 00 00 00       	mov    $0x2,%esi
  a6:	bf 01 00 00 00       	mov    $0x1,%edi
  ab:	e8 00 00 00 00       	callq  b0 <main+0x34>
  b0:	01 45 fc             	add    %eax,-0x4(%rbp)
  b3:	6a 07                	pushq  $0x7
  b5:	41 b9 06 00 00 00    	mov    $0x6,%r9d
  bb:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  c1:	b9 04 00 00 00       	mov    $0x4,%ecx
  c6:	ba 03 00 00 00       	mov    $0x3,%edx
  cb:	be 02 00 00 00       	mov    $0x2,%esi
  d0:	bf 01 00 00 00       	mov    $0x1,%edi
  d5:	e8 00 00 00 00       	callq  da <main+0x5e>
  da:	48 83 c4 08          	add    $0x8,%rsp
  de:	01 45 fc             	add    %eax,-0x4(%rbp)
  e1:	8b 45 fc             	mov    -0x4(%rbp),%eax
  e4:	c9                   	leaveq 
  e5:	c3                   	retq   
