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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	callq	_getchar
	movl	%eax, %r13d
	shll	$24, %r13d
	cmpl	$-16777216, %r13d               ## imm = 0xFF000000
	je	LBB0_26
## %bb.1:
	movl	%eax, %r12d
	movb	$-1, %dil
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB0_2
	.p2align	4, 0x90
LBB0_6:                                 ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$167772160, %r13d               ## imm = 0xA000000
	movl	$0, %eax
	cmovel	%eax, %r14d
LBB0_20:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	%r12d, %r15d
LBB0_21:                                ##   in Loop: Header=BB0_2 Depth=1
	callq	_getchar
	movl	%eax, %r12d
	movl	%eax, %r13d
	shll	$24, %r13d
	cmpl	$-16777216, %r13d               ## imm = 0xFF000000
	movl	%r15d, %edi
	je	LBB0_22
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	cmpl	$704643072, %r13d               ## imm = 0x2A000000
	movl	$1, %esi
	cmovel	%esi, %ebx
	cmpb	$47, %dil
	sete	%cl
	cmovnel	%eax, %ebx
	movl	-44(%rbp), %edx                 ## 4-byte Reload
	orl	-48(%rbp), %edx                 ## 4-byte Folded Reload
	sete	%r15b
	cmovnel	%eax, %ebx
	andb	%r15b, %cl
	cmpl	$788529152, %r13d               ## imm = 0x2F000000
	sete	%dl
	testb	%dl, %cl
	cmovnel	%eax, %ebx
	cmovnel	%esi, %r14d
	movl	%ebx, %eax
	orl	%r14d, %eax
	je	LBB0_7
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpb	$42, %dil
	jne	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$788529152, %r13d               ## imm = 0x2F000000
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	movb	$-1, %r15b
	jmp	LBB0_21
	.p2align	4, 0x90
LBB0_7:                                 ##   in Loop: Header=BB0_2 Depth=1
	cmpb	$-1, %dil
	je	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	%edi, %ebx
	movsbl	%dil, %edi
	callq	_putchar
	movl	%ebx, %edi
LBB0_9:                                 ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$570425344, %r13d               ## imm = 0x22000000
	sete	%al
	testb	%r15b, %al
	je	LBB0_11
## %bb.10:                              ##   in Loop: Header=BB0_2 Depth=1
	movl	$1, -44(%rbp)                   ## 4-byte Folded Spill
	xorl	%ebx, %ebx
LBB0_18:                                ##   in Loop: Header=BB0_2 Depth=1
	xorl	%r14d, %r14d
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	jmp	LBB0_20
	.p2align	4, 0x90
LBB0_11:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$654311424, %r13d               ## imm = 0x27000000
	sete	%al
	xorl	%ebx, %ebx
	testb	%r15b, %al
	je	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_2 Depth=1
	xorl	%r14d, %r14d
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
	movl	$1, -48(%rbp)                   ## 4-byte Folded Spill
	jmp	LBB0_20
LBB0_13:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, -44(%rbp)                   ## 4-byte Folded Reload
	jne	LBB0_14
LBB0_17:                                ##   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	cmpl	$0, -48(%rbp)                   ## 4-byte Folded Reload
	je	LBB0_18
## %bb.19:                              ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$654311424, %r13d               ## imm = 0x27000000
	setne	%al
	cmpb	$92, %dil
	sete	%cl
	orb	%al, %cl
	cmpl	$167772160, %r13d               ## imm = 0xA000000
	setne	%al
	andb	%cl, %al
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	xorl	%r14d, %r14d
	jmp	LBB0_20
LBB0_14:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$570425344, %r13d               ## imm = 0x22000000
	sete	%al
	cmpb	$92, %dil
	setne	%cl
	cmpl	$167772160, %r13d               ## imm = 0xA000000
	je	LBB0_15
## %bb.16:                              ##   in Loop: Header=BB0_2 Depth=1
	andb	%al, %cl
	je	LBB0_17
LBB0_15:                                ##   in Loop: Header=BB0_2 Depth=1
	xorl	%r14d, %r14d
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
	jmp	LBB0_20
LBB0_22:
	testl	%ebx, %ebx
	jne	LBB0_26
## %bb.23:
	testl	%r14d, %r14d
	jne	LBB0_26
## %bb.24:
	cmpb	$-1, %dil
	je	LBB0_26
## %bb.25:
	movsbl	%dil, %edi
	callq	_putchar
LBB0_26:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
