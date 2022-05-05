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
	je	LBB0_33
## %bb.1:
	movb	$-1, %r12b
	movl	$0, -56(%rbp)                   ## 4-byte Folded Spill
	movl	$0, -52(%rbp)                   ## 4-byte Folded Spill
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
	xorl	%ebx, %ebx
LBB0_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	%ebx, -60(%rbp)                 ## 4-byte Spill
	movl	%r12d, %r13d
	movl	%eax, %r12d
	xorl	%ebx, %ebx
	jmp	LBB0_3
	.p2align	4, 0x90
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	movb	$-1, %r14b
	cmpb	$-1, %r13b
	jne	LBB0_7
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=2
	xorl	%ebx, %ebx
	cmpl	$167772160, %r15d               ## imm = 0xA000000
	setne	%bl
	callq	_getchar
	movl	%eax, %r12d
	movl	%eax, %r15d
	shll	$24, %r15d
	movl	%r14d, %r13d
	cmpl	$-16777216, %r15d               ## imm = 0xFF000000
	je	LBB0_31
LBB0_3:                                 ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsbl	%r13b, %edi
	cmpb	$10, %dil
	je	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	cmpb	$-1, %r13b
	jne	LBB0_8
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=2
	cmpl	$587202560, %r15d               ## imm = 0x23000000
	setne	%al
	orb	-56(%rbp), %al                  ## 1-byte Folded Reload
	testb	$1, %al
	je	LBB0_6
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=2
	testl	%ebx, %ebx
	je	LBB0_11
## %bb.9:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	%r13d, %r14d
	jmp	LBB0_10
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	callq	_putchar
	jmp	LBB0_10
	.p2align	4, 0x90
LBB0_11:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$704643072, %r15d               ## imm = 0x2A000000
	movl	-60(%rbp), %esi                 ## 4-byte Reload
	movl	%esi, %ebx
	movl	$1, %edx
	cmovel	%edx, %ebx
	cmpb	$47, %r13b
	sete	%al
	cmovnel	%esi, %ebx
	movl	-48(%rbp), %ecx                 ## 4-byte Reload
	orl	-52(%rbp), %ecx                 ## 4-byte Folded Reload
	sete	%r14b
	cmovnel	%esi, %ebx
	andb	%r14b, %al
	cmpl	$788529152, %r15d               ## imm = 0x2F000000
	sete	%cl
	testb	%cl, %al
	cmovnel	%esi, %ebx
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	cmovnel	%edx, %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	cmpb	$-1, %r13b
	je	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_2 Depth=1
	callq	_putchar
LBB0_13:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	%ebx, %eax
	orl	-44(%rbp), %eax                 ## 4-byte Folded Reload
	je	LBB0_18
## %bb.14:                              ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$788529152, %r15d               ## imm = 0x2F000000
	jne	LBB0_17
## %bb.15:                              ##   in Loop: Header=BB0_2 Depth=1
	cmpb	$42, %r13b
	jne	LBB0_17
## %bb.16:                              ##   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	jmp	LBB0_29
LBB0_18:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$570425344, %r15d               ## imm = 0x22000000
	sete	%al
	testb	%r14b, %al
	je	LBB0_20
## %bb.19:                              ##   in Loop: Header=BB0_2 Depth=1
	movl	$1, -48(%rbp)                   ## 4-byte Folded Spill
	xorl	%ebx, %ebx
LBB0_27:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
	movl	$0, -52(%rbp)                   ## 4-byte Folded Spill
	jmp	LBB0_29
LBB0_17:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$167772160, %r15d               ## imm = 0xA000000
	movl	$0, %eax
	movl	-44(%rbp), %ecx                 ## 4-byte Reload
	cmovel	%eax, %ecx
	movl	%ecx, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB0_29
LBB0_20:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$654311424, %r15d               ## imm = 0x27000000
	sete	%al
	xorl	%ebx, %ebx
	testb	%r14b, %al
	je	LBB0_22
## %bb.21:                              ##   in Loop: Header=BB0_2 Depth=1
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	movl	$1, -52(%rbp)                   ## 4-byte Folded Spill
	jmp	LBB0_29
LBB0_22:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, -48(%rbp)                   ## 4-byte Folded Reload
	jne	LBB0_23
LBB0_26:                                ##   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	cmpl	$0, -52(%rbp)                   ## 4-byte Folded Reload
	je	LBB0_27
## %bb.28:                              ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$654311424, %r15d               ## imm = 0x27000000
	setne	%al
	cmpb	$92, %r13b
	sete	%cl
	orb	%al, %cl
	cmpl	$167772160, %r15d               ## imm = 0xA000000
	setne	%al
	andb	%cl, %al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)                 ## 4-byte Spill
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
	jmp	LBB0_29
LBB0_23:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$570425344, %r15d               ## imm = 0x22000000
	sete	%al
	cmpb	$92, %r13b
	setne	%cl
	cmpl	$167772160, %r15d               ## imm = 0xA000000
	je	LBB0_24
## %bb.25:                              ##   in Loop: Header=BB0_2 Depth=1
	andb	%cl, %al
	je	LBB0_26
LBB0_24:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	.p2align	4, 0x90
LBB0_29:                                ##   in Loop: Header=BB0_2 Depth=1
	testl	%ebx, %ebx
	setne	%al
	movl	%eax, -56(%rbp)                 ## 4-byte Spill
	callq	_getchar
	movl	%eax, %r15d
	shll	$24, %r15d
	cmpl	$-16777216, %r15d               ## imm = 0xFF000000
	jne	LBB0_2
## %bb.30:
	movl	%r12d, %r14d
LBB0_31:
	cmpb	$-1, %r14b
	je	LBB0_33
## %bb.32:
	movsbl	%r14b, %edi
	callq	_putchar
LBB0_33:
	xorl	%eax, %eax
	addq	$24, %rsp
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
