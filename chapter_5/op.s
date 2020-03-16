
bin/optimization_O1：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000000648 <_init>:
 648:	48 83 ec 08          	sub    $0x8,%rsp
 64c:	48 8b 05 95 09 20 00 	mov    0x200995(%rip),%rax        # 200fe8 <__gmon_start__>
 653:	48 85 c0             	test   %rax,%rax
 656:	74 02                	je     65a <_init+0x12>
 658:	ff d0                	callq  *%rax
 65a:	48 83 c4 08          	add    $0x8,%rsp
 65e:	c3                   	retq   

Disassembly of section .plt:

0000000000000660 <.plt>:
 660:	ff 35 3a 09 20 00    	pushq  0x20093a(%rip)        # 200fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 666:	ff 25 3c 09 20 00    	jmpq   *0x20093c(%rip)        # 200fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 66c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000670 <puts@plt>:
 670:	ff 25 3a 09 20 00    	jmpq   *0x20093a(%rip)        # 200fb0 <puts@GLIBC_2.2.5>
 676:	68 00 00 00 00       	pushq  $0x0
 67b:	e9 e0 ff ff ff       	jmpq   660 <.plt>

0000000000000680 <clock@plt>:
 680:	ff 25 32 09 20 00    	jmpq   *0x200932(%rip)        # 200fb8 <clock@GLIBC_2.2.5>
 686:	68 01 00 00 00       	pushq  $0x1
 68b:	e9 d0 ff ff ff       	jmpq   660 <.plt>

0000000000000690 <__stack_chk_fail@plt>:
 690:	ff 25 2a 09 20 00    	jmpq   *0x20092a(%rip)        # 200fc0 <__stack_chk_fail@GLIBC_2.4>
 696:	68 02 00 00 00       	pushq  $0x2
 69b:	e9 c0 ff ff ff       	jmpq   660 <.plt>

00000000000006a0 <strtol@plt>:
 6a0:	ff 25 22 09 20 00    	jmpq   *0x200922(%rip)        # 200fc8 <strtol@GLIBC_2.2.5>
 6a6:	68 03 00 00 00       	pushq  $0x3
 6ab:	e9 b0 ff ff ff       	jmpq   660 <.plt>

00000000000006b0 <__printf_chk@plt>:
 6b0:	ff 25 1a 09 20 00    	jmpq   *0x20091a(%rip)        # 200fd0 <__printf_chk@GLIBC_2.3.4>
 6b6:	68 04 00 00 00       	pushq  $0x4
 6bb:	e9 a0 ff ff ff       	jmpq   660 <.plt>

Disassembly of section .plt.got:

00000000000006c0 <__cxa_finalize@plt>:
 6c0:	ff 25 32 09 20 00    	jmpq   *0x200932(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 6c6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006d0 <_start>:
 6d0:	31 ed                	xor    %ebp,%ebp
 6d2:	49 89 d1             	mov    %rdx,%r9
 6d5:	5e                   	pop    %rsi
 6d6:	48 89 e2             	mov    %rsp,%rdx
 6d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 6dd:	50                   	push   %rax
 6de:	54                   	push   %rsp
 6df:	4c 8d 05 da 02 00 00 	lea    0x2da(%rip),%r8        # 9c0 <__libc_csu_fini>
 6e6:	48 8d 0d 63 02 00 00 	lea    0x263(%rip),%rcx        # 950 <__libc_csu_init>
 6ed:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 7da <main>
 6f4:	ff 15 e6 08 20 00    	callq  *0x2008e6(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 6fa:	f4                   	hlt    
 6fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000700 <deregister_tm_clones>:
 700:	48 8d 3d 19 09 20 00 	lea    0x200919(%rip),%rdi        # 201020 <__TMC_END__>
 707:	55                   	push   %rbp
 708:	48 8d 05 11 09 20 00 	lea    0x200911(%rip),%rax        # 201020 <__TMC_END__>
 70f:	48 39 f8             	cmp    %rdi,%rax
 712:	48 89 e5             	mov    %rsp,%rbp
 715:	74 19                	je     730 <deregister_tm_clones+0x30>
 717:	48 8b 05 ba 08 20 00 	mov    0x2008ba(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 71e:	48 85 c0             	test   %rax,%rax
 721:	74 0d                	je     730 <deregister_tm_clones+0x30>
 723:	5d                   	pop    %rbp
 724:	ff e0                	jmpq   *%rax
 726:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 72d:	00 00 00 
 730:	5d                   	pop    %rbp
 731:	c3                   	retq   
 732:	0f 1f 40 00          	nopl   0x0(%rax)
 736:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 73d:	00 00 00 

0000000000000740 <register_tm_clones>:
 740:	48 8d 3d d9 08 20 00 	lea    0x2008d9(%rip),%rdi        # 201020 <__TMC_END__>
 747:	48 8d 35 d2 08 20 00 	lea    0x2008d2(%rip),%rsi        # 201020 <__TMC_END__>
 74e:	55                   	push   %rbp
 74f:	48 29 fe             	sub    %rdi,%rsi
 752:	48 89 e5             	mov    %rsp,%rbp
 755:	48 c1 fe 03          	sar    $0x3,%rsi
 759:	48 89 f0             	mov    %rsi,%rax
 75c:	48 c1 e8 3f          	shr    $0x3f,%rax
 760:	48 01 c6             	add    %rax,%rsi
 763:	48 d1 fe             	sar    %rsi
 766:	74 18                	je     780 <register_tm_clones+0x40>
 768:	48 8b 05 81 08 20 00 	mov    0x200881(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 76f:	48 85 c0             	test   %rax,%rax
 772:	74 0c                	je     780 <register_tm_clones+0x40>
 774:	5d                   	pop    %rbp
 775:	ff e0                	jmpq   *%rax
 777:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 77e:	00 00 
 780:	5d                   	pop    %rbp
 781:	c3                   	retq   
 782:	0f 1f 40 00          	nopl   0x0(%rax)
 786:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 78d:	00 00 00 

0000000000000790 <__do_global_dtors_aux>:
 790:	80 3d 89 08 20 00 00 	cmpb   $0x0,0x200889(%rip)        # 201020 <__TMC_END__>
 797:	75 2f                	jne    7c8 <__do_global_dtors_aux+0x38>
 799:	48 83 3d 57 08 20 00 	cmpq   $0x0,0x200857(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 7a0:	00 
 7a1:	55                   	push   %rbp
 7a2:	48 89 e5             	mov    %rsp,%rbp
 7a5:	74 0c                	je     7b3 <__do_global_dtors_aux+0x23>
 7a7:	48 8b 3d 5a 08 20 00 	mov    0x20085a(%rip),%rdi        # 201008 <__dso_handle>
 7ae:	e8 0d ff ff ff       	callq  6c0 <__cxa_finalize@plt>
 7b3:	e8 48 ff ff ff       	callq  700 <deregister_tm_clones>
 7b8:	c6 05 61 08 20 00 01 	movb   $0x1,0x200861(%rip)        # 201020 <__TMC_END__>
 7bf:	5d                   	pop    %rbp
 7c0:	c3                   	retq   
 7c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7c8:	f3 c3                	repz retq 
 7ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000007d0 <frame_dummy>:
 7d0:	55                   	push   %rbp
 7d1:	48 89 e5             	mov    %rsp,%rbp
 7d4:	5d                   	pop    %rbp
 7d5:	e9 66 ff ff ff       	jmpq   740 <register_tm_clones>

00000000000007da <main>:
 7da:	41 57                	push   %r15
 7dc:	41 56                	push   %r14
 7de:	41 55                	push   %r13
 7e0:	41 54                	push   %r12
 7e2:	55                   	push   %rbp
 7e3:	53                   	push   %rbx
 7e4:	48 83 ec 48          	sub    $0x48,%rsp
 7e8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7ef:	00 00 
 7f1:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
 7f6:	31 c0                	xor    %eax,%eax
 7f8:	48 c7 44 24 28 01 00 	movq   $0x1,0x28(%rsp)
 7ff:	00 00 
 801:	48 c7 44 24 30 02 00 	movq   $0x2,0x30(%rsp)
 808:	00 00 
 80a:	83 ff 03             	cmp    $0x3,%edi
 80d:	0f 85 ef 00 00 00    	jne    902 <main+0x128>
 813:	48 89 f3             	mov    %rsi,%rbx
 816:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
 81a:	ba 0a 00 00 00       	mov    $0xa,%edx
 81f:	be 00 00 00 00       	mov    $0x0,%esi
 824:	e8 77 fe ff ff       	callq  6a0 <strtol@plt>
 829:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 82e:	89 c5                	mov    %eax,%ebp
 830:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
 834:	ba 0a 00 00 00       	mov    $0xa,%edx
 839:	be 00 00 00 00       	mov    $0x0,%esi
 83e:	e8 5d fe ff ff       	callq  6a0 <strtol@plt>
 843:	48 89 c3             	mov    %rax,%rbx
 846:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
 84b:	41 89 c4             	mov    %eax,%r12d
 84e:	e8 2d fe ff ff       	callq  680 <clock@plt>
 853:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 858:	85 db                	test   %ebx,%ebx
 85a:	7e 3e                	jle    89a <main+0xc0>
 85c:	bb 00 00 00 00       	mov    $0x0,%ebx
 861:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
 866:	4c 8d 74 24 28       	lea    0x28(%rsp),%r14
 86b:	4c 8d 2d 9e 07 20 00 	lea    0x20079e(%rip),%r13        # 201010 <func>
 872:	48 63 ed             	movslq %ebp,%rbp
 875:	4c 89 fe             	mov    %r15,%rsi
 878:	4c 89 f7             	mov    %r14,%rdi
 87b:	41 ff 54 ed 00       	callq  *0x0(%r13,%rbp,8)
 880:	48 c7 44 24 28 01 00 	movq   $0x1,0x28(%rsp)
 887:	00 00 
 889:	48 c7 44 24 30 01 00 	movq   $0x1,0x30(%rsp)
 890:	00 00 
 892:	83 c3 01             	add    $0x1,%ebx
 895:	44 39 e3             	cmp    %r12d,%ebx
 898:	75 db                	jne    875 <main+0x9b>
 89a:	e8 e1 fd ff ff       	callq  680 <clock@plt>
 89f:	48 2b 44 24 08       	sub    0x8(%rsp),%rax
 8a4:	50                   	push   %rax
 8a5:	48 8d 05 62 01 00 00 	lea    0x162(%rip),%rax        # a0e <_IO_stdin_used+0x3e>
 8ac:	50                   	push   %rax
 8ad:	44 8b 4c 24 20       	mov    0x20(%rsp),%r9d
 8b2:	4c 8d 05 2c 01 00 00 	lea    0x12c(%rip),%r8        # 9e5 <_IO_stdin_used+0x15>
 8b9:	8b 4c 24 28          	mov    0x28(%rsp),%ecx
 8bd:	48 8d 15 28 01 00 00 	lea    0x128(%rip),%rdx        # 9ec <_IO_stdin_used+0x1c>
 8c4:	48 8d 35 26 01 00 00 	lea    0x126(%rip),%rsi        # 9f1 <_IO_stdin_used+0x21>
 8cb:	bf 01 00 00 00       	mov    $0x1,%edi
 8d0:	b8 00 00 00 00       	mov    $0x0,%eax
 8d5:	e8 d6 fd ff ff       	callq  6b0 <__printf_chk@plt>
 8da:	48 83 c4 10          	add    $0x10,%rsp
 8de:	b8 00 00 00 00       	mov    $0x0,%eax
 8e3:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
 8e8:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
 8ef:	00 00 
 8f1:	75 22                	jne    915 <main+0x13b>
 8f3:	48 83 c4 48          	add    $0x48,%rsp
 8f7:	5b                   	pop    %rbx
 8f8:	5d                   	pop    %rbp
 8f9:	41 5c                	pop    %r12
 8fb:	41 5d                	pop    %r13
 8fd:	41 5e                	pop    %r14
 8ff:	41 5f                	pop    %r15
 901:	c3                   	retq   
 902:	48 8d 3d cb 00 00 00 	lea    0xcb(%rip),%rdi        # 9d4 <_IO_stdin_used+0x4>
 909:	e8 62 fd ff ff       	callq  670 <puts@plt>
 90e:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
 913:	eb ce                	jmp    8e3 <main+0x109>
 915:	e8 76 fd ff ff       	callq  690 <__stack_chk_fail@plt>

000000000000091a <twiddle1>:
 91a:	48 8b 06             	mov    (%rsi),%rax
 91d:	48 03 07             	add    (%rdi),%rax
 920:	48 89 07             	mov    %rax,(%rdi)
 923:	48 03 06             	add    (%rsi),%rax
 926:	48 89 07             	mov    %rax,(%rdi)
 929:	48 03 06             	add    (%rsi),%rax
 92c:	48 89 07             	mov    %rax,(%rdi)
 92f:	48 03 06             	add    (%rsi),%rax
 932:	48 89 07             	mov    %rax,(%rdi)
 935:	48 03 06             	add    (%rsi),%rax
 938:	48 89 07             	mov    %rax,(%rdi)
 93b:	b8 00 00 00 00       	mov    $0x0,%eax
 940:	c3                   	retq   

0000000000000941 <twiddle2>:
 941:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
 948:	b8 00 00 00 00       	mov    $0x0,%eax
 94d:	c3                   	retq   
 94e:	66 90                	xchg   %ax,%ax

0000000000000950 <__libc_csu_init>:
 950:	41 57                	push   %r15
 952:	41 56                	push   %r14
 954:	49 89 d7             	mov    %rdx,%r15
 957:	41 55                	push   %r13
 959:	41 54                	push   %r12
 95b:	4c 8d 25 36 04 20 00 	lea    0x200436(%rip),%r12        # 200d98 <__frame_dummy_init_array_entry>
 962:	55                   	push   %rbp
 963:	48 8d 2d 36 04 20 00 	lea    0x200436(%rip),%rbp        # 200da0 <__init_array_end>
 96a:	53                   	push   %rbx
 96b:	41 89 fd             	mov    %edi,%r13d
 96e:	49 89 f6             	mov    %rsi,%r14
 971:	4c 29 e5             	sub    %r12,%rbp
 974:	48 83 ec 08          	sub    $0x8,%rsp
 978:	48 c1 fd 03          	sar    $0x3,%rbp
 97c:	e8 c7 fc ff ff       	callq  648 <_init>
 981:	48 85 ed             	test   %rbp,%rbp
 984:	74 20                	je     9a6 <__libc_csu_init+0x56>
 986:	31 db                	xor    %ebx,%ebx
 988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 98f:	00 
 990:	4c 89 fa             	mov    %r15,%rdx
 993:	4c 89 f6             	mov    %r14,%rsi
 996:	44 89 ef             	mov    %r13d,%edi
 999:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 99d:	48 83 c3 01          	add    $0x1,%rbx
 9a1:	48 39 dd             	cmp    %rbx,%rbp
 9a4:	75 ea                	jne    990 <__libc_csu_init+0x40>
 9a6:	48 83 c4 08          	add    $0x8,%rsp
 9aa:	5b                   	pop    %rbx
 9ab:	5d                   	pop    %rbp
 9ac:	41 5c                	pop    %r12
 9ae:	41 5d                	pop    %r13
 9b0:	41 5e                	pop    %r14
 9b2:	41 5f                	pop    %r15
 9b4:	c3                   	retq   
 9b5:	90                   	nop
 9b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9bd:	00 00 00 

00000000000009c0 <__libc_csu_fini>:
 9c0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000009c4 <_fini>:
 9c4:	48 83 ec 08          	sub    $0x8,%rsp
 9c8:	48 83 c4 08          	add    $0x8,%rsp
 9cc:	c3                   	retq   
