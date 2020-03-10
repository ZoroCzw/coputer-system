
./obj/loop_test_O1.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <normal_for_loop>:
   0:	89 f8                	mov    %edi,%eax
   2:	85 ff                	test   %edi,%edi
   4:	7e 0e                	jle    14 <normal_for_loop+0x14>
   6:	ba 00 00 00 00       	mov    $0x0,%edx
   b:	83 c2 01             	add    $0x1,%edx
   e:	39 d0                	cmp    %edx,%eax
  10:	75 f9                	jne    b <normal_for_loop+0xb>
  12:	f3 c3                	repz retq 
  14:	b8 00 00 00 00       	mov    $0x0,%eax
  19:	c3                   	retq   

000000000000001a <dead_for_loop>:
  1a:	eb fe                	jmp    1a <dead_for_loop>

000000000000001c <main>:
  1c:	eb fe                	jmp    1c <main>
