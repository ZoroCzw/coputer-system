
./obj/cmov_jump_cpr_O1.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <cmov_test>:
   0:	8d 47 01             	lea    0x1(%rdi),%eax
   3:	85 ff                	test   %edi,%edi
   5:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   a:	0f 44 c2             	cmove  %edx,%eax
   d:	c3                   	retq   

000000000000000e <jump_test>:
   e:	53                   	push   %rbx
   f:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  14:	85 ff                	test   %edi,%edi
  16:	75 04                	jne    1c <jump_test+0xe>
  18:	89 d8                	mov    %ebx,%eax
  1a:	5b                   	pop    %rbx
  1b:	c3                   	retq   
  1c:	8d 5f 01             	lea    0x1(%rdi),%ebx
  1f:	89 da                	mov    %ebx,%edx
  21:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 28 <jump_test+0x1a>
  28:	bf 01 00 00 00       	mov    $0x1,%edi
  2d:	b8 00 00 00 00       	mov    $0x0,%eax
  32:	e8 00 00 00 00       	callq  37 <jump_test+0x29>
  37:	eb df                	jmp    18 <jump_test+0xa>

0000000000000039 <main>:
  39:	b8 00 00 00 00       	mov    $0x0,%eax
  3e:	c3                   	retq   
