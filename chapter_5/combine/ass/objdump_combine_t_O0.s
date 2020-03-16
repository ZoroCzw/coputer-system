
bin/combine_t_O0：     文件格式 elf64-x86-64


Disassembly of section .init:

00000000000007b0 <_init>:
 7b0:	48 83 ec 08          	sub    $0x8,%rsp
 7b4:	48 8b 05 2d 18 20 00 	mov    0x20182d(%rip),%rax        # 201fe8 <__gmon_start__>
 7bb:	48 85 c0             	test   %rax,%rax
 7be:	74 02                	je     7c2 <_init+0x12>
 7c0:	ff d0                	callq  *%rax
 7c2:	48 83 c4 08          	add    $0x8,%rsp
 7c6:	c3                   	retq   

Disassembly of section .plt:

00000000000007d0 <.plt>:
 7d0:	ff 35 aa 17 20 00    	pushq  0x2017aa(%rip)        # 201f80 <_GLOBAL_OFFSET_TABLE_+0x8>
 7d6:	ff 25 ac 17 20 00    	jmpq   *0x2017ac(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x10>
 7dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000007e0 <free@plt>:
 7e0:	ff 25 aa 17 20 00    	jmpq   *0x2017aa(%rip)        # 201f90 <free@GLIBC_2.2.5>
 7e6:	68 00 00 00 00       	pushq  $0x0
 7eb:	e9 e0 ff ff ff       	jmpq   7d0 <.plt>

00000000000007f0 <puts@plt>:
 7f0:	ff 25 a2 17 20 00    	jmpq   *0x2017a2(%rip)        # 201f98 <puts@GLIBC_2.2.5>
 7f6:	68 01 00 00 00       	pushq  $0x1
 7fb:	e9 d0 ff ff ff       	jmpq   7d0 <.plt>

0000000000000800 <clock@plt>:
 800:	ff 25 9a 17 20 00    	jmpq   *0x20179a(%rip)        # 201fa0 <clock@GLIBC_2.2.5>
 806:	68 02 00 00 00       	pushq  $0x2
 80b:	e9 c0 ff ff ff       	jmpq   7d0 <.plt>

0000000000000810 <__stack_chk_fail@plt>:
 810:	ff 25 92 17 20 00    	jmpq   *0x201792(%rip)        # 201fa8 <__stack_chk_fail@GLIBC_2.4>
 816:	68 03 00 00 00       	pushq  $0x3
 81b:	e9 b0 ff ff ff       	jmpq   7d0 <.plt>

0000000000000820 <printf@plt>:
 820:	ff 25 8a 17 20 00    	jmpq   *0x20178a(%rip)        # 201fb0 <printf@GLIBC_2.2.5>
 826:	68 04 00 00 00       	pushq  $0x4
 82b:	e9 a0 ff ff ff       	jmpq   7d0 <.plt>

0000000000000830 <calloc@plt>:
 830:	ff 25 82 17 20 00    	jmpq   *0x201782(%rip)        # 201fb8 <calloc@GLIBC_2.2.5>
 836:	68 05 00 00 00       	pushq  $0x5
 83b:	e9 90 ff ff ff       	jmpq   7d0 <.plt>

0000000000000840 <memcpy@plt>:
 840:	ff 25 7a 17 20 00    	jmpq   *0x20177a(%rip)        # 201fc0 <memcpy@GLIBC_2.14>
 846:	68 06 00 00 00       	pushq  $0x6
 84b:	e9 80 ff ff ff       	jmpq   7d0 <.plt>

0000000000000850 <malloc@plt>:
 850:	ff 25 72 17 20 00    	jmpq   *0x201772(%rip)        # 201fc8 <malloc@GLIBC_2.2.5>
 856:	68 07 00 00 00       	pushq  $0x7
 85b:	e9 70 ff ff ff       	jmpq   7d0 <.plt>

0000000000000860 <atoi@plt>:
 860:	ff 25 6a 17 20 00    	jmpq   *0x20176a(%rip)        # 201fd0 <atoi@GLIBC_2.2.5>
 866:	68 08 00 00 00       	pushq  $0x8
 86b:	e9 60 ff ff ff       	jmpq   7d0 <.plt>

Disassembly of section .plt.got:

0000000000000870 <__cxa_finalize@plt>:
 870:	ff 25 82 17 20 00    	jmpq   *0x201782(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 876:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000880 <_start>:
     880:	31 ed                	xor    %ebp,%ebp
     882:	49 89 d1             	mov    %rdx,%r9
     885:	5e                   	pop    %rsi
     886:	48 89 e2             	mov    %rsp,%rdx
     889:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     88d:	50                   	push   %rax
     88e:	54                   	push   %rsp
     88f:	4c 8d 05 3a 0c 00 00 	lea    0xc3a(%rip),%r8        # 14d0 <__libc_csu_fini>
     896:	48 8d 0d c3 0b 00 00 	lea    0xbc3(%rip),%rcx        # 1460 <__libc_csu_init>
     89d:	48 8d 3d 2c 0a 00 00 	lea    0xa2c(%rip),%rdi        # 12d0 <main>
     8a4:	ff 15 36 17 20 00    	callq  *0x201736(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
     8aa:	f4                   	hlt    
     8ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008b0 <deregister_tm_clones>:
     8b0:	48 8d 3d a9 17 20 00 	lea    0x2017a9(%rip),%rdi        # 202060 <__TMC_END__>
     8b7:	55                   	push   %rbp
     8b8:	48 8d 05 a1 17 20 00 	lea    0x2017a1(%rip),%rax        # 202060 <__TMC_END__>
     8bf:	48 39 f8             	cmp    %rdi,%rax
     8c2:	48 89 e5             	mov    %rsp,%rbp
     8c5:	74 19                	je     8e0 <deregister_tm_clones+0x30>
     8c7:	48 8b 05 0a 17 20 00 	mov    0x20170a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
     8ce:	48 85 c0             	test   %rax,%rax
     8d1:	74 0d                	je     8e0 <deregister_tm_clones+0x30>
     8d3:	5d                   	pop    %rbp
     8d4:	ff e0                	jmpq   *%rax
     8d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     8dd:	00 00 00 
     8e0:	5d                   	pop    %rbp
     8e1:	c3                   	retq   
     8e2:	0f 1f 40 00          	nopl   0x0(%rax)
     8e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     8ed:	00 00 00 

00000000000008f0 <register_tm_clones>:
     8f0:	48 8d 3d 69 17 20 00 	lea    0x201769(%rip),%rdi        # 202060 <__TMC_END__>
     8f7:	48 8d 35 62 17 20 00 	lea    0x201762(%rip),%rsi        # 202060 <__TMC_END__>
     8fe:	55                   	push   %rbp
     8ff:	48 29 fe             	sub    %rdi,%rsi
     902:	48 89 e5             	mov    %rsp,%rbp
     905:	48 c1 fe 03          	sar    $0x3,%rsi
     909:	48 89 f0             	mov    %rsi,%rax
     90c:	48 c1 e8 3f          	shr    $0x3f,%rax
     910:	48 01 c6             	add    %rax,%rsi
     913:	48 d1 fe             	sar    %rsi
     916:	74 18                	je     930 <register_tm_clones+0x40>
     918:	48 8b 05 d1 16 20 00 	mov    0x2016d1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
     91f:	48 85 c0             	test   %rax,%rax
     922:	74 0c                	je     930 <register_tm_clones+0x40>
     924:	5d                   	pop    %rbp
     925:	ff e0                	jmpq   *%rax
     927:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     92e:	00 00 
     930:	5d                   	pop    %rbp
     931:	c3                   	retq   
     932:	0f 1f 40 00          	nopl   0x0(%rax)
     936:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     93d:	00 00 00 

0000000000000940 <__do_global_dtors_aux>:
     940:	80 3d 19 17 20 00 00 	cmpb   $0x0,0x201719(%rip)        # 202060 <__TMC_END__>
     947:	75 2f                	jne    978 <__do_global_dtors_aux+0x38>
     949:	48 83 3d a7 16 20 00 	cmpq   $0x0,0x2016a7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
     950:	00 
     951:	55                   	push   %rbp
     952:	48 89 e5             	mov    %rsp,%rbp
     955:	74 0c                	je     963 <__do_global_dtors_aux+0x23>
     957:	48 8b 3d aa 16 20 00 	mov    0x2016aa(%rip),%rdi        # 202008 <__dso_handle>
     95e:	e8 0d ff ff ff       	callq  870 <__cxa_finalize@plt>
     963:	e8 48 ff ff ff       	callq  8b0 <deregister_tm_clones>
     968:	c6 05 f1 16 20 00 01 	movb   $0x1,0x2016f1(%rip)        # 202060 <__TMC_END__>
     96f:	5d                   	pop    %rbp
     970:	c3                   	retq   
     971:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     978:	f3 c3                	repz retq 
     97a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000980 <frame_dummy>:
     980:	55                   	push   %rbp
     981:	48 89 e5             	mov    %rsp,%rbp
     984:	5d                   	pop    %rbp
     985:	e9 66 ff ff ff       	jmpq   8f0 <register_tm_clones>

000000000000098a <new_vec>:
     98a:	55                   	push   %rbp
     98b:	48 89 e5             	mov    %rsp,%rbp
     98e:	48 83 ec 20          	sub    $0x20,%rsp
     992:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     996:	bf 10 00 00 00       	mov    $0x10,%edi
     99b:	e8 b0 fe ff ff       	callq  850 <malloc@plt>
     9a0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     9a4:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
     9ab:	00 
     9ac:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
     9b1:	75 07                	jne    9ba <new_vec+0x30>
     9b3:	b8 00 00 00 00       	mov    $0x0,%eax
     9b8:	eb 51                	jmp    a0b <new_vec+0x81>
     9ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     9be:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
     9c2:	48 89 10             	mov    %rdx,(%rax)
     9c5:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
     9ca:	7e 2f                	jle    9fb <new_vec+0x71>
     9cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     9d0:	be 08 00 00 00       	mov    $0x8,%esi
     9d5:	48 89 c7             	mov    %rax,%rdi
     9d8:	e8 53 fe ff ff       	callq  830 <calloc@plt>
     9dd:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     9e1:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
     9e6:	75 13                	jne    9fb <new_vec+0x71>
     9e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     9ec:	48 89 c7             	mov    %rax,%rdi
     9ef:	e8 ec fd ff ff       	callq  7e0 <free@plt>
     9f4:	b8 00 00 00 00       	mov    $0x0,%eax
     9f9:	eb 10                	jmp    a0b <new_vec+0x81>
     9fb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     9ff:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
     a03:	48 89 50 08          	mov    %rdx,0x8(%rax)
     a07:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     a0b:	c9                   	leaveq 
     a0c:	c3                   	retq   

0000000000000a0d <get_vec_element>:
     a0d:	55                   	push   %rbp
     a0e:	48 89 e5             	mov    %rsp,%rbp
     a11:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     a15:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
     a19:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     a1d:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
     a22:	78 0d                	js     a31 <get_vec_element+0x24>
     a24:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     a28:	48 8b 00             	mov    (%rax),%rax
     a2b:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
     a2f:	7c 07                	jl     a38 <get_vec_element+0x2b>
     a31:	b8 00 00 00 00       	mov    $0x0,%eax
     a36:	eb 22                	jmp    a5a <get_vec_element+0x4d>
     a38:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     a3c:	48 8b 40 08          	mov    0x8(%rax),%rax
     a40:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
     a44:	48 c1 e2 03          	shl    $0x3,%rdx
     a48:	48 01 d0             	add    %rdx,%rax
     a4b:	48 8b 10             	mov    (%rax),%rdx
     a4e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     a52:	48 89 10             	mov    %rdx,(%rax)
     a55:	b8 01 00 00 00       	mov    $0x1,%eax
     a5a:	5d                   	pop    %rbp
     a5b:	c3                   	retq   

0000000000000a5c <vec_length>:
     a5c:	55                   	push   %rbp
     a5d:	48 89 e5             	mov    %rsp,%rbp
     a60:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     a64:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     a68:	48 8b 00             	mov    (%rax),%rax
     a6b:	5d                   	pop    %rbp
     a6c:	c3                   	retq   

0000000000000a6d <get_vec_start>:
     a6d:	55                   	push   %rbp
     a6e:	48 89 e5             	mov    %rsp,%rbp
     a71:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     a75:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     a79:	48 8b 40 08          	mov    0x8(%rax),%rax
     a7d:	5d                   	pop    %rbp
     a7e:	c3                   	retq   

0000000000000a7f <combine1>:
     a7f:	55                   	push   %rbp
     a80:	48 89 e5             	mov    %rsp,%rbp
     a83:	48 83 ec 40          	sub    $0x40,%rsp
     a87:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     a8b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     a8f:	89 55 cc             	mov    %edx,-0x34(%rbp)
     a92:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     a99:	00 00 
     a9b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     a9f:	31 c0                	xor    %eax,%eax
     aa1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     aa5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     aa9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     aad:	48 c7 00 01 00 00 00 	movq   $0x1,(%rax)
     ab4:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     abb:	00 
     abc:	eb 50                	jmp    b0e <combine1+0x8f>
     abe:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     ac5:	00 
     ac6:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
     aca:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
     ace:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     ad2:	48 89 ce             	mov    %rcx,%rsi
     ad5:	48 89 c7             	mov    %rax,%rdi
     ad8:	e8 30 ff ff ff       	callq  a0d <get_vec_element>
     add:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
     ae1:	75 10                	jne    af3 <combine1+0x74>
     ae3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     ae7:	48 8b 10             	mov    (%rax),%rdx
     aea:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     aee:	48 01 d0             	add    %rdx,%rax
     af1:	eb 0f                	jmp    b02 <combine1+0x83>
     af3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     af7:	48 8b 10             	mov    (%rax),%rdx
     afa:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     afe:	48 0f af c2          	imul   %rdx,%rax
     b02:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
     b06:	48 89 02             	mov    %rax,(%rdx)
     b09:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
     b0e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     b12:	48 89 c7             	mov    %rax,%rdi
     b15:	e8 42 ff ff ff       	callq  a5c <vec_length>
     b1a:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
     b1e:	7c 9e                	jl     abe <combine1+0x3f>
     b20:	90                   	nop
     b21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     b25:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
     b2c:	00 00 
     b2e:	74 05                	je     b35 <combine1+0xb6>
     b30:	e8 db fc ff ff       	callq  810 <__stack_chk_fail@plt>
     b35:	c9                   	leaveq 
     b36:	c3                   	retq   

0000000000000b37 <combine2>:
     b37:	55                   	push   %rbp
     b38:	48 89 e5             	mov    %rsp,%rbp
     b3b:	48 83 ec 50          	sub    $0x50,%rsp
     b3f:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
     b43:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
     b47:	89 55 bc             	mov    %edx,-0x44(%rbp)
     b4a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     b51:	00 00 
     b53:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     b57:	31 c0                	xor    %eax,%eax
     b59:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     b5d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     b61:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     b65:	48 89 c7             	mov    %rax,%rdi
     b68:	e8 ef fe ff ff       	callq  a5c <vec_length>
     b6d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     b71:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
     b75:	48 c7 00 01 00 00 00 	movq   $0x1,(%rax)
     b7c:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     b83:	00 
     b84:	eb 50                	jmp    bd6 <combine2+0x9f>
     b86:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
     b8d:	00 
     b8e:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
     b92:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
     b96:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     b9a:	48 89 ce             	mov    %rcx,%rsi
     b9d:	48 89 c7             	mov    %rax,%rdi
     ba0:	e8 68 fe ff ff       	callq  a0d <get_vec_element>
     ba5:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
     ba9:	75 10                	jne    bbb <combine2+0x84>
     bab:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
     baf:	48 8b 10             	mov    (%rax),%rdx
     bb2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     bb6:	48 01 d0             	add    %rdx,%rax
     bb9:	eb 0f                	jmp    bca <combine2+0x93>
     bbb:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
     bbf:	48 8b 10             	mov    (%rax),%rdx
     bc2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     bc6:	48 0f af c2          	imul   %rdx,%rax
     bca:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
     bce:	48 89 02             	mov    %rax,(%rdx)
     bd1:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
     bd6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     bda:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
     bde:	7c a6                	jl     b86 <combine2+0x4f>
     be0:	90                   	nop
     be1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     be5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
     bec:	00 00 
     bee:	74 05                	je     bf5 <combine2+0xbe>
     bf0:	e8 1b fc ff ff       	callq  810 <__stack_chk_fail@plt>
     bf5:	c9                   	leaveq 
     bf6:	c3                   	retq   

0000000000000bf7 <combine3>:
     bf7:	55                   	push   %rbp
     bf8:	48 89 e5             	mov    %rsp,%rbp
     bfb:	48 83 ec 38          	sub    $0x38,%rsp
     bff:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     c03:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     c07:	89 55 cc             	mov    %edx,-0x34(%rbp)
     c0a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     c0e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     c12:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     c16:	48 89 c7             	mov    %rax,%rdi
     c19:	e8 3e fe ff ff       	callq  a5c <vec_length>
     c1e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     c22:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     c26:	48 89 c7             	mov    %rax,%rdi
     c29:	e8 3f fe ff ff       	callq  a6d <get_vec_start>
     c2e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     c32:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     c36:	48 c7 00 01 00 00 00 	movq   $0x1,(%rax)
     c3d:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     c44:	00 
     c45:	eb 55                	jmp    c9c <combine3+0xa5>
     c47:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
     c4b:	75 22                	jne    c6f <combine3+0x78>
     c4d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     c51:	48 8b 10             	mov    (%rax),%rdx
     c54:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     c58:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
     c5f:	00 
     c60:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     c64:	48 01 c8             	add    %rcx,%rax
     c67:	48 8b 00             	mov    (%rax),%rax
     c6a:	48 01 d0             	add    %rdx,%rax
     c6d:	eb 21                	jmp    c90 <combine3+0x99>
     c6f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     c73:	48 8b 10             	mov    (%rax),%rdx
     c76:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     c7a:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
     c81:	00 
     c82:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     c86:	48 01 c8             	add    %rcx,%rax
     c89:	48 8b 00             	mov    (%rax),%rax
     c8c:	48 0f af c2          	imul   %rdx,%rax
     c90:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
     c94:	48 89 02             	mov    %rax,(%rdx)
     c97:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
     c9c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     ca0:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
     ca4:	7c a1                	jl     c47 <combine3+0x50>
     ca6:	90                   	nop
     ca7:	c9                   	leaveq 
     ca8:	c3                   	retq   

0000000000000ca9 <combine3_plus>:
     ca9:	55                   	push   %rbp
     caa:	48 89 e5             	mov    %rsp,%rbp
     cad:	48 83 ec 50          	sub    $0x50,%rsp
     cb1:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
     cb5:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
     cb9:	89 55 bc             	mov    %edx,-0x44(%rbp)
     cbc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     cc3:	00 00 
     cc5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     cc9:	31 c0                	xor    %eax,%eax
     ccb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     ccf:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     cd3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     cd7:	48 89 c7             	mov    %rax,%rdi
     cda:	e8 7d fd ff ff       	callq  a5c <vec_length>
     cdf:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     ce3:	48 c7 45 e0 01 00 00 	movq   $0x1,-0x20(%rbp)
     cea:	00 
     ceb:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
     cf2:	00 
     cf3:	eb 44                	jmp    d39 <combine3_plus+0x90>
     cf5:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
     cfc:	00 
     cfd:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
     d01:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
     d05:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     d09:	48 89 ce             	mov    %rcx,%rsi
     d0c:	48 89 c7             	mov    %rax,%rdi
     d0f:	e8 f9 fc ff ff       	callq  a0d <get_vec_element>
     d14:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
     d18:	75 0d                	jne    d27 <combine3_plus+0x7e>
     d1a:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
     d1e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d22:	48 01 d0             	add    %rdx,%rax
     d25:	eb 09                	jmp    d30 <combine3_plus+0x87>
     d27:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     d2b:	48 0f af 45 e0       	imul   -0x20(%rbp),%rax
     d30:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     d34:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
     d39:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     d3d:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
     d41:	7c b2                	jl     cf5 <combine3_plus+0x4c>
     d43:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
     d47:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     d4b:	48 89 10             	mov    %rdx,(%rax)
     d4e:	90                   	nop
     d4f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     d53:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
     d5a:	00 00 
     d5c:	74 05                	je     d63 <combine3_plus+0xba>
     d5e:	e8 ad fa ff ff       	callq  810 <__stack_chk_fail@plt>
     d63:	c9                   	leaveq 
     d64:	c3                   	retq   

0000000000000d65 <combine4>:
     d65:	55                   	push   %rbp
     d66:	48 89 e5             	mov    %rsp,%rbp
     d69:	48 83 ec 48          	sub    $0x48,%rsp
     d6d:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
     d71:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
     d75:	89 55 bc             	mov    %edx,-0x44(%rbp)
     d78:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     d7c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     d80:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     d84:	48 89 c7             	mov    %rax,%rdi
     d87:	e8 d0 fc ff ff       	callq  a5c <vec_length>
     d8c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     d90:	48 c7 45 e0 01 00 00 	movq   $0x1,-0x20(%rbp)
     d97:	00 
     d98:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     d9c:	48 89 c7             	mov    %rax,%rdi
     d9f:	e8 c9 fc ff ff       	callq  a6d <get_vec_start>
     da4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     da8:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
     daf:	00 
     db0:	eb 49                	jmp    dfb <combine4+0x96>
     db2:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
     db6:	75 1f                	jne    dd7 <combine4+0x72>
     db8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     dbc:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     dc3:	00 
     dc4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     dc8:	48 01 d0             	add    %rdx,%rax
     dcb:	48 8b 10             	mov    (%rax),%rdx
     dce:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     dd2:	48 01 d0             	add    %rdx,%rax
     dd5:	eb 1b                	jmp    df2 <combine4+0x8d>
     dd7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     ddb:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     de2:	00 
     de3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     de7:	48 01 d0             	add    %rdx,%rax
     dea:	48 8b 00             	mov    (%rax),%rax
     ded:	48 0f af 45 e0       	imul   -0x20(%rbp),%rax
     df2:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     df6:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
     dfb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     dff:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
     e03:	7c ad                	jl     db2 <combine4+0x4d>
     e05:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
     e09:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     e0d:	48 89 10             	mov    %rdx,(%rax)
     e10:	90                   	nop
     e11:	c9                   	leaveq 
     e12:	c3                   	retq   

0000000000000e13 <combine5>:
     e13:	55                   	push   %rbp
     e14:	48 89 e5             	mov    %rsp,%rbp
     e17:	48 83 ec 48          	sub    $0x48,%rsp
     e1b:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
     e1f:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
     e23:	89 55 bc             	mov    %edx,-0x44(%rbp)
     e26:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     e2a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     e2e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     e32:	48 89 c7             	mov    %rax,%rdi
     e35:	e8 22 fc ff ff       	callq  a5c <vec_length>
     e3a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     e3e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     e42:	48 83 e8 01          	sub    $0x1,%rax
     e46:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     e4a:	48 c7 45 d8 01 00 00 	movq   $0x1,-0x28(%rbp)
     e51:	00 
     e52:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     e56:	48 89 c7             	mov    %rax,%rdi
     e59:	e8 0f fc ff ff       	callq  a6d <get_vec_start>
     e5e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     e62:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
     e69:	00 
     e6a:	e9 87 00 00 00       	jmpq   ef6 <combine5+0xe3>
     e6f:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
     e73:	75 3c                	jne    eb1 <combine5+0x9e>
     e75:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     e79:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     e80:	00 
     e81:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     e85:	48 01 d0             	add    %rdx,%rax
     e88:	48 8b 10             	mov    (%rax),%rdx
     e8b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     e8f:	48 01 c2             	add    %rax,%rdx
     e92:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     e96:	48 83 c0 01          	add    $0x1,%rax
     e9a:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
     ea1:	00 
     ea2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     ea6:	48 01 c8             	add    %rcx,%rax
     ea9:	48 8b 00             	mov    (%rax),%rax
     eac:	48 01 d0             	add    %rdx,%rax
     eaf:	eb 3c                	jmp    eed <combine5+0xda>
     eb1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     eb5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     ebc:	00 
     ebd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     ec1:	48 01 d0             	add    %rdx,%rax
     ec4:	48 8b 00             	mov    (%rax),%rax
     ec7:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
     ecc:	48 89 c2             	mov    %rax,%rdx
     ecf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     ed3:	48 83 c0 01          	add    $0x1,%rax
     ed7:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
     ede:	00 
     edf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     ee3:	48 01 c8             	add    %rcx,%rax
     ee6:	48 8b 00             	mov    (%rax),%rax
     ee9:	48 0f af c2          	imul   %rdx,%rax
     eed:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
     ef1:	48 83 45 d0 02       	addq   $0x2,-0x30(%rbp)
     ef6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     efa:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
     efe:	0f 8c 6b ff ff ff    	jl     e6f <combine5+0x5c>
     f04:	eb 49                	jmp    f4f <combine5+0x13c>
     f06:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
     f0a:	75 1f                	jne    f2b <combine5+0x118>
     f0c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f10:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     f17:	00 
     f18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     f1c:	48 01 d0             	add    %rdx,%rax
     f1f:	48 8b 10             	mov    (%rax),%rdx
     f22:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     f26:	48 01 d0             	add    %rdx,%rax
     f29:	eb 1b                	jmp    f46 <combine5+0x133>
     f2b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f2f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     f36:	00 
     f37:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     f3b:	48 01 d0             	add    %rdx,%rax
     f3e:	48 8b 00             	mov    (%rax),%rax
     f41:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
     f46:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
     f4a:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
     f4f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f53:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
     f57:	7c ad                	jl     f06 <combine5+0xf3>
     f59:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
     f5d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     f61:	48 89 10             	mov    %rdx,(%rax)
     f64:	90                   	nop
     f65:	c9                   	leaveq 
     f66:	c3                   	retq   

0000000000000f67 <combine6>:
     f67:	55                   	push   %rbp
     f68:	48 89 e5             	mov    %rsp,%rbp
     f6b:	48 83 ec 58          	sub    $0x58,%rsp
     f6f:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
     f73:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
     f77:	89 55 ac             	mov    %edx,-0x54(%rbp)
     f7a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f7e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     f82:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     f86:	48 89 c7             	mov    %rax,%rdi
     f89:	e8 ce fa ff ff       	callq  a5c <vec_length>
     f8e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     f92:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     f96:	48 83 e8 01          	sub    $0x1,%rax
     f9a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     f9e:	48 c7 45 d0 01 00 00 	movq   $0x1,-0x30(%rbp)
     fa5:	00 
     fa6:	48 c7 45 d8 01 00 00 	movq   $0x1,-0x28(%rbp)
     fad:	00 
     fae:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     fb2:	48 89 c7             	mov    %rax,%rdi
     fb5:	e8 b3 fa ff ff       	callq  a6d <get_vec_start>
     fba:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     fbe:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
     fc5:	00 
     fc6:	e9 95 00 00 00       	jmpq   1060 <combine6+0xf9>
     fcb:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
     fcf:	75 1f                	jne    ff0 <combine6+0x89>
     fd1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     fd5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     fdc:	00 
     fdd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     fe1:	48 01 d0             	add    %rdx,%rax
     fe4:	48 8b 10             	mov    (%rax),%rdx
     fe7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     feb:	48 01 d0             	add    %rdx,%rax
     fee:	eb 1b                	jmp    100b <combine6+0xa4>
     ff0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     ff4:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     ffb:	00 
     ffc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1000:	48 01 d0             	add    %rdx,%rax
    1003:	48 8b 00             	mov    (%rax),%rax
    1006:	48 0f af 45 d0       	imul   -0x30(%rbp),%rax
    100b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    100f:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
    1013:	75 23                	jne    1038 <combine6+0xd1>
    1015:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1019:	48 83 c0 01          	add    $0x1,%rax
    101d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1024:	00 
    1025:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1029:	48 01 d0             	add    %rdx,%rax
    102c:	48 8b 10             	mov    (%rax),%rdx
    102f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1033:	48 01 d0             	add    %rdx,%rax
    1036:	eb 1f                	jmp    1057 <combine6+0xf0>
    1038:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    103c:	48 83 c0 01          	add    $0x1,%rax
    1040:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1047:	00 
    1048:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    104c:	48 01 d0             	add    %rdx,%rax
    104f:	48 8b 00             	mov    (%rax),%rax
    1052:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
    1057:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    105b:	48 83 45 c8 02       	addq   $0x2,-0x38(%rbp)
    1060:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1064:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    1068:	0f 8c 5d ff ff ff    	jl     fcb <combine6+0x64>
    106e:	eb 49                	jmp    10b9 <combine6+0x152>
    1070:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
    1074:	75 1f                	jne    1095 <combine6+0x12e>
    1076:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    107a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1081:	00 
    1082:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1086:	48 01 d0             	add    %rdx,%rax
    1089:	48 8b 10             	mov    (%rax),%rdx
    108c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1090:	48 01 d0             	add    %rdx,%rax
    1093:	eb 1b                	jmp    10b0 <combine6+0x149>
    1095:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1099:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    10a0:	00 
    10a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    10a5:	48 01 d0             	add    %rdx,%rax
    10a8:	48 8b 00             	mov    (%rax),%rax
    10ab:	48 0f af 45 d0       	imul   -0x30(%rbp),%rax
    10b0:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    10b4:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
    10b9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    10bd:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    10c1:	7c ad                	jl     1070 <combine6+0x109>
    10c3:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
    10c7:	75 0d                	jne    10d6 <combine6+0x16f>
    10c9:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    10cd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    10d1:	48 01 d0             	add    %rdx,%rax
    10d4:	eb 09                	jmp    10df <combine6+0x178>
    10d6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    10da:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
    10df:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    10e3:	48 89 02             	mov    %rax,(%rdx)
    10e6:	90                   	nop
    10e7:	c9                   	leaveq 
    10e8:	c3                   	retq   

00000000000010e9 <combine7>:
    10e9:	55                   	push   %rbp
    10ea:	48 89 e5             	mov    %rsp,%rbp
    10ed:	48 83 ec 48          	sub    $0x48,%rsp
    10f1:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    10f5:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    10f9:	89 55 bc             	mov    %edx,-0x44(%rbp)
    10fc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1100:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1104:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1108:	48 89 c7             	mov    %rax,%rdi
    110b:	e8 4c f9 ff ff       	callq  a5c <vec_length>
    1110:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1114:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1118:	48 83 e8 01          	sub    $0x1,%rax
    111c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1120:	48 c7 45 d8 01 00 00 	movq   $0x1,-0x28(%rbp)
    1127:	00 
    1128:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    112c:	48 89 c7             	mov    %rax,%rdi
    112f:	e8 39 f9 ff ff       	callq  a6d <get_vec_start>
    1134:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1138:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    113f:	00 
    1140:	e9 87 00 00 00       	jmpq   11cc <combine7+0xe3>
    1145:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
    1149:	75 3c                	jne    1187 <combine7+0x9e>
    114b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    114f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1156:	00 
    1157:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    115b:	48 01 d0             	add    %rdx,%rax
    115e:	48 8b 10             	mov    (%rax),%rdx
    1161:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1165:	48 01 c2             	add    %rax,%rdx
    1168:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    116c:	48 83 c0 01          	add    $0x1,%rax
    1170:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    1177:	00 
    1178:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    117c:	48 01 c8             	add    %rcx,%rax
    117f:	48 8b 00             	mov    (%rax),%rax
    1182:	48 01 d0             	add    %rdx,%rax
    1185:	eb 3c                	jmp    11c3 <combine7+0xda>
    1187:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    118b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1192:	00 
    1193:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1197:	48 01 d0             	add    %rdx,%rax
    119a:	48 8b 00             	mov    (%rax),%rax
    119d:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
    11a2:	48 89 c2             	mov    %rax,%rdx
    11a5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    11a9:	48 83 c0 01          	add    $0x1,%rax
    11ad:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    11b4:	00 
    11b5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11b9:	48 01 c8             	add    %rcx,%rax
    11bc:	48 8b 00             	mov    (%rax),%rax
    11bf:	48 0f af c2          	imul   %rdx,%rax
    11c3:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    11c7:	48 83 45 d0 02       	addq   $0x2,-0x30(%rbp)
    11cc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    11d0:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    11d4:	0f 8c 6b ff ff ff    	jl     1145 <combine7+0x5c>
    11da:	eb 49                	jmp    1225 <combine7+0x13c>
    11dc:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
    11e0:	75 1f                	jne    1201 <combine7+0x118>
    11e2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    11e6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    11ed:	00 
    11ee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11f2:	48 01 d0             	add    %rdx,%rax
    11f5:	48 8b 10             	mov    (%rax),%rdx
    11f8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    11fc:	48 01 d0             	add    %rdx,%rax
    11ff:	eb 1b                	jmp    121c <combine7+0x133>
    1201:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1205:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    120c:	00 
    120d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1211:	48 01 d0             	add    %rdx,%rax
    1214:	48 8b 00             	mov    (%rax),%rax
    1217:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
    121c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1220:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
    1225:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1229:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    122d:	7c ad                	jl     11dc <combine7+0xf3>
    122f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1233:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1237:	48 89 10             	mov    %rdx,(%rax)
    123a:	90                   	nop
    123b:	c9                   	leaveq 
    123c:	c3                   	retq   

000000000000123d <init_combine>:
    123d:	55                   	push   %rbp
    123e:	48 89 e5             	mov    %rsp,%rbp
    1241:	48 83 ec 20          	sub    $0x20,%rsp
    1245:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1249:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    124d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1251:	48 89 c7             	mov    %rax,%rdi
    1254:	e8 31 f7 ff ff       	callq  98a <new_vec>
    1259:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    125d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1262:	75 13                	jne    1277 <init_combine+0x3a>
    1264:	48 8d 3d 79 02 00 00 	lea    0x279(%rip),%rdi        # 14e4 <_IO_stdin_used+0x4>
    126b:	e8 80 f5 ff ff       	callq  7f0 <puts@plt>
    1270:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
    1275:	eb 2c                	jmp    12a3 <init_combine+0x66>
    1277:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    127b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    127f:	48 89 10             	mov    %rdx,(%rax)
    1282:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1286:	48 83 c0 08          	add    $0x8,%rax
    128a:	ba 40 00 00 00       	mov    $0x40,%edx
    128f:	48 8d 35 8a 0d 20 00 	lea    0x200d8a(%rip),%rsi        # 202020 <combine_ops>
    1296:	48 89 c7             	mov    %rax,%rdi
    1299:	e8 a2 f5 ff ff       	callq  840 <memcpy@plt>
    129e:	b8 00 00 00 00       	mov    $0x0,%eax
    12a3:	c9                   	leaveq 
    12a4:	c3                   	retq   

00000000000012a5 <delete_combine>:
    12a5:	55                   	push   %rbp
    12a6:	48 89 e5             	mov    %rsp,%rbp
    12a9:	48 83 ec 10          	sub    $0x10,%rsp
    12ad:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    12b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12b5:	48 8b 00             	mov    (%rax),%rax
    12b8:	48 85 c0             	test   %rax,%rax
    12bb:	74 10                	je     12cd <delete_combine+0x28>
    12bd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12c1:	48 8b 00             	mov    (%rax),%rax
    12c4:	48 89 c7             	mov    %rax,%rdi
    12c7:	e8 14 f5 ff ff       	callq  7e0 <free@plt>
    12cc:	90                   	nop
    12cd:	90                   	nop
    12ce:	c9                   	leaveq 
    12cf:	c3                   	retq   

00000000000012d0 <main>:
    12d0:	55                   	push   %rbp
    12d1:	48 89 e5             	mov    %rsp,%rbp
    12d4:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    12db:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
    12e1:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
    12e8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12ef:	00 00 
    12f1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12f5:	31 c0                	xor    %eax,%eax
    12f7:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
    12fe:	74 16                	je     1316 <main+0x46>
    1300:	48 8d 3d e9 01 00 00 	lea    0x1e9(%rip),%rdi        # 14f0 <_IO_stdin_used+0x10>
    1307:	e8 e4 f4 ff ff       	callq  7f0 <puts@plt>
    130c:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
    1311:	e9 2d 01 00 00       	jmpq   1443 <main+0x173>
    1316:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    131d:	48 83 c0 08          	add    $0x8,%rax
    1321:	48 8b 00             	mov    (%rax),%rax
    1324:	48 89 c7             	mov    %rax,%rdi
    1327:	e8 34 f5 ff ff       	callq  860 <atoi@plt>
    132c:	89 45 84             	mov    %eax,-0x7c(%rbp)
    132f:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    1336:	48 83 c0 10          	add    $0x10,%rax
    133a:	48 8b 00             	mov    (%rax),%rax
    133d:	48 89 c7             	mov    %rax,%rdi
    1340:	e8 1b f5 ff ff       	callq  860 <atoi@plt>
    1345:	89 45 88             	mov    %eax,-0x78(%rbp)
    1348:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    134f:	48 83 c0 18          	add    $0x18,%rax
    1353:	48 8b 00             	mov    (%rax),%rax
    1356:	48 89 c7             	mov    %rax,%rdi
    1359:	e8 02 f5 ff ff       	callq  860 <atoi@plt>
    135e:	89 45 8c             	mov    %eax,-0x74(%rbp)
    1361:	8b 45 88             	mov    -0x78(%rbp),%eax
    1364:	48 63 d0             	movslq %eax,%rdx
    1367:	48 89 d0             	mov    %rdx,%rax
    136a:	48 c1 e0 02          	shl    $0x2,%rax
    136e:	48 01 d0             	add    %rdx,%rax
    1371:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1378:	00 
    1379:	48 01 d0             	add    %rdx,%rax
    137c:	48 c1 e0 02          	shl    $0x2,%rax
    1380:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1384:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1388:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    138c:	48 89 d6             	mov    %rdx,%rsi
    138f:	48 89 c7             	mov    %rax,%rdi
    1392:	e8 a6 fe ff ff       	callq  123d <init_combine>
    1397:	85 c0                	test   %eax,%eax
    1399:	74 16                	je     13b1 <main+0xe1>
    139b:	48 8d 3d 5f 01 00 00 	lea    0x15f(%rip),%rdi        # 1501 <_IO_stdin_used+0x21>
    13a2:	e8 49 f4 ff ff       	callq  7f0 <puts@plt>
    13a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    13ac:	e9 92 00 00 00       	jmpq   1443 <main+0x173>
    13b1:	e8 4a f4 ff ff       	callq  800 <clock@plt>
    13b6:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    13ba:	8b 45 84             	mov    -0x7c(%rbp),%eax
    13bd:	83 e8 01             	sub    $0x1,%eax
    13c0:	48 98                	cltq   
    13c2:	48 8b 44 c5 b8       	mov    -0x48(%rbp,%rax,8),%rax
    13c7:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    13cb:	8b 55 8c             	mov    -0x74(%rbp),%edx
    13ce:	48 8d 75 90          	lea    -0x70(%rbp),%rsi
    13d2:	48 89 cf             	mov    %rcx,%rdi
    13d5:	ff d0                	callq  *%rax
    13d7:	e8 24 f4 ff ff       	callq  800 <clock@plt>
    13dc:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    13e0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    13e4:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
    13e8:	48 89 c2             	mov    %rax,%rdx
    13eb:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
    13ef:	8b 45 84             	mov    -0x7c(%rbp),%eax
    13f2:	48 83 ec 08          	sub    $0x8,%rsp
    13f6:	52                   	push   %rdx
    13f7:	48 8d 15 55 01 00 00 	lea    0x155(%rip),%rdx        # 1553 <_IO_stdin_used+0x73>
    13fe:	52                   	push   %rdx
    13ff:	8b 55 8c             	mov    -0x74(%rbp),%edx
    1402:	52                   	push   %rdx
    1403:	4c 8d 0d 09 01 00 00 	lea    0x109(%rip),%r9        # 1513 <_IO_stdin_used+0x33>
    140a:	49 89 c8             	mov    %rcx,%r8
    140d:	48 8d 0d 02 01 00 00 	lea    0x102(%rip),%rcx        # 1516 <_IO_stdin_used+0x36>
    1414:	89 c2                	mov    %eax,%edx
    1416:	48 8d 35 05 01 00 00 	lea    0x105(%rip),%rsi        # 1522 <_IO_stdin_used+0x42>
    141d:	48 8d 3d 0c 01 00 00 	lea    0x10c(%rip),%rdi        # 1530 <_IO_stdin_used+0x50>
    1424:	b8 00 00 00 00       	mov    $0x0,%eax
    1429:	e8 f2 f3 ff ff       	callq  820 <printf@plt>
    142e:	48 83 c4 20          	add    $0x20,%rsp
    1432:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    1436:	48 89 c7             	mov    %rax,%rdi
    1439:	e8 67 fe ff ff       	callq  12a5 <delete_combine>
    143e:	b8 00 00 00 00       	mov    $0x0,%eax
    1443:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1447:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    144e:	00 00 
    1450:	74 05                	je     1457 <main+0x187>
    1452:	e8 b9 f3 ff ff       	callq  810 <__stack_chk_fail@plt>
    1457:	c9                   	leaveq 
    1458:	c3                   	retq   
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <__libc_csu_init>:
    1460:	41 57                	push   %r15
    1462:	41 56                	push   %r14
    1464:	49 89 d7             	mov    %rdx,%r15
    1467:	41 55                	push   %r13
    1469:	41 54                	push   %r12
    146b:	4c 8d 25 06 09 20 00 	lea    0x200906(%rip),%r12        # 201d78 <__frame_dummy_init_array_entry>
    1472:	55                   	push   %rbp
    1473:	48 8d 2d 06 09 20 00 	lea    0x200906(%rip),%rbp        # 201d80 <__init_array_end>
    147a:	53                   	push   %rbx
    147b:	41 89 fd             	mov    %edi,%r13d
    147e:	49 89 f6             	mov    %rsi,%r14
    1481:	4c 29 e5             	sub    %r12,%rbp
    1484:	48 83 ec 08          	sub    $0x8,%rsp
    1488:	48 c1 fd 03          	sar    $0x3,%rbp
    148c:	e8 1f f3 ff ff       	callq  7b0 <_init>
    1491:	48 85 ed             	test   %rbp,%rbp
    1494:	74 20                	je     14b6 <__libc_csu_init+0x56>
    1496:	31 db                	xor    %ebx,%ebx
    1498:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    149f:	00 
    14a0:	4c 89 fa             	mov    %r15,%rdx
    14a3:	4c 89 f6             	mov    %r14,%rsi
    14a6:	44 89 ef             	mov    %r13d,%edi
    14a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    14ad:	48 83 c3 01          	add    $0x1,%rbx
    14b1:	48 39 dd             	cmp    %rbx,%rbp
    14b4:	75 ea                	jne    14a0 <__libc_csu_init+0x40>
    14b6:	48 83 c4 08          	add    $0x8,%rsp
    14ba:	5b                   	pop    %rbx
    14bb:	5d                   	pop    %rbp
    14bc:	41 5c                	pop    %r12
    14be:	41 5d                	pop    %r13
    14c0:	41 5e                	pop    %r14
    14c2:	41 5f                	pop    %r15
    14c4:	c3                   	retq   
    14c5:	90                   	nop
    14c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    14cd:	00 00 00 

00000000000014d0 <__libc_csu_fini>:
    14d0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000014d4 <_fini>:
    14d4:	48 83 ec 08          	sub    $0x8,%rsp
    14d8:	48 83 c4 08          	add    $0x8,%rsp
    14dc:	c3                   	retq   
