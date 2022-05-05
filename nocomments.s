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
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movb	$-1, -33(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_getchar
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -34(%rbp)
	movsbl	%al, %eax
	cmpl	$-1, %eax
	je	LBB0_47
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	LBB0_7
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jne	LBB0_7
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -24(%rbp)
	jmp	LBB0_13
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	LBB0_12
## %bb.8:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jne	LBB0_12
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$42, %eax
	jne	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -20(%rbp)
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -20(%rbp)
	jne	LBB0_15
## %bb.14:                              ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -24(%rbp)
	je	LBB0_22
LBB0_15:                                ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$42, %eax
	jne	LBB0_18
## %bb.16:                              ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -20(%rbp)
	movb	$-1, -34(%rbp)
	jmp	LBB0_21
LBB0_18:                                ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$10, %eax
	jne	LBB0_20
## %bb.19:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -24(%rbp)
LBB0_20:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_21
LBB0_21:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_46
LBB0_22:                                ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$-1, %eax
	je	LBB0_24
## %bb.23:                              ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %edi
	callq	_putchar
LBB0_24:                                ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	LBB0_28
## %bb.25:                              ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jne	LBB0_28
## %bb.26:                              ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$34, %eax
	jne	LBB0_28
## %bb.27:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -28(%rbp)
	jmp	LBB0_45
LBB0_28:                                ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	LBB0_32
## %bb.29:                              ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jne	LBB0_32
## %bb.30:                              ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$39, %eax
	jne	LBB0_32
## %bb.31:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -32(%rbp)
	jmp	LBB0_44
LBB0_32:                                ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	LBB0_37
## %bb.33:                              ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$92, %eax
	je	LBB0_35
## %bb.34:                              ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$34, %eax
	je	LBB0_36
LBB0_35:                                ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$10, %eax
	jne	LBB0_37
LBB0_36:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -28(%rbp)
	jmp	LBB0_43
LBB0_37:                                ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	je	LBB0_42
## %bb.38:                              ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$92, %eax
	je	LBB0_40
## %bb.39:                              ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$39, %eax
	je	LBB0_41
LBB0_40:                                ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$10, %eax
	jne	LBB0_42
LBB0_41:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -32(%rbp)
LBB0_42:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_43
LBB0_43:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_44
LBB0_44:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_45
LBB0_45:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_46
LBB0_46:                                ##   in Loop: Header=BB0_1 Depth=1
	movb	-34(%rbp), %al
	movb	%al, -33(%rbp)
	jmp	LBB0_1
LBB0_47:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
