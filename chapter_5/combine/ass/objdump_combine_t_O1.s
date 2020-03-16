
bin/combine_t_O1：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000000780 <_init>:
 780:	48 83 ec 08          	sub    $0x8,%rsp
 784:	48 8b 05 5d 18 20 00 	mov    0x20185d(%rip),%rax        # 201fe8 <__gmon_start__>
 78b:	48 85 c0             	test   %rax,%rax
 78e:	74 02                	je     792 <_init+0x12>
 790:	ff d0                	callq  *%rax
 792:	48 83 c4 08          	add    $0x8,%rsp
 796:	c3                   	retq   

Disassembly of section .plt:

00000000000007a0 <.plt>:
 7a0:	ff 35 e2 17 20 00    	pushq  0x2017e2(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x8>
 7a6:	ff 25 e4 17 20 00    	jmpq   *0x2017e4(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x10>
 7ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000007b0 <free@plt>:
 7b0:	ff 25 e2 17 20 00    	jmpq   *0x2017e2(%rip)        # 201f98 <free@GLIBC_2.2.5>
 7b6:	68 00 00 00 00       	pushq  $0x0
 7bb:	e9 e0 ff ff ff       	jmpq   7a0 <.plt>

00000000000007c0 <puts@plt>:
 7c0:	ff 25 da 17 20 00    	jmpq   *0x2017da(%rip)        # 201fa0 <puts@GLIBC_2.2.5>
 7c6:	68 01 00 00 00       	pushq  $0x1
 7cb:	e9 d0 ff ff ff       	jmpq   7a0 <.plt>

00000000000007d0 <clock@plt>:
 7d0:	ff 25 d2 17 20 00    	jmpq   *0x2017d2(%rip)        # 201fa8 <clock@GLIBC_2.2.5>
 7d6:	68 02 00 00 00       	pushq  $0x2
 7db:	e9 c0 ff ff ff       	jmpq   7a0 <.plt>

00000000000007e0 <__stack_chk_fail@plt>:
 7e0:	ff 25 ca 17 20 00    	jmpq   *0x2017ca(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 7e6:	68 03 00 00 00       	pushq  $0x3
 7eb:	e9 b0 ff ff ff       	jmpq   7a0 <.plt>

00000000000007f0 <calloc@plt>:
 7f0:	ff 25 c2 17 20 00    	jmpq   *0x2017c2(%rip)        # 201fb8 <calloc@GLIBC_2.2.5>
 7f6:	68 04 00 00 00       	pushq  $0x4
 7fb:	e9 a0 ff ff ff       	jmpq   7a0 <.plt>

0000000000000800 <strtol@plt>:
 800:	ff 25 ba 17 20 00    	jmpq   *0x2017ba(%rip)        # 201fc0 <strtol@GLIBC_2.2.5>
 806:	68 05 00 00 00       	pushq  $0x5
 80b:	e9 90 ff ff ff       	jmpq   7a0 <.plt>

0000000000000810 <malloc@plt>:
 810:	ff 25 b2 17 20 00    	jmpq   *0x2017b2(%rip)        # 201fc8 <malloc@GLIBC_2.2.5>
 816:	68 06 00 00 00       	pushq  $0x6
 81b:	e9 80 ff ff ff       	jmpq   7a0 <.plt>

0000000000000820 <__printf_chk@plt>:
 820:	ff 25 aa 17 20 00    	jmpq   *0x2017aa(%rip)        # 201fd0 <__printf_chk@GLIBC_2.3.4>
 826:	68 07 00 00 00       	pushq  $0x7
 82b:	e9 70 ff ff ff       	jmpq   7a0 <.plt>

Disassembly of section .plt.got:

0000000000000830 <__cxa_finalize@plt>:
 830:	ff 25 c2 17 20 00    	jmpq   *0x2017c2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 836:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000840 <_start>:
 840:	31 ed                	xor    %ebp,%ebp
 842:	49 89 d1             	mov    %rdx,%r9
 845:	5e                   	pop    %rsi
 846:	48 89 e2             	mov    %rsp,%rdx
 849:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 84d:	50                   	push   %rax
 84e:	54                   	push   %rsp
 84f:	4c 8d 05 6a 07 00 00 	lea    0x76a(%rip),%r8        # fc0 <__libc_csu_fini>
 856:	48 8d 0d f3 06 00 00 	lea    0x6f3(%rip),%rcx        # f50 <__libc_csu_init>
 85d:	48 8d 3d 8e 05 00 00 	lea    0x58e(%rip),%rdi        # df2 <main>
 864:	ff 15 76 17 20 00    	callq  *0x201776(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 86a:	f4                   	hlt    
 86b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000870 <deregister_tm_clones>:
 870:	48 8d 3d e9 17 20 00 	lea    0x2017e9(%rip),%rdi        # 202060 <__TMC_END__>
 877:	55                   	push   %rbp
 878:	48 8d 05 e1 17 20 00 	lea    0x2017e1(%rip),%rax        # 202060 <__TMC_END__>
 87f:	48 39 f8             	cmp    %rdi,%rax
 882:	48 89 e5             	mov    %rsp,%rbp
 885:	74 19                	je     8a0 <deregister_tm_clones+0x30>
 887:	48 8b 05 4a 17 20 00 	mov    0x20174a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 88e:	48 85 c0             	test   %rax,%rax
 891:	74 0d                	je     8a0 <deregister_tm_clones+0x30>
 893:	5d                   	pop    %rbp
 894:	ff e0                	jmpq   *%rax
 896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 89d:	00 00 00 
 8a0:	5d                   	pop    %rbp
 8a1:	c3                   	retq   
 8a2:	0f 1f 40 00          	nopl   0x0(%rax)
 8a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ad:	00 00 00 

00000000000008b0 <register_tm_clones>:
 8b0:	48 8d 3d a9 17 20 00 	lea    0x2017a9(%rip),%rdi        # 202060 <__TMC_END__>
 8b7:	48 8d 35 a2 17 20 00 	lea    0x2017a2(%rip),%rsi        # 202060 <__TMC_END__>
 8be:	55                   	push   %rbp
 8bf:	48 29 fe             	sub    %rdi,%rsi
 8c2:	48 89 e5             	mov    %rsp,%rbp
 8c5:	48 c1 fe 03          	sar    $0x3,%rsi
 8c9:	48 89 f0             	mov    %rsi,%rax
 8cc:	48 c1 e8 3f          	shr    $0x3f,%rax
 8d0:	48 01 c6             	add    %rax,%rsi
 8d3:	48 d1 fe             	sar    %rsi
 8d6:	74 18                	je     8f0 <register_tm_clones+0x40>
 8d8:	48 8b 05 11 17 20 00 	mov    0x201711(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 8df:	48 85 c0             	test   %rax,%rax
 8e2:	74 0c                	je     8f0 <register_tm_clones+0x40>
 8e4:	5d                   	pop    %rbp
 8e5:	ff e0                	jmpq   *%rax
 8e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8ee:	00 00 
 8f0:	5d                   	pop    %rbp
 8f1:	c3                   	retq   
 8f2:	0f 1f 40 00          	nopl   0x0(%rax)
 8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8fd:	00 00 00 

0000000000000900 <__do_global_dtors_aux>:
 900:	80 3d 59 17 20 00 00 	cmpb   $0x0,0x201759(%rip)        # 202060 <__TMC_END__>
 907:	75 2f                	jne    938 <__do_global_dtors_aux+0x38>
 909:	48 83 3d e7 16 20 00 	cmpq   $0x0,0x2016e7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 910:	00 
 911:	55                   	push   %rbp
 912:	48 89 e5             	mov    %rsp,%rbp
 915:	74 0c                	je     923 <__do_global_dtors_aux+0x23>
 917:	48 8b 3d ea 16 20 00 	mov    0x2016ea(%rip),%rdi        # 202008 <__dso_handle>
 91e:	e8 0d ff ff ff       	callq  830 <__cxa_finalize@plt>
 923:	e8 48 ff ff ff       	callq  870 <deregister_tm_clones>
 928:	c6 05 31 17 20 00 01 	movb   $0x1,0x201731(%rip)        # 202060 <__TMC_END__>
 92f:	5d                   	pop    %rbp
 930:	c3                   	retq   
 931:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 938:	f3 c3                	repz retq 
 93a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000940 <frame_dummy>:
 940:	55                   	push   %rbp
 941:	48 89 e5             	mov    %rsp,%rbp
 944:	5d                   	pop    %rbp
 945:	e9 66 ff ff ff       	jmpq   8b0 <register_tm_clones>

000000000000094a <get_vec_element>:
 94a:	b8 00 00 00 00       	mov    $0x0,%eax
 94f:	48 85 f6             	test   %rsi,%rsi
 952:	78 15                	js     969 <get_vec_element+0x1f>
 954:	48 39 37             	cmp    %rsi,(%rdi)
 957:	7e 10                	jle    969 <get_vec_element+0x1f>
 959:	48 8b 47 08          	mov    0x8(%rdi),%rax
 95d:	48 8b 04 f0          	mov    (%rax,%rsi,8),%rax
 961:	48 89 02             	mov    %rax,(%rdx)
 964:	b8 01 00 00 00       	mov    $0x1,%eax
 969:	f3 c3                	repz retq 

000000000000096b <combine1>:
 96b:	41 56                	push   %r14
 96d:	41 55                	push   %r13
 96f:	41 54                	push   %r12
 971:	55                   	push   %rbp
 972:	53                   	push   %rbx
 973:	48 83 ec 10          	sub    $0x10,%rsp
 977:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 97e:	00 00 
 980:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 985:	31 c0                	xor    %eax,%eax
 987:	48 c7 06 01 00 00 00 	movq   $0x1,(%rsi)
 98e:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 992:	7e 4f                	jle    9e3 <combine1+0x78>
 994:	48 89 fd             	mov    %rdi,%rbp
 997:	49 89 f4             	mov    %rsi,%r12
 99a:	41 89 d5             	mov    %edx,%r13d
 99d:	bb 00 00 00 00       	mov    $0x0,%ebx
 9a2:	49 89 e6             	mov    %rsp,%r14
 9a5:	eb 17                	jmp    9be <combine1+0x53>
 9a7:	49 8b 04 24          	mov    (%r12),%rax
 9ab:	48 0f af 04 24       	imul   (%rsp),%rax
 9b0:	49 89 04 24          	mov    %rax,(%r12)
 9b4:	48 83 c3 01          	add    $0x1,%rbx
 9b8:	48 3b 5d 00          	cmp    0x0(%rbp),%rbx
 9bc:	7d 25                	jge    9e3 <combine1+0x78>
 9be:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
 9c5:	00 
 9c6:	4c 89 f2             	mov    %r14,%rdx
 9c9:	48 89 de             	mov    %rbx,%rsi
 9cc:	48 89 ef             	mov    %rbp,%rdi
 9cf:	e8 76 ff ff ff       	callq  94a <get_vec_element>
 9d4:	45 85 ed             	test   %r13d,%r13d
 9d7:	75 ce                	jne    9a7 <combine1+0x3c>
 9d9:	48 8b 04 24          	mov    (%rsp),%rax
 9dd:	49 03 04 24          	add    (%r12),%rax
 9e1:	eb cd                	jmp    9b0 <combine1+0x45>
 9e3:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 9e8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 9ef:	00 00 
 9f1:	75 0d                	jne    a00 <combine1+0x95>
 9f3:	48 83 c4 10          	add    $0x10,%rsp
 9f7:	5b                   	pop    %rbx
 9f8:	5d                   	pop    %rbp
 9f9:	41 5c                	pop    %r12
 9fb:	41 5d                	pop    %r13
 9fd:	41 5e                	pop    %r14
 9ff:	c3                   	retq   
 a00:	e8 db fd ff ff       	callq  7e0 <__stack_chk_fail@plt>

0000000000000a05 <combine7>:
 a05:	4c 8b 0f             	mov    (%rdi),%r9
 a08:	4d 8d 41 ff          	lea    -0x1(%r9),%r8
 a0c:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
 a10:	4d 85 c0             	test   %r8,%r8
 a13:	7e 2f                	jle    a44 <combine7+0x3f>
 a15:	b9 01 00 00 00       	mov    $0x1,%ecx
 a1a:	b8 00 00 00 00       	mov    $0x0,%eax
 a1f:	eb 14                	jmp    a35 <combine7+0x30>
 a21:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 a26:	48 0f af 4c c7 08    	imul   0x8(%rdi,%rax,8),%rcx
 a2c:	48 83 c0 02          	add    $0x2,%rax
 a30:	49 39 c0             	cmp    %rax,%r8
 a33:	7e 19                	jle    a4e <combine7+0x49>
 a35:	85 d2                	test   %edx,%edx
 a37:	75 e8                	jne    a21 <combine7+0x1c>
 a39:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 a3d:	48 03 4c c7 08       	add    0x8(%rdi,%rax,8),%rcx
 a42:	eb e8                	jmp    a2c <combine7+0x27>
 a44:	b9 01 00 00 00       	mov    $0x1,%ecx
 a49:	b8 00 00 00 00       	mov    $0x0,%eax
 a4e:	49 39 c1             	cmp    %rax,%r9
 a51:	7e 11                	jle    a64 <combine7+0x5f>
 a53:	85 d2                	test   %edx,%edx
 a55:	75 11                	jne    a68 <combine7+0x63>
 a57:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 a5b:	48 83 c0 01          	add    $0x1,%rax
 a5f:	4c 39 c8             	cmp    %r9,%rax
 a62:	75 ef                	jne    a53 <combine7+0x4e>
 a64:	48 89 0e             	mov    %rcx,(%rsi)
 a67:	c3                   	retq   
 a68:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 a6d:	eb ec                	jmp    a5b <combine7+0x56>

0000000000000a6f <combine6>:
 a6f:	4c 8b 17             	mov    (%rdi),%r10
 a72:	4d 8d 4a ff          	lea    -0x1(%r10),%r9
 a76:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
 a7a:	4d 85 c9             	test   %r9,%r9
 a7d:	7e 35                	jle    ab4 <combine6+0x45>
 a7f:	41 b8 01 00 00 00    	mov    $0x1,%r8d
 a85:	b9 01 00 00 00       	mov    $0x1,%ecx
 a8a:	b8 00 00 00 00       	mov    $0x0,%eax
 a8f:	eb 14                	jmp    aa5 <combine6+0x36>
 a91:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 a96:	4c 0f af 44 c7 08    	imul   0x8(%rdi,%rax,8),%r8
 a9c:	48 83 c0 02          	add    $0x2,%rax
 aa0:	49 39 c1             	cmp    %rax,%r9
 aa3:	7e 1f                	jle    ac4 <combine6+0x55>
 aa5:	85 d2                	test   %edx,%edx
 aa7:	75 e8                	jne    a91 <combine6+0x22>
 aa9:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 aad:	4c 03 44 c7 08       	add    0x8(%rdi,%rax,8),%r8
 ab2:	eb e8                	jmp    a9c <combine6+0x2d>
 ab4:	41 b8 01 00 00 00    	mov    $0x1,%r8d
 aba:	b9 01 00 00 00       	mov    $0x1,%ecx
 abf:	b8 00 00 00 00       	mov    $0x0,%eax
 ac4:	49 39 c2             	cmp    %rax,%r10
 ac7:	7e 11                	jle    ada <combine6+0x6b>
 ac9:	85 d2                	test   %edx,%edx
 acb:	75 19                	jne    ae6 <combine6+0x77>
 acd:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 ad1:	48 83 c0 01          	add    $0x1,%rax
 ad5:	4c 39 d0             	cmp    %r10,%rax
 ad8:	75 ef                	jne    ac9 <combine6+0x5a>
 ada:	85 d2                	test   %edx,%edx
 adc:	74 0f                	je     aed <combine6+0x7e>
 ade:	49 0f af c8          	imul   %r8,%rcx
 ae2:	48 89 0e             	mov    %rcx,(%rsi)
 ae5:	c3                   	retq   
 ae6:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 aeb:	eb e4                	jmp    ad1 <combine6+0x62>
 aed:	4c 01 c1             	add    %r8,%rcx
 af0:	eb f0                	jmp    ae2 <combine6+0x73>

0000000000000af2 <combine5>:
 af2:	4c 8b 0f             	mov    (%rdi),%r9
 af5:	4d 8d 41 ff          	lea    -0x1(%r9),%r8
 af9:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
 afd:	4d 85 c0             	test   %r8,%r8
 b00:	7e 2f                	jle    b31 <combine5+0x3f>
 b02:	b9 01 00 00 00       	mov    $0x1,%ecx
 b07:	b8 00 00 00 00       	mov    $0x0,%eax
 b0c:	eb 14                	jmp    b22 <combine5+0x30>
 b0e:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 b13:	48 0f af 4c c7 08    	imul   0x8(%rdi,%rax,8),%rcx
 b19:	48 83 c0 02          	add    $0x2,%rax
 b1d:	49 39 c0             	cmp    %rax,%r8
 b20:	7e 19                	jle    b3b <combine5+0x49>
 b22:	85 d2                	test   %edx,%edx
 b24:	75 e8                	jne    b0e <combine5+0x1c>
 b26:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 b2a:	48 03 4c c7 08       	add    0x8(%rdi,%rax,8),%rcx
 b2f:	eb e8                	jmp    b19 <combine5+0x27>
 b31:	b9 01 00 00 00       	mov    $0x1,%ecx
 b36:	b8 00 00 00 00       	mov    $0x0,%eax
 b3b:	49 39 c1             	cmp    %rax,%r9
 b3e:	7e 11                	jle    b51 <combine5+0x5f>
 b40:	85 d2                	test   %edx,%edx
 b42:	75 11                	jne    b55 <combine5+0x63>
 b44:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 b48:	48 83 c0 01          	add    $0x1,%rax
 b4c:	4c 39 c8             	cmp    %r9,%rax
 b4f:	75 ef                	jne    b40 <combine5+0x4e>
 b51:	48 89 0e             	mov    %rcx,(%rsi)
 b54:	c3                   	retq   
 b55:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 b5a:	eb ec                	jmp    b48 <combine5+0x56>

0000000000000b5c <combine4>:
 b5c:	4c 8b 07             	mov    (%rdi),%r8
 b5f:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
 b63:	4d 85 c0             	test   %r8,%r8
 b66:	7e 24                	jle    b8c <combine4+0x30>
 b68:	b9 01 00 00 00       	mov    $0x1,%ecx
 b6d:	b8 00 00 00 00       	mov    $0x0,%eax
 b72:	eb 0e                	jmp    b82 <combine4+0x26>
 b74:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 b79:	48 83 c0 01          	add    $0x1,%rax
 b7d:	4c 39 c0             	cmp    %r8,%rax
 b80:	74 0f                	je     b91 <combine4+0x35>
 b82:	85 d2                	test   %edx,%edx
 b84:	75 ee                	jne    b74 <combine4+0x18>
 b86:	48 03 0c c7          	add    (%rdi,%rax,8),%rcx
 b8a:	eb ed                	jmp    b79 <combine4+0x1d>
 b8c:	b9 01 00 00 00       	mov    $0x1,%ecx
 b91:	48 89 0e             	mov    %rcx,(%rsi)
 b94:	c3                   	retq   

0000000000000b95 <combine3_plus>:
 b95:	41 57                	push   %r15
 b97:	41 56                	push   %r14
 b99:	41 55                	push   %r13
 b9b:	41 54                	push   %r12
 b9d:	55                   	push   %rbp
 b9e:	53                   	push   %rbx
 b9f:	48 83 ec 28          	sub    $0x28,%rsp
 ba3:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
 ba8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 baf:	00 00 
 bb1:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 bb6:	31 c0                	xor    %eax,%eax
 bb8:	4c 8b 27             	mov    (%rdi),%r12
 bbb:	4d 85 e4             	test   %r12,%r12
 bbe:	7e 49                	jle    c09 <combine3_plus+0x74>
 bc0:	49 89 fd             	mov    %rdi,%r13
 bc3:	41 89 d6             	mov    %edx,%r14d
 bc6:	bd 01 00 00 00       	mov    $0x1,%ebp
 bcb:	bb 00 00 00 00       	mov    $0x0,%ebx
 bd0:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
 bd5:	eb 0f                	jmp    be6 <combine3_plus+0x51>
 bd7:	48 0f af 6c 24 10    	imul   0x10(%rsp),%rbp
 bdd:	48 83 c3 01          	add    $0x1,%rbx
 be1:	4c 39 e3             	cmp    %r12,%rbx
 be4:	74 28                	je     c0e <combine3_plus+0x79>
 be6:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
 bed:	00 00 
 bef:	4c 89 fa             	mov    %r15,%rdx
 bf2:	48 89 de             	mov    %rbx,%rsi
 bf5:	4c 89 ef             	mov    %r13,%rdi
 bf8:	e8 4d fd ff ff       	callq  94a <get_vec_element>
 bfd:	45 85 f6             	test   %r14d,%r14d
 c00:	75 d5                	jne    bd7 <combine3_plus+0x42>
 c02:	48 03 6c 24 10       	add    0x10(%rsp),%rbp
 c07:	eb d4                	jmp    bdd <combine3_plus+0x48>
 c09:	bd 01 00 00 00       	mov    $0x1,%ebp
 c0e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 c13:	48 89 28             	mov    %rbp,(%rax)
 c16:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 c1b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 c22:	00 00 
 c24:	75 0f                	jne    c35 <combine3_plus+0xa0>
 c26:	48 83 c4 28          	add    $0x28,%rsp
 c2a:	5b                   	pop    %rbx
 c2b:	5d                   	pop    %rbp
 c2c:	41 5c                	pop    %r12
 c2e:	41 5d                	pop    %r13
 c30:	41 5e                	pop    %r14
 c32:	41 5f                	pop    %r15
 c34:	c3                   	retq   
 c35:	e8 a6 fb ff ff       	callq  7e0 <__stack_chk_fail@plt>

0000000000000c3a <combine3>:
 c3a:	4c 8b 07             	mov    (%rdi),%r8
 c3d:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
 c41:	48 c7 06 01 00 00 00 	movq   $0x1,(%rsi)
 c48:	4d 85 c0             	test   %r8,%r8
 c4b:	7e 28                	jle    c75 <combine3+0x3b>
 c4d:	b8 00 00 00 00       	mov    $0x0,%eax
 c52:	eb 14                	jmp    c68 <combine3+0x2e>
 c54:	48 8b 0e             	mov    (%rsi),%rcx
 c57:	48 0f af 0c c7       	imul   (%rdi,%rax,8),%rcx
 c5c:	48 89 0e             	mov    %rcx,(%rsi)
 c5f:	48 83 c0 01          	add    $0x1,%rax
 c63:	4c 39 c0             	cmp    %r8,%rax
 c66:	74 0d                	je     c75 <combine3+0x3b>
 c68:	85 d2                	test   %edx,%edx
 c6a:	75 e8                	jne    c54 <combine3+0x1a>
 c6c:	48 8b 0c c7          	mov    (%rdi,%rax,8),%rcx
 c70:	48 03 0e             	add    (%rsi),%rcx
 c73:	eb e7                	jmp    c5c <combine3+0x22>
 c75:	f3 c3                	repz retq 

0000000000000c77 <combine2>:
 c77:	41 57                	push   %r15
 c79:	41 56                	push   %r14
 c7b:	41 55                	push   %r13
 c7d:	41 54                	push   %r12
 c7f:	55                   	push   %rbp
 c80:	53                   	push   %rbx
 c81:	48 83 ec 18          	sub    $0x18,%rsp
 c85:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 c8c:	00 00 
 c8e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 c93:	31 c0                	xor    %eax,%eax
 c95:	4c 8b 27             	mov    (%rdi),%r12
 c98:	48 c7 06 01 00 00 00 	movq   $0x1,(%rsi)
 c9f:	4d 85 e4             	test   %r12,%r12
 ca2:	7e 4e                	jle    cf2 <combine2+0x7b>
 ca4:	49 89 fd             	mov    %rdi,%r13
 ca7:	48 89 f5             	mov    %rsi,%rbp
 caa:	41 89 d6             	mov    %edx,%r14d
 cad:	bb 00 00 00 00       	mov    $0x0,%ebx
 cb2:	49 89 e7             	mov    %rsp,%r15
 cb5:	eb 16                	jmp    ccd <combine2+0x56>
 cb7:	48 8b 45 00          	mov    0x0(%rbp),%rax
 cbb:	48 0f af 04 24       	imul   (%rsp),%rax
 cc0:	48 89 45 00          	mov    %rax,0x0(%rbp)
 cc4:	48 83 c3 01          	add    $0x1,%rbx
 cc8:	4c 39 e3             	cmp    %r12,%rbx
 ccb:	74 25                	je     cf2 <combine2+0x7b>
 ccd:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
 cd4:	00 
 cd5:	4c 89 fa             	mov    %r15,%rdx
 cd8:	48 89 de             	mov    %rbx,%rsi
 cdb:	4c 89 ef             	mov    %r13,%rdi
 cde:	e8 67 fc ff ff       	callq  94a <get_vec_element>
 ce3:	45 85 f6             	test   %r14d,%r14d
 ce6:	75 cf                	jne    cb7 <combine2+0x40>
 ce8:	48 8b 04 24          	mov    (%rsp),%rax
 cec:	48 03 45 00          	add    0x0(%rbp),%rax
 cf0:	eb ce                	jmp    cc0 <combine2+0x49>
 cf2:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 cf7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 cfe:	00 00 
 d00:	75 0f                	jne    d11 <combine2+0x9a>
 d02:	48 83 c4 18          	add    $0x18,%rsp
 d06:	5b                   	pop    %rbx
 d07:	5d                   	pop    %rbp
 d08:	41 5c                	pop    %r12
 d0a:	41 5d                	pop    %r13
 d0c:	41 5e                	pop    %r14
 d0e:	41 5f                	pop    %r15
 d10:	c3                   	retq   
 d11:	e8 ca fa ff ff       	callq  7e0 <__stack_chk_fail@plt>

0000000000000d16 <init_combine>:
 d16:	41 54                	push   %r12
 d18:	55                   	push   %rbp
 d19:	53                   	push   %rbx
 d1a:	48 89 fd             	mov    %rdi,%rbp
 d1d:	49 89 f4             	mov    %rsi,%r12
 d20:	bf 10 00 00 00       	mov    $0x10,%edi
 d25:	e8 e6 fa ff ff       	callq  810 <malloc@plt>
 d2a:	48 85 c0             	test   %rax,%rax
 d2d:	0f 84 94 00 00 00    	je     dc7 <init_combine+0xb1>
 d33:	48 89 c3             	mov    %rax,%rbx
 d36:	4c 89 20             	mov    %r12,(%rax)
 d39:	b8 00 00 00 00       	mov    $0x0,%eax
 d3e:	4d 85 e4             	test   %r12,%r12
 d41:	7f 6a                	jg     dad <init_combine+0x97>
 d43:	48 89 43 08          	mov    %rax,0x8(%rbx)
 d47:	48 89 5d 00          	mov    %rbx,0x0(%rbp)
 d4b:	48 8b 0d ce 12 20 00 	mov    0x2012ce(%rip),%rcx        # 202020 <combine_ops>
 d52:	48 8b 1d cf 12 20 00 	mov    0x2012cf(%rip),%rbx        # 202028 <combine_ops+0x8>
 d59:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
 d5d:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 d61:	48 8b 0d c8 12 20 00 	mov    0x2012c8(%rip),%rcx        # 202030 <combine_ops+0x10>
 d68:	48 8b 1d c9 12 20 00 	mov    0x2012c9(%rip),%rbx        # 202038 <combine_ops+0x18>
 d6f:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
 d73:	48 89 5d 20          	mov    %rbx,0x20(%rbp)
 d77:	48 8b 0d c2 12 20 00 	mov    0x2012c2(%rip),%rcx        # 202040 <combine_ops+0x20>
 d7e:	48 8b 1d c3 12 20 00 	mov    0x2012c3(%rip),%rbx        # 202048 <combine_ops+0x28>
 d85:	48 89 4d 28          	mov    %rcx,0x28(%rbp)
 d89:	48 89 5d 30          	mov    %rbx,0x30(%rbp)
 d8d:	48 8b 0d bc 12 20 00 	mov    0x2012bc(%rip),%rcx        # 202050 <combine_ops+0x30>
 d94:	48 8b 1d bd 12 20 00 	mov    0x2012bd(%rip),%rbx        # 202058 <combine_ops+0x38>
 d9b:	48 89 4d 38          	mov    %rcx,0x38(%rbp)
 d9f:	48 89 5d 40          	mov    %rbx,0x40(%rbp)
 da3:	b8 00 00 00 00       	mov    $0x0,%eax
 da8:	5b                   	pop    %rbx
 da9:	5d                   	pop    %rbp
 daa:	41 5c                	pop    %r12
 dac:	c3                   	retq   
 dad:	be 08 00 00 00       	mov    $0x8,%esi
 db2:	4c 89 e7             	mov    %r12,%rdi
 db5:	e8 36 fa ff ff       	callq  7f0 <calloc@plt>
 dba:	48 85 c0             	test   %rax,%rax
 dbd:	75 84                	jne    d43 <init_combine+0x2d>
 dbf:	48 89 df             	mov    %rbx,%rdi
 dc2:	e8 e9 f9 ff ff       	callq  7b0 <free@plt>
 dc7:	48 8d 3d 06 02 00 00 	lea    0x206(%rip),%rdi        # fd4 <_IO_stdin_used+0x4>
 dce:	e8 ed f9 ff ff       	callq  7c0 <puts@plt>
 dd3:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
 dd8:	eb ce                	jmp    da8 <init_combine+0x92>

0000000000000dda <delete_combine>:
 dda:	48 8b 3f             	mov    (%rdi),%rdi
 ddd:	48 85 ff             	test   %rdi,%rdi
 de0:	74 0e                	je     df0 <delete_combine+0x16>
 de2:	48 83 ec 08          	sub    $0x8,%rsp
 de6:	e8 c5 f9 ff ff       	callq  7b0 <free@plt>
 deb:	48 83 c4 08          	add    $0x8,%rsp
 def:	c3                   	retq   
 df0:	f3 c3                	repz retq 

0000000000000df2 <main>:
 df2:	41 56                	push   %r14
 df4:	41 55                	push   %r13
 df6:	41 54                	push   %r12
 df8:	55                   	push   %rbp
 df9:	53                   	push   %rbx
 dfa:	48 83 ec 60          	sub    $0x60,%rsp
 dfe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 e05:	00 00 
 e07:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
 e0c:	31 c0                	xor    %eax,%eax
 e0e:	83 ff 04             	cmp    $0x4,%edi
 e11:	0f 85 fd 00 00 00    	jne    f14 <main+0x122>
 e17:	48 89 f5             	mov    %rsi,%rbp
 e1a:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
 e1e:	ba 0a 00 00 00       	mov    $0xa,%edx
 e23:	be 00 00 00 00       	mov    $0x0,%esi
 e28:	e8 d3 f9 ff ff       	callq  800 <strtol@plt>
 e2d:	49 89 c4             	mov    %rax,%r12
 e30:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
 e34:	ba 0a 00 00 00       	mov    $0xa,%edx
 e39:	be 00 00 00 00       	mov    $0x0,%esi
 e3e:	e8 bd f9 ff ff       	callq  800 <strtol@plt>
 e43:	48 89 c3             	mov    %rax,%rbx
 e46:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
 e4a:	ba 0a 00 00 00       	mov    $0xa,%edx
 e4f:	be 00 00 00 00       	mov    $0x0,%esi
 e54:	e8 a7 f9 ff ff       	callq  800 <strtol@plt>
 e59:	48 89 c5             	mov    %rax,%rbp
 e5c:	48 63 c3             	movslq %ebx,%rax
 e5f:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
 e63:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
 e67:	48 c1 e3 02          	shl    $0x2,%rbx
 e6b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
 e70:	48 89 de             	mov    %rbx,%rsi
 e73:	e8 9e fe ff ff       	callq  d16 <init_combine>
 e78:	41 89 c5             	mov    %eax,%r13d
 e7b:	85 c0                	test   %eax,%eax
 e7d:	0f 85 a5 00 00 00    	jne    f28 <main+0x136>
 e83:	e8 48 f9 ff ff       	callq  7d0 <clock@plt>
 e88:	49 89 c6             	mov    %rax,%r14
 e8b:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
 e90:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
 e95:	48 98                	cltq   
 e97:	89 ea                	mov    %ebp,%edx
 e99:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
 e9e:	ff 54 c4 18          	callq  *0x18(%rsp,%rax,8)
 ea2:	e8 29 f9 ff ff       	callq  7d0 <clock@plt>
 ea7:	4c 29 f0             	sub    %r14,%rax
 eaa:	50                   	push   %rax
 eab:	48 8d 05 66 01 00 00 	lea    0x166(%rip),%rax        # 1018 <_IO_stdin_used+0x48>
 eb2:	50                   	push   %rax
 eb3:	55                   	push   %rbp
 eb4:	48 8d 05 62 01 00 00 	lea    0x162(%rip),%rax        # 101d <_IO_stdin_used+0x4d>
 ebb:	50                   	push   %rax
 ebc:	49 89 d9             	mov    %rbx,%r9
 ebf:	4c 8d 05 3d 01 00 00 	lea    0x13d(%rip),%r8        # 1003 <_IO_stdin_used+0x33>
 ec6:	44 89 e1             	mov    %r12d,%ecx
 ec9:	48 8d 15 3f 01 00 00 	lea    0x13f(%rip),%rdx        # 100f <_IO_stdin_used+0x3f>
 ed0:	48 8d 35 49 01 00 00 	lea    0x149(%rip),%rsi        # 1020 <_IO_stdin_used+0x50>
 ed7:	bf 01 00 00 00       	mov    $0x1,%edi
 edc:	b8 00 00 00 00       	mov    $0x0,%eax
 ee1:	e8 3a f9 ff ff       	callq  820 <__printf_chk@plt>
 ee6:	48 83 c4 20          	add    $0x20,%rsp
 eea:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
 eef:	e8 e6 fe ff ff       	callq  dda <delete_combine>
 ef4:	44 89 e8             	mov    %r13d,%eax
 ef7:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
 efc:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 f03:	00 00 
 f05:	75 35                	jne    f3c <main+0x14a>
 f07:	48 83 c4 60          	add    $0x60,%rsp
 f0b:	5b                   	pop    %rbx
 f0c:	5d                   	pop    %rbp
 f0d:	41 5c                	pop    %r12
 f0f:	41 5d                	pop    %r13
 f11:	41 5e                	pop    %r14
 f13:	c3                   	retq   
 f14:	48 8d 3d c5 00 00 00 	lea    0xc5(%rip),%rdi        # fe0 <_IO_stdin_used+0x10>
 f1b:	e8 a0 f8 ff ff       	callq  7c0 <puts@plt>
 f20:	41 bd ea ff ff ff    	mov    $0xffffffea,%r13d
 f26:	eb cc                	jmp    ef4 <main+0x102>
 f28:	48 8d 3d c2 00 00 00 	lea    0xc2(%rip),%rdi        # ff1 <_IO_stdin_used+0x21>
 f2f:	e8 8c f8 ff ff       	callq  7c0 <puts@plt>
 f34:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
 f3a:	eb b8                	jmp    ef4 <main+0x102>
 f3c:	e8 9f f8 ff ff       	callq  7e0 <__stack_chk_fail@plt>
 f41:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 f48:	00 00 00 
 f4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000f50 <__libc_csu_init>:
 f50:	41 57                	push   %r15
 f52:	41 56                	push   %r14
 f54:	49 89 d7             	mov    %rdx,%r15
 f57:	41 55                	push   %r13
 f59:	41 54                	push   %r12
 f5b:	4c 8d 25 1e 0e 20 00 	lea    0x200e1e(%rip),%r12        # 201d80 <__frame_dummy_init_array_entry>
 f62:	55                   	push   %rbp
 f63:	48 8d 2d 1e 0e 20 00 	lea    0x200e1e(%rip),%rbp        # 201d88 <__init_array_end>
 f6a:	53                   	push   %rbx
 f6b:	41 89 fd             	mov    %edi,%r13d
 f6e:	49 89 f6             	mov    %rsi,%r14
 f71:	4c 29 e5             	sub    %r12,%rbp
 f74:	48 83 ec 08          	sub    $0x8,%rsp
 f78:	48 c1 fd 03          	sar    $0x3,%rbp
 f7c:	e8 ff f7 ff ff       	callq  780 <_init>
 f81:	48 85 ed             	test   %rbp,%rbp
 f84:	74 20                	je     fa6 <__libc_csu_init+0x56>
 f86:	31 db                	xor    %ebx,%ebx
 f88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 f8f:	00 
 f90:	4c 89 fa             	mov    %r15,%rdx
 f93:	4c 89 f6             	mov    %r14,%rsi
 f96:	44 89 ef             	mov    %r13d,%edi
 f99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 f9d:	48 83 c3 01          	add    $0x1,%rbx
 fa1:	48 39 dd             	cmp    %rbx,%rbp
 fa4:	75 ea                	jne    f90 <__libc_csu_init+0x40>
 fa6:	48 83 c4 08          	add    $0x8,%rsp
 faa:	5b                   	pop    %rbx
 fab:	5d                   	pop    %rbp
 fac:	41 5c                	pop    %r12
 fae:	41 5d                	pop    %r13
 fb0:	41 5e                	pop    %r14
 fb2:	41 5f                	pop    %r15
 fb4:	c3                   	retq   
 fb5:	90                   	nop
 fb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 fbd:	00 00 00 

0000000000000fc0 <__libc_csu_fini>:
 fc0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000fc4 <_fini>:
 fc4:	48 83 ec 08          	sub    $0x8,%rsp
 fc8:	48 83 c4 08          	add    $0x8,%rsp
 fcc:	c3                   	retq   
