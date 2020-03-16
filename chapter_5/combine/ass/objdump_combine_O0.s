
obj/combine_O0.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <new_vec>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	bf 10 00 00 00       	mov    $0x10,%edi
  11:	e8 00 00 00 00       	callq  16 <new_vec+0x16>
  16:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1a:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  21:	00 
  22:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  27:	75 07                	jne    30 <new_vec+0x30>
  29:	b8 00 00 00 00       	mov    $0x0,%eax
  2e:	eb 51                	jmp    81 <new_vec+0x81>
  30:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  34:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  38:	48 89 10             	mov    %rdx,(%rax)
  3b:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40:	7e 2f                	jle    71 <new_vec+0x71>
  42:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  46:	be 08 00 00 00       	mov    $0x8,%esi
  4b:	48 89 c7             	mov    %rax,%rdi
  4e:	e8 00 00 00 00       	callq  53 <new_vec+0x53>
  53:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  57:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  5c:	75 13                	jne    71 <new_vec+0x71>
  5e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  62:	48 89 c7             	mov    %rax,%rdi
  65:	e8 00 00 00 00       	callq  6a <new_vec+0x6a>
  6a:	b8 00 00 00 00       	mov    $0x0,%eax
  6f:	eb 10                	jmp    81 <new_vec+0x81>
  71:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  75:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  79:	48 89 50 08          	mov    %rdx,0x8(%rax)
  7d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  81:	c9                   	leaveq 
  82:	c3                   	retq   

0000000000000083 <get_vec_element>:
  83:	55                   	push   %rbp
  84:	48 89 e5             	mov    %rsp,%rbp
  87:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  8b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  8f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  93:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  98:	78 0d                	js     a7 <get_vec_element+0x24>
  9a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  9e:	48 8b 00             	mov    (%rax),%rax
  a1:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  a5:	7c 07                	jl     ae <get_vec_element+0x2b>
  a7:	b8 00 00 00 00       	mov    $0x0,%eax
  ac:	eb 22                	jmp    d0 <get_vec_element+0x4d>
  ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  b2:	48 8b 40 08          	mov    0x8(%rax),%rax
  b6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  ba:	48 c1 e2 03          	shl    $0x3,%rdx
  be:	48 01 d0             	add    %rdx,%rax
  c1:	48 8b 10             	mov    (%rax),%rdx
  c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  c8:	48 89 10             	mov    %rdx,(%rax)
  cb:	b8 01 00 00 00       	mov    $0x1,%eax
  d0:	5d                   	pop    %rbp
  d1:	c3                   	retq   

00000000000000d2 <vec_length>:
  d2:	55                   	push   %rbp
  d3:	48 89 e5             	mov    %rsp,%rbp
  d6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  de:	48 8b 00             	mov    (%rax),%rax
  e1:	5d                   	pop    %rbp
  e2:	c3                   	retq   

00000000000000e3 <get_vec_start>:
  e3:	55                   	push   %rbp
  e4:	48 89 e5             	mov    %rsp,%rbp
  e7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  eb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  ef:	48 8b 40 08          	mov    0x8(%rax),%rax
  f3:	5d                   	pop    %rbp
  f4:	c3                   	retq   

00000000000000f5 <combine1>:
  f5:	55                   	push   %rbp
  f6:	48 89 e5             	mov    %rsp,%rbp
  f9:	48 83 ec 40          	sub    $0x40,%rsp
  fd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
 101:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
 105:	89 55 cc             	mov    %edx,-0x34(%rbp)
 108:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 10f:	00 00 
 111:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 115:	31 c0                	xor    %eax,%eax
 117:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 11b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 11f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 123:	48 c7 00 01 00 00 00 	movq   $0x1,(%rax)
 12a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
 131:	00 
 132:	eb 50                	jmp    184 <combine1+0x8f>
 134:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
 13b:	00 
 13c:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
 140:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 144:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 148:	48 89 ce             	mov    %rcx,%rsi
 14b:	48 89 c7             	mov    %rax,%rdi
 14e:	e8 30 ff ff ff       	callq  83 <get_vec_element>
 153:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
 157:	75 10                	jne    169 <combine1+0x74>
 159:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 15d:	48 8b 10             	mov    (%rax),%rdx
 160:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 164:	48 01 d0             	add    %rdx,%rax
 167:	eb 0f                	jmp    178 <combine1+0x83>
 169:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 16d:	48 8b 10             	mov    (%rax),%rdx
 170:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 174:	48 0f af c2          	imul   %rdx,%rax
 178:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 17c:	48 89 02             	mov    %rax,(%rdx)
 17f:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
 184:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 188:	48 89 c7             	mov    %rax,%rdi
 18b:	e8 42 ff ff ff       	callq  d2 <vec_length>
 190:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
 194:	7c 9e                	jl     134 <combine1+0x3f>
 196:	90                   	nop
 197:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 19b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 1a2:	00 00 
 1a4:	74 05                	je     1ab <combine1+0xb6>
 1a6:	e8 00 00 00 00       	callq  1ab <combine1+0xb6>
 1ab:	c9                   	leaveq 
 1ac:	c3                   	retq   

00000000000001ad <combine2>:
 1ad:	55                   	push   %rbp
 1ae:	48 89 e5             	mov    %rsp,%rbp
 1b1:	48 83 ec 50          	sub    $0x50,%rsp
 1b5:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
 1b9:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
 1bd:	89 55 bc             	mov    %edx,-0x44(%rbp)
 1c0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 1c7:	00 00 
 1c9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 1cd:	31 c0                	xor    %eax,%eax
 1cf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 1d3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 1d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1db:	48 89 c7             	mov    %rax,%rdi
 1de:	e8 ef fe ff ff       	callq  d2 <vec_length>
 1e3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 1e7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 1eb:	48 c7 00 01 00 00 00 	movq   $0x1,(%rax)
 1f2:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
 1f9:	00 
 1fa:	eb 50                	jmp    24c <combine2+0x9f>
 1fc:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
 203:	00 
 204:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
 208:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
 20c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 210:	48 89 ce             	mov    %rcx,%rsi
 213:	48 89 c7             	mov    %rax,%rdi
 216:	e8 68 fe ff ff       	callq  83 <get_vec_element>
 21b:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
 21f:	75 10                	jne    231 <combine2+0x84>
 221:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 225:	48 8b 10             	mov    (%rax),%rdx
 228:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 22c:	48 01 d0             	add    %rdx,%rax
 22f:	eb 0f                	jmp    240 <combine2+0x93>
 231:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 235:	48 8b 10             	mov    (%rax),%rdx
 238:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 23c:	48 0f af c2          	imul   %rdx,%rax
 240:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
 244:	48 89 02             	mov    %rax,(%rdx)
 247:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
 24c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 250:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
 254:	7c a6                	jl     1fc <combine2+0x4f>
 256:	90                   	nop
 257:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 25b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 262:	00 00 
 264:	74 05                	je     26b <combine2+0xbe>
 266:	e8 00 00 00 00       	callq  26b <combine2+0xbe>
 26b:	c9                   	leaveq 
 26c:	c3                   	retq   

000000000000026d <combine3>:
 26d:	55                   	push   %rbp
 26e:	48 89 e5             	mov    %rsp,%rbp
 271:	48 83 ec 38          	sub    $0x38,%rsp
 275:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
 279:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
 27d:	89 55 cc             	mov    %edx,-0x34(%rbp)
 280:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 284:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 288:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 28c:	48 89 c7             	mov    %rax,%rdi
 28f:	e8 3e fe ff ff       	callq  d2 <vec_length>
 294:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 298:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 29c:	48 89 c7             	mov    %rax,%rdi
 29f:	e8 3f fe ff ff       	callq  e3 <get_vec_start>
 2a4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 2a8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 2ac:	48 c7 00 01 00 00 00 	movq   $0x1,(%rax)
 2b3:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
 2ba:	00 
 2bb:	eb 55                	jmp    312 <combine3+0xa5>
 2bd:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
 2c1:	75 22                	jne    2e5 <combine3+0x78>
 2c3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 2c7:	48 8b 10             	mov    (%rax),%rdx
 2ca:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 2ce:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 2d5:	00 
 2d6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 2da:	48 01 c8             	add    %rcx,%rax
 2dd:	48 8b 00             	mov    (%rax),%rax
 2e0:	48 01 d0             	add    %rdx,%rax
 2e3:	eb 21                	jmp    306 <combine3+0x99>
 2e5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 2e9:	48 8b 10             	mov    (%rax),%rdx
 2ec:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 2f0:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 2f7:	00 
 2f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 2fc:	48 01 c8             	add    %rcx,%rax
 2ff:	48 8b 00             	mov    (%rax),%rax
 302:	48 0f af c2          	imul   %rdx,%rax
 306:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 30a:	48 89 02             	mov    %rax,(%rdx)
 30d:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
 312:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 316:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
 31a:	7c a1                	jl     2bd <combine3+0x50>
 31c:	90                   	nop
 31d:	c9                   	leaveq 
 31e:	c3                   	retq   

000000000000031f <combine3_plus>:
 31f:	55                   	push   %rbp
 320:	48 89 e5             	mov    %rsp,%rbp
 323:	48 83 ec 50          	sub    $0x50,%rsp
 327:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
 32b:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
 32f:	89 55 bc             	mov    %edx,-0x44(%rbp)
 332:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 339:	00 00 
 33b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 33f:	31 c0                	xor    %eax,%eax
 341:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 345:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 349:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 34d:	48 89 c7             	mov    %rax,%rdi
 350:	e8 7d fd ff ff       	callq  d2 <vec_length>
 355:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 359:	48 c7 45 e0 01 00 00 	movq   $0x1,-0x20(%rbp)
 360:	00 
 361:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
 368:	00 
 369:	eb 44                	jmp    3af <combine3_plus+0x90>
 36b:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
 372:	00 
 373:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
 377:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
 37b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 37f:	48 89 ce             	mov    %rcx,%rsi
 382:	48 89 c7             	mov    %rax,%rdi
 385:	e8 f9 fc ff ff       	callq  83 <get_vec_element>
 38a:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
 38e:	75 0d                	jne    39d <combine3_plus+0x7e>
 390:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 394:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 398:	48 01 d0             	add    %rdx,%rax
 39b:	eb 09                	jmp    3a6 <combine3_plus+0x87>
 39d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 3a1:	48 0f af 45 e0       	imul   -0x20(%rbp),%rax
 3a6:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 3aa:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
 3af:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 3b3:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
 3b7:	7c b2                	jl     36b <combine3_plus+0x4c>
 3b9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 3bd:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 3c1:	48 89 10             	mov    %rdx,(%rax)
 3c4:	90                   	nop
 3c5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 3c9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 3d0:	00 00 
 3d2:	74 05                	je     3d9 <combine3_plus+0xba>
 3d4:	e8 00 00 00 00       	callq  3d9 <combine3_plus+0xba>
 3d9:	c9                   	leaveq 
 3da:	c3                   	retq   

00000000000003db <combine4>:
 3db:	55                   	push   %rbp
 3dc:	48 89 e5             	mov    %rsp,%rbp
 3df:	48 83 ec 48          	sub    $0x48,%rsp
 3e3:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
 3e7:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
 3eb:	89 55 bc             	mov    %edx,-0x44(%rbp)
 3ee:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 3f2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 3f6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 3fa:	48 89 c7             	mov    %rax,%rdi
 3fd:	e8 d0 fc ff ff       	callq  d2 <vec_length>
 402:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 406:	48 c7 45 e0 01 00 00 	movq   $0x1,-0x20(%rbp)
 40d:	00 
 40e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 412:	48 89 c7             	mov    %rax,%rdi
 415:	e8 c9 fc ff ff       	callq  e3 <get_vec_start>
 41a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 41e:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
 425:	00 
 426:	eb 49                	jmp    471 <combine4+0x96>
 428:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
 42c:	75 1f                	jne    44d <combine4+0x72>
 42e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 432:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 439:	00 
 43a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 43e:	48 01 d0             	add    %rdx,%rax
 441:	48 8b 10             	mov    (%rax),%rdx
 444:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 448:	48 01 d0             	add    %rdx,%rax
 44b:	eb 1b                	jmp    468 <combine4+0x8d>
 44d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 451:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 458:	00 
 459:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 45d:	48 01 d0             	add    %rdx,%rax
 460:	48 8b 00             	mov    (%rax),%rax
 463:	48 0f af 45 e0       	imul   -0x20(%rbp),%rax
 468:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 46c:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
 471:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 475:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
 479:	7c ad                	jl     428 <combine4+0x4d>
 47b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 47f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 483:	48 89 10             	mov    %rdx,(%rax)
 486:	90                   	nop
 487:	c9                   	leaveq 
 488:	c3                   	retq   

0000000000000489 <combine5>:
 489:	55                   	push   %rbp
 48a:	48 89 e5             	mov    %rsp,%rbp
 48d:	48 83 ec 48          	sub    $0x48,%rsp
 491:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
 495:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
 499:	89 55 bc             	mov    %edx,-0x44(%rbp)
 49c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 4a0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 4a4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 4a8:	48 89 c7             	mov    %rax,%rdi
 4ab:	e8 22 fc ff ff       	callq  d2 <vec_length>
 4b0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 4b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 4b8:	48 83 e8 01          	sub    $0x1,%rax
 4bc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 4c0:	48 c7 45 d8 01 00 00 	movq   $0x1,-0x28(%rbp)
 4c7:	00 
 4c8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 4cc:	48 89 c7             	mov    %rax,%rdi
 4cf:	e8 0f fc ff ff       	callq  e3 <get_vec_start>
 4d4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 4d8:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
 4df:	00 
 4e0:	e9 87 00 00 00       	jmpq   56c <combine5+0xe3>
 4e5:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
 4e9:	75 3c                	jne    527 <combine5+0x9e>
 4eb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 4ef:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 4f6:	00 
 4f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 4fb:	48 01 d0             	add    %rdx,%rax
 4fe:	48 8b 10             	mov    (%rax),%rdx
 501:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 505:	48 01 c2             	add    %rax,%rdx
 508:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 50c:	48 83 c0 01          	add    $0x1,%rax
 510:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 517:	00 
 518:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 51c:	48 01 c8             	add    %rcx,%rax
 51f:	48 8b 00             	mov    (%rax),%rax
 522:	48 01 d0             	add    %rdx,%rax
 525:	eb 3c                	jmp    563 <combine5+0xda>
 527:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 52b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 532:	00 
 533:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 537:	48 01 d0             	add    %rdx,%rax
 53a:	48 8b 00             	mov    (%rax),%rax
 53d:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
 542:	48 89 c2             	mov    %rax,%rdx
 545:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 549:	48 83 c0 01          	add    $0x1,%rax
 54d:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 554:	00 
 555:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 559:	48 01 c8             	add    %rcx,%rax
 55c:	48 8b 00             	mov    (%rax),%rax
 55f:	48 0f af c2          	imul   %rdx,%rax
 563:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 567:	48 83 45 d0 02       	addq   $0x2,-0x30(%rbp)
 56c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 570:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
 574:	0f 8c 6b ff ff ff    	jl     4e5 <combine5+0x5c>
 57a:	eb 49                	jmp    5c5 <combine5+0x13c>
 57c:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
 580:	75 1f                	jne    5a1 <combine5+0x118>
 582:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 586:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 58d:	00 
 58e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 592:	48 01 d0             	add    %rdx,%rax
 595:	48 8b 10             	mov    (%rax),%rdx
 598:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 59c:	48 01 d0             	add    %rdx,%rax
 59f:	eb 1b                	jmp    5bc <combine5+0x133>
 5a1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 5a5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 5ac:	00 
 5ad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 5b1:	48 01 d0             	add    %rdx,%rax
 5b4:	48 8b 00             	mov    (%rax),%rax
 5b7:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
 5bc:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 5c0:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
 5c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 5c9:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
 5cd:	7c ad                	jl     57c <combine5+0xf3>
 5cf:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 5d3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
 5d7:	48 89 10             	mov    %rdx,(%rax)
 5da:	90                   	nop
 5db:	c9                   	leaveq 
 5dc:	c3                   	retq   

00000000000005dd <combine6>:
 5dd:	55                   	push   %rbp
 5de:	48 89 e5             	mov    %rsp,%rbp
 5e1:	48 83 ec 58          	sub    $0x58,%rsp
 5e5:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
 5e9:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
 5ed:	89 55 ac             	mov    %edx,-0x54(%rbp)
 5f0:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 5f4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 5f8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 5fc:	48 89 c7             	mov    %rax,%rdi
 5ff:	e8 ce fa ff ff       	callq  d2 <vec_length>
 604:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 608:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 60c:	48 83 e8 01          	sub    $0x1,%rax
 610:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 614:	48 c7 45 d0 01 00 00 	movq   $0x1,-0x30(%rbp)
 61b:	00 
 61c:	48 c7 45 d8 01 00 00 	movq   $0x1,-0x28(%rbp)
 623:	00 
 624:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 628:	48 89 c7             	mov    %rax,%rdi
 62b:	e8 b3 fa ff ff       	callq  e3 <get_vec_start>
 630:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 634:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
 63b:	00 
 63c:	e9 95 00 00 00       	jmpq   6d6 <combine6+0xf9>
 641:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
 645:	75 1f                	jne    666 <combine6+0x89>
 647:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 64b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 652:	00 
 653:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 657:	48 01 d0             	add    %rdx,%rax
 65a:	48 8b 10             	mov    (%rax),%rdx
 65d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 661:	48 01 d0             	add    %rdx,%rax
 664:	eb 1b                	jmp    681 <combine6+0xa4>
 666:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 66a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 671:	00 
 672:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 676:	48 01 d0             	add    %rdx,%rax
 679:	48 8b 00             	mov    (%rax),%rax
 67c:	48 0f af 45 d0       	imul   -0x30(%rbp),%rax
 681:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
 685:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
 689:	75 23                	jne    6ae <combine6+0xd1>
 68b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 68f:	48 83 c0 01          	add    $0x1,%rax
 693:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 69a:	00 
 69b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 69f:	48 01 d0             	add    %rdx,%rax
 6a2:	48 8b 10             	mov    (%rax),%rdx
 6a5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 6a9:	48 01 d0             	add    %rdx,%rax
 6ac:	eb 1f                	jmp    6cd <combine6+0xf0>
 6ae:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 6b2:	48 83 c0 01          	add    $0x1,%rax
 6b6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 6bd:	00 
 6be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 6c2:	48 01 d0             	add    %rdx,%rax
 6c5:	48 8b 00             	mov    (%rax),%rax
 6c8:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
 6cd:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 6d1:	48 83 45 c8 02       	addq   $0x2,-0x38(%rbp)
 6d6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 6da:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
 6de:	0f 8c 5d ff ff ff    	jl     641 <combine6+0x64>
 6e4:	eb 49                	jmp    72f <combine6+0x152>
 6e6:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
 6ea:	75 1f                	jne    70b <combine6+0x12e>
 6ec:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 6f0:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 6f7:	00 
 6f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 6fc:	48 01 d0             	add    %rdx,%rax
 6ff:	48 8b 10             	mov    (%rax),%rdx
 702:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 706:	48 01 d0             	add    %rdx,%rax
 709:	eb 1b                	jmp    726 <combine6+0x149>
 70b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 70f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 716:	00 
 717:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 71b:	48 01 d0             	add    %rdx,%rax
 71e:	48 8b 00             	mov    (%rax),%rax
 721:	48 0f af 45 d0       	imul   -0x30(%rbp),%rax
 726:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
 72a:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
 72f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 733:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
 737:	7c ad                	jl     6e6 <combine6+0x109>
 739:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
 73d:	75 0d                	jne    74c <combine6+0x16f>
 73f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 743:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 747:	48 01 d0             	add    %rdx,%rax
 74a:	eb 09                	jmp    755 <combine6+0x178>
 74c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 750:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
 755:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
 759:	48 89 02             	mov    %rax,(%rdx)
 75c:	90                   	nop
 75d:	c9                   	leaveq 
 75e:	c3                   	retq   

000000000000075f <combine7>:
 75f:	55                   	push   %rbp
 760:	48 89 e5             	mov    %rsp,%rbp
 763:	48 83 ec 48          	sub    $0x48,%rsp
 767:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
 76b:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
 76f:	89 55 bc             	mov    %edx,-0x44(%rbp)
 772:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 776:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 77a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 77e:	48 89 c7             	mov    %rax,%rdi
 781:	e8 4c f9 ff ff       	callq  d2 <vec_length>
 786:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 78a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 78e:	48 83 e8 01          	sub    $0x1,%rax
 792:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 796:	48 c7 45 d8 01 00 00 	movq   $0x1,-0x28(%rbp)
 79d:	00 
 79e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 7a2:	48 89 c7             	mov    %rax,%rdi
 7a5:	e8 39 f9 ff ff       	callq  e3 <get_vec_start>
 7aa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 7ae:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
 7b5:	00 
 7b6:	e9 87 00 00 00       	jmpq   842 <combine7+0xe3>
 7bb:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
 7bf:	75 3c                	jne    7fd <combine7+0x9e>
 7c1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 7c5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 7cc:	00 
 7cd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 7d1:	48 01 d0             	add    %rdx,%rax
 7d4:	48 8b 10             	mov    (%rax),%rdx
 7d7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 7db:	48 01 c2             	add    %rax,%rdx
 7de:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 7e2:	48 83 c0 01          	add    $0x1,%rax
 7e6:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 7ed:	00 
 7ee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 7f2:	48 01 c8             	add    %rcx,%rax
 7f5:	48 8b 00             	mov    (%rax),%rax
 7f8:	48 01 d0             	add    %rdx,%rax
 7fb:	eb 3c                	jmp    839 <combine7+0xda>
 7fd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 801:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 808:	00 
 809:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 80d:	48 01 d0             	add    %rdx,%rax
 810:	48 8b 00             	mov    (%rax),%rax
 813:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
 818:	48 89 c2             	mov    %rax,%rdx
 81b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 81f:	48 83 c0 01          	add    $0x1,%rax
 823:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 82a:	00 
 82b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 82f:	48 01 c8             	add    %rcx,%rax
 832:	48 8b 00             	mov    (%rax),%rax
 835:	48 0f af c2          	imul   %rdx,%rax
 839:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 83d:	48 83 45 d0 02       	addq   $0x2,-0x30(%rbp)
 842:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 846:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
 84a:	0f 8c 6b ff ff ff    	jl     7bb <combine7+0x5c>
 850:	eb 49                	jmp    89b <combine7+0x13c>
 852:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
 856:	75 1f                	jne    877 <combine7+0x118>
 858:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 85c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 863:	00 
 864:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 868:	48 01 d0             	add    %rdx,%rax
 86b:	48 8b 10             	mov    (%rax),%rdx
 86e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 872:	48 01 d0             	add    %rdx,%rax
 875:	eb 1b                	jmp    892 <combine7+0x133>
 877:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 87b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 882:	00 
 883:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 887:	48 01 d0             	add    %rdx,%rax
 88a:	48 8b 00             	mov    (%rax),%rax
 88d:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
 892:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 896:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
 89b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 89f:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
 8a3:	7c ad                	jl     852 <combine7+0xf3>
 8a5:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 8a9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
 8ad:	48 89 10             	mov    %rdx,(%rax)
 8b0:	90                   	nop
 8b1:	c9                   	leaveq 
 8b2:	c3                   	retq   

00000000000008b3 <init_combine>:
 8b3:	55                   	push   %rbp
 8b4:	48 89 e5             	mov    %rsp,%rbp
 8b7:	48 83 ec 20          	sub    $0x20,%rsp
 8bb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 8bf:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 8c3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 8c7:	48 89 c7             	mov    %rax,%rdi
 8ca:	e8 31 f7 ff ff       	callq  0 <new_vec>
 8cf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 8d3:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
 8d8:	75 13                	jne    8ed <init_combine+0x3a>
 8da:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 8e1 <init_combine+0x2e>
 8e1:	e8 00 00 00 00       	callq  8e6 <init_combine+0x33>
 8e6:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
 8eb:	eb 2c                	jmp    919 <init_combine+0x66>
 8ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 8f1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 8f5:	48 89 10             	mov    %rdx,(%rax)
 8f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 8fc:	48 83 c0 08          	add    $0x8,%rax
 900:	ba 40 00 00 00       	mov    $0x40,%edx
 905:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 90c <init_combine+0x59>
 90c:	48 89 c7             	mov    %rax,%rdi
 90f:	e8 00 00 00 00       	callq  914 <init_combine+0x61>
 914:	b8 00 00 00 00       	mov    $0x0,%eax
 919:	c9                   	leaveq 
 91a:	c3                   	retq   

000000000000091b <delete_combine>:
 91b:	55                   	push   %rbp
 91c:	48 89 e5             	mov    %rsp,%rbp
 91f:	48 83 ec 10          	sub    $0x10,%rsp
 923:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 927:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 92b:	48 8b 00             	mov    (%rax),%rax
 92e:	48 85 c0             	test   %rax,%rax
 931:	74 10                	je     943 <delete_combine+0x28>
 933:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 937:	48 8b 00             	mov    (%rax),%rax
 93a:	48 89 c7             	mov    %rax,%rdi
 93d:	e8 00 00 00 00       	callq  942 <delete_combine+0x27>
 942:	90                   	nop
 943:	90                   	nop
 944:	c9                   	leaveq 
 945:	c3                   	retq   
