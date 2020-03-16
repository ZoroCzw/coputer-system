
bin/optimization_O0：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000000620 <_init>:
 620:	48 83 ec 08          	sub    $0x8,%rsp
 624:	48 8b 05 bd 09 20 00 	mov    0x2009bd(%rip),%rax        # 200fe8 <__gmon_start__>
 62b:	48 85 c0             	test   %rax,%rax
 62e:	74 02                	je     632 <_init+0x12>
 630:	ff d0                	callq  *%rax
 632:	48 83 c4 08          	add    $0x8,%rsp
 636:	c3                   	retq   

Disassembly of section .plt:

0000000000000640 <.plt>:
 640:	ff 35 5a 09 20 00    	pushq  0x20095a(%rip)        # 200fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 646:	ff 25 5c 09 20 00    	jmpq   *0x20095c(%rip)        # 200fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 64c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000650 <puts@plt>:
 650:	ff 25 5a 09 20 00    	jmpq   *0x20095a(%rip)        # 200fb0 <puts@GLIBC_2.2.5>
 656:	68 00 00 00 00       	pushq  $0x0
 65b:	e9 e0 ff ff ff       	jmpq   640 <.plt>

0000000000000660 <clock@plt>:
 660:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 200fb8 <clock@GLIBC_2.2.5>
 666:	68 01 00 00 00       	pushq  $0x1
 66b:	e9 d0 ff ff ff       	jmpq   640 <.plt>

0000000000000670 <__stack_chk_fail@plt>:
 670:	ff 25 4a 09 20 00    	jmpq   *0x20094a(%rip)        # 200fc0 <__stack_chk_fail@GLIBC_2.4>
 676:	68 02 00 00 00       	pushq  $0x2
 67b:	e9 c0 ff ff ff       	jmpq   640 <.plt>

0000000000000680 <printf@plt>:
 680:	ff 25 42 09 20 00    	jmpq   *0x200942(%rip)        # 200fc8 <printf@GLIBC_2.2.5>
 686:	68 03 00 00 00       	pushq  $0x3
 68b:	e9 b0 ff ff ff       	jmpq   640 <.plt>

0000000000000690 <atoi@plt>:
 690:	ff 25 3a 09 20 00    	jmpq   *0x20093a(%rip)        # 200fd0 <atoi@GLIBC_2.2.5>
 696:	68 04 00 00 00       	pushq  $0x4
 69b:	e9 a0 ff ff ff       	jmpq   640 <.plt>

Disassembly of section .plt.got:

00000000000006a0 <__cxa_finalize@plt>:
 6a0:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 6a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006b0 <_start>:
 6b0:	31 ed                	xor    %ebp,%ebp
 6b2:	49 89 d1             	mov    %rdx,%r9
 6b5:	5e                   	pop    %rsi
 6b6:	48 89 e2             	mov    %rsp,%rdx
 6b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 6bd:	50                   	push   %rax
 6be:	54                   	push   %rsp
 6bf:	4c 8d 05 fa 02 00 00 	lea    0x2fa(%rip),%r8        # 9c0 <__libc_csu_fini>
 6c6:	48 8d 0d 83 02 00 00 	lea    0x283(%rip),%rcx        # 950 <__libc_csu_init>
 6cd:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 7ba <main>
 6d4:	ff 15 06 09 20 00    	callq  *0x200906(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 6da:	f4                   	hlt    
 6db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000006e0 <deregister_tm_clones>:
 6e0:	48 8d 3d 39 09 20 00 	lea    0x200939(%rip),%rdi        # 201020 <__TMC_END__>
 6e7:	55                   	push   %rbp
 6e8:	48 8d 05 31 09 20 00 	lea    0x200931(%rip),%rax        # 201020 <__TMC_END__>
 6ef:	48 39 f8             	cmp    %rdi,%rax
 6f2:	48 89 e5             	mov    %rsp,%rbp
 6f5:	74 19                	je     710 <deregister_tm_clones+0x30>
 6f7:	48 8b 05 da 08 20 00 	mov    0x2008da(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 6fe:	48 85 c0             	test   %rax,%rax
 701:	74 0d                	je     710 <deregister_tm_clones+0x30>
 703:	5d                   	pop    %rbp
 704:	ff e0                	jmpq   *%rax
 706:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 70d:	00 00 00 
 710:	5d                   	pop    %rbp
 711:	c3                   	retq   
 712:	0f 1f 40 00          	nopl   0x0(%rax)
 716:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 71d:	00 00 00 

0000000000000720 <register_tm_clones>:
 720:	48 8d 3d f9 08 20 00 	lea    0x2008f9(%rip),%rdi        # 201020 <__TMC_END__>
 727:	48 8d 35 f2 08 20 00 	lea    0x2008f2(%rip),%rsi        # 201020 <__TMC_END__>
 72e:	55                   	push   %rbp
 72f:	48 29 fe             	sub    %rdi,%rsi
 732:	48 89 e5             	mov    %rsp,%rbp
 735:	48 c1 fe 03          	sar    $0x3,%rsi
 739:	48 89 f0             	mov    %rsi,%rax
 73c:	48 c1 e8 3f          	shr    $0x3f,%rax
 740:	48 01 c6             	add    %rax,%rsi
 743:	48 d1 fe             	sar    %rsi
 746:	74 18                	je     760 <register_tm_clones+0x40>
 748:	48 8b 05 a1 08 20 00 	mov    0x2008a1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 74f:	48 85 c0             	test   %rax,%rax
 752:	74 0c                	je     760 <register_tm_clones+0x40>
 754:	5d                   	pop    %rbp
 755:	ff e0                	jmpq   *%rax
 757:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 75e:	00 00 
 760:	5d                   	pop    %rbp
 761:	c3                   	retq   
 762:	0f 1f 40 00          	nopl   0x0(%rax)
 766:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 76d:	00 00 00 

0000000000000770 <__do_global_dtors_aux>:
 770:	80 3d a9 08 20 00 00 	cmpb   $0x0,0x2008a9(%rip)        # 201020 <__TMC_END__>
 777:	75 2f                	jne    7a8 <__do_global_dtors_aux+0x38>
 779:	48 83 3d 77 08 20 00 	cmpq   $0x0,0x200877(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 780:	00 
 781:	55                   	push   %rbp
 782:	48 89 e5             	mov    %rsp,%rbp
 785:	74 0c                	je     793 <__do_global_dtors_aux+0x23>
 787:	48 8b 3d 7a 08 20 00 	mov    0x20087a(%rip),%rdi        # 201008 <__dso_handle>
 78e:	e8 0d ff ff ff       	callq  6a0 <__cxa_finalize@plt>
 793:	e8 48 ff ff ff       	callq  6e0 <deregister_tm_clones>
 798:	c6 05 81 08 20 00 01 	movb   $0x1,0x200881(%rip)        # 201020 <__TMC_END__>
 79f:	5d                   	pop    %rbp
 7a0:	c3                   	retq   
 7a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7a8:	f3 c3                	repz retq 
 7aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000007b0 <frame_dummy>:
 7b0:	55                   	push   %rbp
 7b1:	48 89 e5             	mov    %rsp,%rbp
 7b4:	5d                   	pop    %rbp
 7b5:	e9 66 ff ff ff       	jmpq   720 <register_tm_clones>

00000000000007ba <main>:
 7ba:	55                   	push   %rbp
 7bb:	48 89 e5             	mov    %rsp,%rbp
 7be:	48 83 ec 50          	sub    $0x50,%rsp
 7c2:	89 7d bc             	mov    %edi,-0x44(%rbp)
 7c5:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
 7c9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7d0:	00 00 
 7d2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 7d6:	31 c0                	xor    %eax,%eax
 7d8:	48 c7 45 d8 01 00 00 	movq   $0x1,-0x28(%rbp)
 7df:	00 
 7e0:	48 c7 45 e0 02 00 00 	movq   $0x2,-0x20(%rbp)
 7e7:	00 
 7e8:	83 7d bc 03          	cmpl   $0x3,-0x44(%rbp)
 7ec:	74 16                	je     804 <main+0x4a>
 7ee:	48 8d 3d df 01 00 00 	lea    0x1df(%rip),%rdi        # 9d4 <_IO_stdin_used+0x4>
 7f5:	e8 56 fe ff ff       	callq  650 <puts@plt>
 7fa:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
 7ff:	e9 c5 00 00 00       	jmpq   8c9 <main+0x10f>
 804:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 808:	48 83 c0 08          	add    $0x8,%rax
 80c:	48 8b 00             	mov    (%rax),%rax
 80f:	48 89 c7             	mov    %rax,%rdi
 812:	e8 79 fe ff ff       	callq  690 <atoi@plt>
 817:	89 45 d0             	mov    %eax,-0x30(%rbp)
 81a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 81e:	48 83 c0 10          	add    $0x10,%rax
 822:	48 8b 00             	mov    (%rax),%rax
 825:	48 89 c7             	mov    %rax,%rdi
 828:	e8 63 fe ff ff       	callq  690 <atoi@plt>
 82d:	89 45 d4             	mov    %eax,-0x2c(%rbp)
 830:	e8 2b fe ff ff       	callq  660 <clock@plt>
 835:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 839:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
 840:	eb 2c                	jmp    86e <main+0xb4>
 842:	8b 45 d0             	mov    -0x30(%rbp),%eax
 845:	48 98                	cltq   
 847:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 84e:	00 
 84f:	48 8d 05 ba 07 20 00 	lea    0x2007ba(%rip),%rax        # 201010 <func>
 856:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
 85a:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
 85e:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
 862:	48 89 ce             	mov    %rcx,%rsi
 865:	48 89 d7             	mov    %rdx,%rdi
 868:	ff d0                	callq  *%rax
 86a:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
 86e:	8b 45 cc             	mov    -0x34(%rbp),%eax
 871:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
 874:	7c cc                	jl     842 <main+0x88>
 876:	e8 e5 fd ff ff       	callq  660 <clock@plt>
 87b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 87f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 883:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
 887:	48 89 c2             	mov    %rax,%rdx
 88a:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
 88d:	8b 45 d0             	mov    -0x30(%rbp),%eax
 890:	48 83 ec 08          	sub    $0x8,%rsp
 894:	52                   	push   %rdx
 895:	4c 8d 0d 49 01 00 00 	lea    0x149(%rip),%r9        # 9e5 <_IO_stdin_used+0x15>
 89c:	41 89 c8             	mov    %ecx,%r8d
 89f:	48 8d 0d 44 01 00 00 	lea    0x144(%rip),%rcx        # 9ea <_IO_stdin_used+0x1a>
 8a6:	89 c2                	mov    %eax,%edx
 8a8:	48 8d 35 42 01 00 00 	lea    0x142(%rip),%rsi        # 9f1 <_IO_stdin_used+0x21>
 8af:	48 8d 3d 40 01 00 00 	lea    0x140(%rip),%rdi        # 9f6 <_IO_stdin_used+0x26>
 8b6:	b8 00 00 00 00       	mov    $0x0,%eax
 8bb:	e8 c0 fd ff ff       	callq  680 <printf@plt>
 8c0:	48 83 c4 10          	add    $0x10,%rsp
 8c4:	b8 00 00 00 00       	mov    $0x0,%eax
 8c9:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
 8cd:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
 8d4:	00 00 
 8d6:	74 05                	je     8dd <main+0x123>
 8d8:	e8 93 fd ff ff       	callq  670 <__stack_chk_fail@plt>
 8dd:	c9                   	leaveq 
 8de:	c3                   	retq   

00000000000008df <twiddle1>:
 8df:	55                   	push   %rbp
 8e0:	48 89 e5             	mov    %rsp,%rbp
 8e3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 8e7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
 8eb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 8ef:	48 8b 10             	mov    (%rax),%rdx
 8f2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 8f6:	48 8b 00             	mov    (%rax),%rax
 8f9:	48 01 c2             	add    %rax,%rdx
 8fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 900:	48 89 10             	mov    %rdx,(%rax)
 903:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 907:	48 8b 10             	mov    (%rax),%rdx
 90a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 90e:	48 8b 00             	mov    (%rax),%rax
 911:	48 01 c2             	add    %rax,%rdx
 914:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 918:	48 89 10             	mov    %rdx,(%rax)
 91b:	90                   	nop
 91c:	5d                   	pop    %rbp
 91d:	c3                   	retq   

000000000000091e <twiddle2>:
 91e:	55                   	push   %rbp
 91f:	48 89 e5             	mov    %rsp,%rbp
 922:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 926:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
 92a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 92e:	48 8b 10             	mov    (%rax),%rdx
 931:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 935:	48 8b 00             	mov    (%rax),%rax
 938:	48 01 c0             	add    %rax,%rax
 93b:	48 01 c2             	add    %rax,%rdx
 93e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 942:	48 89 10             	mov    %rdx,(%rax)
 945:	90                   	nop
 946:	5d                   	pop    %rbp
 947:	c3                   	retq   
 948:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 94f:	00 

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
 97c:	e8 9f fc ff ff       	callq  620 <_init>
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
