	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	callq	_getchar
	movl	%eax, %r15d
	shll	$24, %r15d
	cmpl	$-16777216, %r15d               ## imm = 0xFF000000
	jne	LBB0_1
LBB0_22:
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_1:
	movb	$-1, %r14b
	movl	$0, -52(%rbp)                   ## 4-byte Folded Spill
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	jmp	LBB0_2
	.p2align	4, 0x90
LBB0_6:                                 ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$167772160, %r15d               ## imm = 0xA000000
	movl	$0, %eax
	cmovel	%eax, %edi
	movl	%edi, %ebx
LBB0_20:                                ##   in Loop: Header=BB0_2 Depth=1
	movzbl	-41(%rbp), %r14d                ## 1-byte Folded Reload
LBB0_21:                                ##   in Loop: Header=BB0_2 Depth=1
	callq	_getchar
	movl	%eax, %r15d
	shll	$24, %r15d
	cmpl	$-16777216, %r15d               ## imm = 0xFF000000
	movl	%ebx, %edi
	je	LBB0_22
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	%r12d, %ecx
	cmpl	$704643072, %r15d               ## imm = 0x2A000000
	movl	$1, %r8d
	cmovel	%r8d, %r12d
	cmpb	$47, %r14b
	sete	%dl
	cmovnel	%ecx, %r12d
	movl	-48(%rbp), %esi                 ## 4-byte Reload
	orl	-52(%rbp), %esi                 ## 4-byte Folded Reload
	sete	%r13b
	cmovnel	%ecx, %r12d
	andb	%r13b, %dl
	cmpl	$788529152, %r15d               ## imm = 0x2F000000
	sete	%bl
	testb	%bl, %dl
	cmovnel	%ecx, %r12d
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -41(%rbp)                  ## 1-byte Spill
	cmovnel	%r8d, %edi
	movl	%r12d, %eax
	orl	%edi, %eax
	je	LBB0_7
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpb	$42, %r14b
	jne	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$788529152, %r15d               ## imm = 0x2F000000
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	%edi, %ebx
	xorl	%r12d, %r12d
	movb	$-1, %r14b
	jmp	LBB0_21
	.p2align	4, 0x90
LBB0_7:                                 ##   in Loop: Header=BB0_2 Depth=1
	cmpb	$-1, %r14b
	je	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_2 Depth=1
	movsbl	%r14b, %edi
	callq	_putchar
LBB0_9:                                 ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$570425344, %r15d               ## imm = 0x22000000
	sete	%al
	testb	%r13b, %al
	je	LBB0_11
## %bb.10:                              ##   in Loop: Header=BB0_2 Depth=1
	movl	$1, -48(%rbp)                   ## 4-byte Folded Spill
	xorl	%r12d, %r12d
LBB0_18:                                ##   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	movl	$0, -52(%rbp)                   ## 4-byte Folded Spill
	jmp	LBB0_20
	.p2align	4, 0x90
LBB0_11:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$654311424, %r15d               ## imm = 0x27000000
	sete	%al
	xorl	%r12d, %r12d
	testb	%r13b, %al
	je	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	movl	$1, -52(%rbp)                   ## 4-byte Folded Spill
	jmp	LBB0_20
LBB0_13:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, -48(%rbp)                   ## 4-byte Folded Reload
	jne	LBB0_14
LBB0_17:                                ##   in Loop: Header=BB0_2 Depth=1
	xorl	%r12d, %r12d
	cmpl	$0, -52(%rbp)                   ## 4-byte Folded Reload
	je	LBB0_18
## %bb.19:                              ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$654311424, %r15d               ## imm = 0x27000000
	setne	%al
	cmpb	$92, %r14b
	sete	%cl
	orb	%al, %cl
	cmpl	$167772160, %r15d               ## imm = 0xA000000
	setne	%al
	andb	%cl, %al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)                 ## 4-byte Spill
	xorl	%ebx, %ebx
	jmp	LBB0_20
LBB0_14:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$570425344, %r15d               ## imm = 0x22000000
	sete	%al
	cmpb	$92, %r14b
	setne	%cl
	cmpl	$167772160, %r15d               ## imm = 0xA000000
	je	LBB0_15
## %bb.16:                              ##   in Loop: Header=BB0_2 Depth=1
	andb	%al, %cl
	je	LBB0_17
LBB0_15:                                ##   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	jmp	LBB0_20
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
