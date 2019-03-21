	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	_get                    ## -- Begin function get
	.p2align	4, 0x90
_get:                                   ## @get
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rax
	movb	(%rax), %al
	movb	%al, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
