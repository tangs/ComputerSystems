	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_decode2                ## -- Begin function decode2
	.p2align	4, 0x90
_decode2:                               ## @decode2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	%rdx, %rsi
	imulq	%rsi, %rdi
	andl	$1, %esi
	negq	%rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
