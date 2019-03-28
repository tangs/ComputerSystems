	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_cread                  ## -- Begin function cread
	.p2align	4, 0x90
_cread:                                 ## @cread
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testq	%rdi, %rdi
	je	LBB0_1
## %bb.2:
	movq	(%rdi), %rax
	popq	%rbp
	retq
LBB0_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
