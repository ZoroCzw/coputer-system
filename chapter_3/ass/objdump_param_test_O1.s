
./obj/param_test_O1.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <param_7>:
   0:	01 f7                	add    %esi,%edi
   2:	01 fa                	add    %edi,%edx
   4:	01 d1                	add    %edx,%ecx
   6:	44 01 c1             	add    %r8d,%ecx
   9:	44 01 c9             	add    %r9d,%ecx
   c:	89 c8                	mov    %ecx,%eax
   e:	03 44 24 08          	add    0x8(%rsp),%eax
  12:	c3                   	retq   

0000000000000013 <param_6>:
  13:	01 f7                	add    %esi,%edi
  15:	01 fa                	add    %edi,%edx
  17:	01 d1                	add    %edx,%ecx
  19:	44 01 c1             	add    %r8d,%ecx
  1c:	42 8d 04 49          	lea    (%rcx,%r9,2),%eax
  20:	c3                   	retq   

0000000000000021 <param_struct>:
  21:	8b 44 24 08          	mov    0x8(%rsp),%eax
  25:	03 44 24 10          	add    0x10(%rsp),%eax
  29:	03 44 24 18          	add    0x18(%rsp),%eax
  2d:	c3                   	retq   

000000000000002e <ptr_test>:
  2e:	8b 47 04             	mov    0x4(%rdi),%eax
  31:	03 07                	add    (%rdi),%eax
  33:	03 47 08             	add    0x8(%rdi),%eax
  36:	c3                   	retq   

0000000000000037 <main>:
  37:	b8 37 00 00 00       	mov    $0x37,%eax
  3c:	c3                   	retq   
