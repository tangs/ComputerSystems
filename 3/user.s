.section	__TEXT,__text,regular,pure_instructions
.build_version macos, 10, 14
	.globl	_scale                   ## -- Begin function scale
	.p2align	4, 0x90
_scale:                                  ## @scale
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(%rdi, %rsi, 4), %rax
	leaq	(%rax, %rdx, 4), %rax
	leaq	(%rax, %rdx, 8), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
