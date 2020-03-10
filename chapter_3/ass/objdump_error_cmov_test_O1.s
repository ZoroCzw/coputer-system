
./obj/error_cmov_test_O1.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <error_cmov>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	48 85 ff             	test   %rdi,%rdi
   8:	74 02                	je     c <error_cmov+0xc>
   a:	8b 07                	mov    (%rdi),%eax
   c:	f3 c3                	repz retq 

000000000000000e <main>:
   e:	b8 00 00 00 00       	mov    $0x0,%eax
  13:	c3                   	retq   
