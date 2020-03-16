
./obj/switch_case_test_O1.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <switch_case_test>:
   0:	8d 47 01             	lea    0x1(%rdi),%eax
   3:	83 fe 66             	cmp    $0x66,%esi
   6:	74 1a                	je     22 <switch_case_test+0x22>
   8:	83 fe 66             	cmp    $0x66,%esi
   b:	7f 0d                	jg     1a <switch_case_test+0x1a>
   d:	83 fe 64             	cmp    $0x64,%esi
  10:	75 13                	jne    25 <switch_case_test+0x25>
  12:	8d 04 7f             	lea    (%rdi,%rdi,2),%eax
  15:	8d 04 87             	lea    (%rdi,%rax,4),%eax
  18:	eb 08                	jmp    22 <switch_case_test+0x22>
  1a:	8d 47 ff             	lea    -0x1(%rdi),%eax
  1d:	83 fe 68             	cmp    $0x68,%esi
  20:	7f 03                	jg     25 <switch_case_test+0x25>
  22:	89 02                	mov    %eax,(%rdx)
  24:	c3                   	retq   
  25:	b8 00 00 00 00       	mov    $0x0,%eax
  2a:	eb f6                	jmp    22 <switch_case_test+0x22>

000000000000002c <main>:
  2c:	b8 65 00 00 00       	mov    $0x65,%eax
  31:	c3                   	retq   
