
obj/combine_O1.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <get_vec_element>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	48 85 f6             	test   %rsi,%rsi
   8:	78 15                	js     1f <get_vec_element+0x1f>
   a:	48 39 37             	cmp    %rsi,(%rdi)
   d:	7e 10                	jle    1f <get_vec_element+0x1f>
   f:	48 8b 47 08          	mov    0x8(%rdi),%rax
  13:	48 8b 04 f0          	mov    (%rax,%rsi,8),%rax
  17:	48 89 02             	mov    %rax,(%rdx)
  1a:	b8 01 00 00 00       	mov    $0x1,%eax
  1f:	f3 c3                	repz retq 

0000000000000021 <combine1>:
  21:	41 56                	push   %r14
  23:	41 55                	push   %r13
  25:	41 54                	push   %r12
  27:	55                   	push   %rbp
  28:	53                   	push   %rbx
  29:	48 83 ec 10          	sub    $0x10,%rsp
  2d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  34:	00 00 
  36:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  3b:	31 c0                	xor    %eax,%eax
  3d:	48 c7 06 01 00 00 00 	movq   $0x1,(%rsi)
  44:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  48:	7e 4f                	jle    99 <combine1+0x78>
  4a:	48 89 fd             	mov    %rdi,%rbp
  4d:	49 89 f4             	mov    %rsi,%r12
  50:	41 89 d5             	mov    %edx,%r13d
  53:	bb 00 00 00 00       	mov    $0x0,%ebx
  58:	49 89 e6             	mov    %rsp,%r14
  5b:	eb 17                	jmp    74 <combine1+0x53>
  5d:	49 8b 04 24          	mov    (%r12),%rax
  61:	48 0f af 04 24       	imul   (%rsp),%rax
  66:	49 89 04 24          	mov    %rax,(%r12)
  6a:	48 83 c3 01          	add    $0x1,%rbx
  6e:	48 3b 5d 00          	cmp    0x0(%rbp),%rbx
  72:	7d 25                	jge    99 <combine1+0x78>
  74:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  7b:	00 
  7c:	4c 89 f2             	mov    %r14,%rdx
  7f:	48 89 de             	mov    %rbx,%rsi
  82:	48 89 ef             	mov    %rbp,%rdi
  85:	e8 76 ff ff ff       	callq  0 <get_vec_element>
  8a:	45 85 ed             	test   %r13d,%r13d
  8d:	75 ce                	jne    5d <combine1+0x3c>
  8f:	48 8b 04 24          	mov    (%rsp),%rax
  93:	49 03 04 24          	add    (%r12),%rax
  97:	eb cd                	jmp    66 <combine1+0x45>
  99:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  9e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  a5:	00 00 
  a7:	75 0d                	jne    b6 <combine1+0x95>
  a9:	48 83 c4 10          	add    $0x10,%rsp
  ad:	5b                   	pop    %rbx
  ae:	5d                   	pop    %rbp
  af:	41 5c                	pop    %r12
  b1:	41 5d                	pop    %r13
  b3:	41 5e                	pop    %r14
  b5:	c3                   	retq   
  b6:	e8 00 00 00 00       	callq  bb <combine7>

00000000000000bb <combine7>:
  bb:	4c 8b 0f             	mov    (%rdi),%r9
  be:	4d 8d 41 ff          	lea    -0x1(%r9),%r8
  c2:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  c6:	4d 85 c0             	test   %r8,%r8
  c9:	7e 2f                	jle    fa <combine7+0x3f>
  cb:	b9 01 00 00 00       	mov    $0x1,%ecx
  d0:	b8 00 00 00 00       	mov    $0x0,%eax
  d5:	eb 14                	jmp    eb <combine7+0x30>
  d7:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
  dc:	48 0f af 4c c7 08    	imul   0x8(%rdi,%rax,8),%rcx
  e2:	48 83 c0 02          	add    $0x2,%rax
  e6:	49 39 c0             	cmp    %rax,%r8
  e9:	7e 19                	jle    104 <combine7+0x49>
  eb:	85 d2                	test   %edx,%edx
  ed:	75 e8                	jne    d7 <combine7+0x1c>
  ef:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
  f3:	48 03 4c c7 08       	add    0x8(%rdi,%rax,8),%rcx
  f8:	eb e8                	jmp    e2 <combine7+0x27>
  fa:	b9 01 00 00 00       	mov    $0x1,%ecx
  ff:	b8 00 00 00 00       	mov    $0x0,%eax
 104:	49 39 c1             	cmp    %rax,%r9
 107:	7e 11                	jle    11a <combine7+0x5f>
 109:	85 d2                	test   %edx,%edx
 10b:	75 11                	jne    11e <combine7+0x63>
 10d:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 111:	48 83 c0 01          	add    $0x1,%rax
 115:	4c 39 c8             	cmp    %r9,%rax
 118:	75 ef                	jne    109 <combine7+0x4e>
 11a:	48 89 0e             	mov    %rcx,(%rsi)
 11d:	c3                   	retq   
 11e:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 123:	eb ec                	jmp    111 <combine7+0x56>

0000000000000125 <combine6>:
 125:	4c 8b 17             	mov    (%rdi),%r10
 128:	4d 8d 4a ff          	lea    -0x1(%r10),%r9
 12c:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
 130:	4d 85 c9             	test   %r9,%r9
 133:	7e 35                	jle    16a <combine6+0x45>
 135:	41 b8 01 00 00 00    	mov    $0x1,%r8d
 13b:	b9 01 00 00 00       	mov    $0x1,%ecx
 140:	b8 00 00 00 00       	mov    $0x0,%eax
 145:	eb 14                	jmp    15b <combine6+0x36>
 147:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 14c:	4c 0f af 44 c7 08    	imul   0x8(%rdi,%rax,8),%r8
 152:	48 83 c0 02          	add    $0x2,%rax
 156:	49 39 c1             	cmp    %rax,%r9
 159:	7e 1f                	jle    17a <combine6+0x55>
 15b:	85 d2                	test   %edx,%edx
 15d:	75 e8                	jne    147 <combine6+0x22>
 15f:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 163:	4c 03 44 c7 08       	add    0x8(%rdi,%rax,8),%r8
 168:	eb e8                	jmp    152 <combine6+0x2d>
 16a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
 170:	b9 01 00 00 00       	mov    $0x1,%ecx
 175:	b8 00 00 00 00       	mov    $0x0,%eax
 17a:	49 39 c2             	cmp    %rax,%r10
 17d:	7e 11                	jle    190 <combine6+0x6b>
 17f:	85 d2                	test   %edx,%edx
 181:	75 19                	jne    19c <combine6+0x77>
 183:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 187:	48 83 c0 01          	add    $0x1,%rax
 18b:	4c 39 d0             	cmp    %r10,%rax
 18e:	75 ef                	jne    17f <combine6+0x5a>
 190:	85 d2                	test   %edx,%edx
 192:	74 0f                	je     1a3 <combine6+0x7e>
 194:	49 0f af c8          	imul   %r8,%rcx
 198:	48 89 0e             	mov    %rcx,(%rsi)
 19b:	c3                   	retq   
 19c:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 1a1:	eb e4                	jmp    187 <combine6+0x62>
 1a3:	4c 01 c1             	add    %r8,%rcx
 1a6:	eb f0                	jmp    198 <combine6+0x73>

00000000000001a8 <combine5>:
 1a8:	4c 8b 0f             	mov    (%rdi),%r9
 1ab:	4d 8d 41 ff          	lea    -0x1(%r9),%r8
 1af:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
 1b3:	4d 85 c0             	test   %r8,%r8
 1b6:	7e 2f                	jle    1e7 <combine5+0x3f>
 1b8:	b9 01 00 00 00       	mov    $0x1,%ecx
 1bd:	b8 00 00 00 00       	mov    $0x0,%eax
 1c2:	eb 14                	jmp    1d8 <combine5+0x30>
 1c4:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 1c9:	48 0f af 4c c7 08    	imul   0x8(%rdi,%rax,8),%rcx
 1cf:	48 83 c0 02          	add    $0x2,%rax
 1d3:	49 39 c0             	cmp    %rax,%r8
 1d6:	7e 19                	jle    1f1 <combine5+0x49>
 1d8:	85 d2                	test   %edx,%edx
 1da:	75 e8                	jne    1c4 <combine5+0x1c>
 1dc:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 1e0:	48 03 4c c7 08       	add    0x8(%rdi,%rax,8),%rcx
 1e5:	eb e8                	jmp    1cf <combine5+0x27>
 1e7:	b9 01 00 00 00       	mov    $0x1,%ecx
 1ec:	b8 00 00 00 00       	mov    $0x0,%eax
 1f1:	49 39 c1             	cmp    %rax,%r9
 1f4:	7e 11                	jle    207 <combine5+0x5f>
 1f6:	85 d2                	test   %edx,%edx
 1f8:	75 11                	jne    20b <combine5+0x63>
 1fa:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 1fe:	48 83 c0 01          	add    $0x1,%rax
 202:	4c 39 c8             	cmp    %r9,%rax
 205:	75 ef                	jne    1f6 <combine5+0x4e>
 207:	48 89 0e             	mov    %rcx,(%rsi)
 20a:	c3                   	retq   
 20b:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 210:	eb ec                	jmp    1fe <combine5+0x56>

0000000000000212 <combine4>:
 212:	4c 8b 07             	mov    (%rdi),%r8
 215:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
 219:	4d 85 c0             	test   %r8,%r8
 21c:	7e 24                	jle    242 <combine4+0x30>
 21e:	b9 01 00 00 00       	mov    $0x1,%ecx
 223:	b8 00 00 00 00       	mov    $0x0,%eax
 228:	eb 0e                	jmp    238 <combine4+0x26>
 22a:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 22f:	48 83 c0 01          	add    $0x1,%rax
 233:	4c 39 c0             	cmp    %r8,%rax
 236:	74 0f                	je     247 <combine4+0x35>
 238:	85 d2                	test   %edx,%edx
 23a:	75 ee                	jne    22a <combine4+0x18>
 23c:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 240:	eb ed                	jmp    22f <combine4+0x1d>
 242:	b9 01 00 00 00       	mov    $0x1,%ecx
 247:	48 89 0e             	mov    %rcx,(%rsi)
 24a:	c3                   	retq   

000000000000024b <combine3_plus>:
 24b:	41 57                	push   %r15
 24d:	41 56                	push   %r14
 24f:	41 55                	push   %r13
 251:	41 54                	push   %r12
 253:	55                   	push   %rbp
 254:	53                   	push   %rbx
 255:	48 83 ec 28          	sub    $0x28,%rsp
 259:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
 25e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 265:	00 00 
 267:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 26c:	31 c0                	xor    %eax,%eax
 26e:	4c 8b 27             	mov    (%rdi),%r12
 271:	4d 85 e4             	test   %r12,%r12
 274:	7e 49                	jle    2bf <combine3_plus+0x74>
 276:	49 89 fd             	mov    %rdi,%r13
 279:	41 89 d6             	mov    %edx,%r14d
 27c:	bd 01 00 00 00       	mov    $0x1,%ebp
 281:	bb 00 00 00 00       	mov    $0x0,%ebx
 286:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
 28b:	eb 0f                	jmp    29c <combine3_plus+0x51>
 28d:	48 0f af 6c 24 10    	imul   0x10(%rsp),%rbp
 293:	48 83 c3 01          	add    $0x1,%rbx
 297:	4c 39 e3             	cmp    %r12,%rbx
 29a:	74 28                	je     2c4 <combine3_plus+0x79>
 29c:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
 2a3:	00 00 
 2a5:	4c 89 fa             	mov    %r15,%rdx
 2a8:	48 89 de             	mov    %rbx,%rsi
 2ab:	4c 89 ef             	mov    %r13,%rdi
 2ae:	e8 4d fd ff ff       	callq  0 <get_vec_element>
 2b3:	45 85 f6             	test   %r14d,%r14d
 2b6:	75 d5                	jne    28d <combine3_plus+0x42>
 2b8:	48 03 6c 24 10       	add    0x10(%rsp),%rbp
 2bd:	eb d4                	jmp    293 <combine3_plus+0x48>
 2bf:	bd 01 00 00 00       	mov    $0x1,%ebp
 2c4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 2c9:	48 89 28             	mov    %rbp,(%rax)
 2cc:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 2d1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 2d8:	00 00 
 2da:	75 0f                	jne    2eb <combine3_plus+0xa0>
 2dc:	48 83 c4 28          	add    $0x28,%rsp
 2e0:	5b                   	pop    %rbx
 2e1:	5d                   	pop    %rbp
 2e2:	41 5c                	pop    %r12
 2e4:	41 5d                	pop    %r13
 2e6:	41 5e                	pop    %r14
 2e8:	41 5f                	pop    %r15
 2ea:	c3                   	retq   
 2eb:	e8 00 00 00 00       	callq  2f0 <combine3>

00000000000002f0 <combine3>:
 2f0:	4c 8b 07             	mov    (%rdi),%r8
 2f3:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
 2f7:	48 c7 06 01 00 00 00 	movq   $0x1,(%rsi)
 2fe:	4d 85 c0             	test   %r8,%r8
 301:	7e 28                	jle    32b <combine3+0x3b>
 303:	b8 00 00 00 00       	mov    $0x0,%eax
 308:	eb 14                	jmp    31e <combine3+0x2e>
 30a:	48 8b 0e             	mov    (%rsi),%rcx
 30d:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 312:	48 89 0e             	mov    %rcx,(%rsi)
 315:	48 83 c0 01          	add    $0x1,%rax
 319:	4c 39 c0             	cmp    %r8,%rax
 31c:	74 0d                	je     32b <combine3+0x3b>
 31e:	85 d2                	test   %edx,%edx
 320:	75 e8                	jne    30a <combine3+0x1a>
 322:	48 8b 0c c7          	mov    (%rdi,%rax,8),%rcx
 326:	48 03 0e             	add    (%rsi),%rcx
 329:	eb e7                	jmp    312 <combine3+0x22>
 32b:	f3 c3                	repz retq 

000000000000032d <combine2>:
 32d:	41 57                	push   %r15
 32f:	41 56                	push   %r14
 331:	41 55                	push   %r13
 333:	41 54                	push   %r12
 335:	55                   	push   %rbp
 336:	53                   	push   %rbx
 337:	48 83 ec 18          	sub    $0x18,%rsp
 33b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 342:	00 00 
 344:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 349:	31 c0                	xor    %eax,%eax
 34b:	4c 8b 27             	mov    (%rdi),%r12
 34e:	48 c7 06 01 00 00 00 	movq   $0x1,(%rsi)
 355:	4d 85 e4             	test   %r12,%r12
 358:	7e 4e                	jle    3a8 <combine2+0x7b>
 35a:	49 89 fd             	mov    %rdi,%r13
 35d:	48 89 f5             	mov    %rsi,%rbp
 360:	41 89 d6             	mov    %edx,%r14d
 363:	bb 00 00 00 00       	mov    $0x0,%ebx
 368:	49 89 e7             	mov    %rsp,%r15
 36b:	eb 16                	jmp    383 <combine2+0x56>
 36d:	48 8b 45 00          	mov    0x0(%rbp),%rax
 371:	48 0f af 04 24       	imul   (%rsp),%rax
 376:	48 89 45 00          	mov    %rax,0x0(%rbp)
 37a:	48 83 c3 01          	add    $0x1,%rbx
 37e:	4c 39 e3             	cmp    %r12,%rbx
 381:	74 25                	je     3a8 <combine2+0x7b>
 383:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
 38a:	00 
 38b:	4c 89 fa             	mov    %r15,%rdx
 38e:	48 89 de             	mov    %rbx,%rsi
 391:	4c 89 ef             	mov    %r13,%rdi
 394:	e8 67 fc ff ff       	callq  0 <get_vec_element>
 399:	45 85 f6             	test   %r14d,%r14d
 39c:	75 cf                	jne    36d <combine2+0x40>
 39e:	48 8b 04 24          	mov    (%rsp),%rax
 3a2:	48 03 45 00          	add    0x0(%rbp),%rax
 3a6:	eb ce                	jmp    376 <combine2+0x49>
 3a8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 3ad:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 3b4:	00 00 
 3b6:	75 0f                	jne    3c7 <combine2+0x9a>
 3b8:	48 83 c4 18          	add    $0x18,%rsp
 3bc:	5b                   	pop    %rbx
 3bd:	5d                   	pop    %rbp
 3be:	41 5c                	pop    %r12
 3c0:	41 5d                	pop    %r13
 3c2:	41 5e                	pop    %r14
 3c4:	41 5f                	pop    %r15
 3c6:	c3                   	retq   
 3c7:	e8 00 00 00 00       	callq  3cc <init_combine>

00000000000003cc <init_combine>:
 3cc:	41 54                	push   %r12
 3ce:	55                   	push   %rbp
 3cf:	53                   	push   %rbx
 3d0:	48 89 fd             	mov    %rdi,%rbp
 3d3:	49 89 f4             	mov    %rsi,%r12
 3d6:	bf 10 00 00 00       	mov    $0x10,%edi
 3db:	e8 00 00 00 00       	callq  3e0 <init_combine+0x14>
 3e0:	48 85 c0             	test   %rax,%rax
 3e3:	0f 84 94 00 00 00    	je     47d <init_combine+0xb1>
 3e9:	48 89 c3             	mov    %rax,%rbx
 3ec:	4c 89 20             	mov    %r12,(%rax)
 3ef:	b8 00 00 00 00       	mov    $0x0,%eax
 3f4:	4d 85 e4             	test   %r12,%r12
 3f7:	7f 6a                	jg     463 <init_combine+0x97>
 3f9:	48 89 43 08          	mov    %rax,0x8(%rbx)
 3fd:	48 89 5d 00          	mov    %rbx,0x0(%rbp)
 401:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 408 <init_combine+0x3c>
 408:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 40f <init_combine+0x43>
 40f:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
 413:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 417:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 41e <init_combine+0x52>
 41e:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 425 <init_combine+0x59>
 425:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
 429:	48 89 5d 20          	mov    %rbx,0x20(%rbp)
 42d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 434 <init_combine+0x68>
 434:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 43b <init_combine+0x6f>
 43b:	48 89 4d 28          	mov    %rcx,0x28(%rbp)
 43f:	48 89 5d 30          	mov    %rbx,0x30(%rbp)
 443:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 44a <init_combine+0x7e>
 44a:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 451 <init_combine+0x85>
 451:	48 89 4d 38          	mov    %rcx,0x38(%rbp)
 455:	48 89 5d 40          	mov    %rbx,0x40(%rbp)
 459:	b8 00 00 00 00       	mov    $0x0,%eax
 45e:	5b                   	pop    %rbx
 45f:	5d                   	pop    %rbp
 460:	41 5c                	pop    %r12
 462:	c3                   	retq   
 463:	be 08 00 00 00       	mov    $0x8,%esi
 468:	4c 89 e7             	mov    %r12,%rdi
 46b:	e8 00 00 00 00       	callq  470 <init_combine+0xa4>
 470:	48 85 c0             	test   %rax,%rax
 473:	75 84                	jne    3f9 <init_combine+0x2d>
 475:	48 89 df             	mov    %rbx,%rdi
 478:	e8 00 00 00 00       	callq  47d <init_combine+0xb1>
 47d:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 484 <init_combine+0xb8>
 484:	e8 00 00 00 00       	callq  489 <init_combine+0xbd>
 489:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
 48e:	eb ce                	jmp    45e <init_combine+0x92>

0000000000000490 <delete_combine>:
 490:	48 8b 3f             	mov    (%rdi),%rdi
 493:	48 85 ff             	test   %rdi,%rdi
 496:	74 0e                	je     4a6 <delete_combine+0x16>
 498:	48 83 ec 08          	sub    $0x8,%rsp
 49c:	e8 00 00 00 00       	callq  4a1 <delete_combine+0x11>
 4a1:	48 83 c4 08          	add    $0x8,%rsp
 4a5:	c3                   	retq   
 4a6:	f3 c3                	repz retq 
