	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_decode                ## -- Begin function decode
	.p2align	4, 0x90
_decode:                               ## @decode
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
    subq    %rdx, %rsi
    imulq   %rsi, %rdi
    movq    %rsi, %rax
    salq    $63, %rax
    sarq    $63, %rax
    xorq    %rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
