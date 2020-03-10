
./obj/push_pop.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <push_test_int>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	b8 00 00 00 00       	mov    $0x0,%eax
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

000000000000000b <push_test_void>:
   b:	55                   	push   %rbp
   c:	48 89 e5             	mov    %rsp,%rbp
   f:	90                   	nop
  10:	5d                   	pop    %rbp
  11:	c3                   	retq   

0000000000000012 <main>:
  12:	55                   	push   %rbp
  13:	48 89 e5             	mov    %rsp,%rbp
  16:	b8 00 00 00 00       	mov    $0x0,%eax
  1b:	e8 00 00 00 00       	callq  20 <main+0xe>
  20:	b8 00 00 00 00       	mov    $0x0,%eax
  25:	e8 00 00 00 00       	callq  2a <main+0x18>
  2a:	b8 00 00 00 00       	mov    $0x0,%eax
  2f:	5d                   	pop    %rbp
  30:	c3                   	retq   
