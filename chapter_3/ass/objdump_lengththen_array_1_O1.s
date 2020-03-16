
./obj/lengththen_array_1_O1.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <length_then_array>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	41 54                	push   %r12
   c:	53                   	push   %rbx
   d:	48 83 ec 28          	sub    $0x28,%rsp
  11:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  18:	00 00 
  1a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  1e:	31 c0                	xor    %eax,%eax
  20:	48 63 c7             	movslq %edi,%rax
  23:	48 8d 04 85 12 00 00 	lea    0x12(,%rax,4),%rax
  2a:	00 
  2b:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  2f:	48 29 c4             	sub    %rax,%rsp
  32:	49 89 e6             	mov    %rsp,%r14
  35:	8d 04 3f             	lea    (%rdi,%rdi,1),%eax
  38:	48 63 c8             	movslq %eax,%rcx
  3b:	48 8d 0c 8d 12 00 00 	lea    0x12(,%rcx,4),%rcx
  42:	00 
  43:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  47:	48 29 cc             	sub    %rcx,%rsp
  4a:	49 89 e7             	mov    %rsp,%r15
  4d:	01 f8                	add    %edi,%eax
  4f:	48 98                	cltq   
  51:	48 8d 04 85 12 00 00 	lea    0x12(,%rax,4),%rax
  58:	00 
  59:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  5d:	48 29 c4             	sub    %rax,%rsp
  60:	49 89 e5             	mov    %rsp,%r13
  63:	c1 e7 02             	shl    $0x2,%edi
  66:	48 63 ff             	movslq %edi,%rdi
  69:	48 8d 04 bd 10 00 00 	lea    0x10(,%rdi,4),%rax
  70:	00 
  71:	48 29 c4             	sub    %rax,%rsp
  74:	49 89 e4             	mov    %rsp,%r12
  77:	48 29 c4             	sub    %rax,%rsp
  7a:	48 89 e3             	mov    %rsp,%rbx
  7d:	48 29 c4             	sub    %rax,%rsp
  80:	49 89 e3             	mov    %rsp,%r11
  83:	48 29 c4             	sub    %rax,%rsp
  86:	49 89 e2             	mov    %rsp,%r10
  89:	48 29 c4             	sub    %rax,%rsp
  8c:	49 89 e1             	mov    %rsp,%r9
  8f:	48 29 c4             	sub    %rax,%rsp
  92:	49 89 e0             	mov    %rsp,%r8
  95:	48 29 c4             	sub    %rax,%rsp
  98:	48 89 e7             	mov    %rsp,%rdi
  9b:	48 29 c4             	sub    %rax,%rsp
  9e:	48 89 e1             	mov    %rsp,%rcx
  a1:	48 29 c4             	sub    %rax,%rsp
  a4:	48 89 65 b8          	mov    %rsp,-0x48(%rbp)
  a8:	48 29 c4             	sub    %rax,%rsp
  ab:	48 89 65 b0          	mov    %rsp,-0x50(%rbp)
  af:	48 29 c4             	sub    %rax,%rsp
  b2:	48 89 e0             	mov    %rsp,%rax
  b5:	48 63 f6             	movslq %esi,%rsi
  b8:	45 8b 3c b7          	mov    (%r15,%rsi,4),%r15d
  bc:	45 03 3c b6          	add    (%r14,%rsi,4),%r15d
  c0:	45 03 7c b5 00       	add    0x0(%r13,%rsi,4),%r15d
  c5:	45 03 3c b4          	add    (%r12,%rsi,4),%r15d
  c9:	44 03 3c b3          	add    (%rbx,%rsi,4),%r15d
  cd:	45 03 3c b3          	add    (%r11,%rsi,4),%r15d
  d1:	45 03 3c b2          	add    (%r10,%rsi,4),%r15d
  d5:	45 89 fa             	mov    %r15d,%r10d
  d8:	45 03 14 b1          	add    (%r9,%rsi,4),%r10d
  dc:	45 89 d1             	mov    %r10d,%r9d
  df:	45 03 0c b0          	add    (%r8,%rsi,4),%r9d
  e3:	45 89 c8             	mov    %r9d,%r8d
  e6:	44 03 04 b7          	add    (%rdi,%rsi,4),%r8d
  ea:	44 89 c7             	mov    %r8d,%edi
  ed:	03 3c b1             	add    (%rcx,%rsi,4),%edi
  f0:	89 f9                	mov    %edi,%ecx
  f2:	48 8b 5d b8          	mov    -0x48(%rbp),%rbx
  f6:	03 0c b3             	add    (%rbx,%rsi,4),%ecx
  f9:	48 8b 5d b0          	mov    -0x50(%rbp),%rbx
  fd:	03 0c b3             	add    (%rbx,%rsi,4),%ecx
 100:	03 0c b0             	add    (%rax,%rsi,4),%ecx
 103:	89 0a                	mov    %ecx,(%rdx)
 105:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 109:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 110:	00 00 
 112:	75 0f                	jne    123 <length_then_array+0x123>
 114:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 118:	5b                   	pop    %rbx
 119:	41 5c                	pop    %r12
 11b:	41 5d                	pop    %r13
 11d:	41 5e                	pop    %r14
 11f:	41 5f                	pop    %r15
 121:	5d                   	pop    %rbp
 122:	c3                   	retq   
 123:	e8 00 00 00 00       	callq  128 <fixed_array>

0000000000000128 <fixed_array>:
 128:	c7 06 00 00 00 00    	movl   $0x0,(%rsi)
 12e:	c3                   	retq   
