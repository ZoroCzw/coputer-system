
./obj/cmov_jump_cpr_O1.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <cmov_test>:
   0:	8d 47 01             	lea    0x1(%rdi),%eax
   3:	85 ff                	test   %edi,%edi
   5:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   a:	0f 44 c2             	cmove  %edx,%eax
   d:	c3                   	retq   

000000000000000e <jump_test>:
   e:	8d 47 01             	lea    0x1(%rdi),%eax
  11:	85 ff                	test   %edi,%edi
  13:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  18:	0f 44 c2             	cmove  %edx,%eax
  1b:	c3                   	retq   

000000000000001c <main>:
  1c:	b8 00 00 00 00       	mov    $0x0,%eax
  21:	c3                   	retq   
