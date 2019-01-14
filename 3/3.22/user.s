.section	__TEXT,__text,regular,pure_instructions
.build_version macos, 10, 14
.globl	_fact_do                   ## -- Begin function fact_do
.p2align	4, 0x90
_fact_do:                                  ## @fact_do
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$1, %rax
.L1:
	imulq	%rdi, %rax
	decq	%rdi
	cmpq	$1, %rdi
	jg		.L1
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.globl	_is_mut_overflow                   ## -- Begin function is_mut_overflow
.p2align	4, 0x90
_is_mut_overflow:                                  ## @is_mut_overflow
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, %r8
	testq	%rdi, %rdi
	je		.L2
	testq	%rsi, %rsi
	je		.L2
	movq	%rdi, %rax
	imulq	%rsi, %rax
	cqto
	idivq 	%rdi
	cmpq	%rax, %rsi
	jne		.L2
	movq	$1, %r8
.L2:
	movq	%r8, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.globl	_get_max                   ## -- Begin function get_max
.p2align	4, 0x90
_get_max:                                  ## @get_max
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$1, %rdi
	movq	$1, %rsi
.L3:
	movq	%rdi, %rax
	imulq	%rsi, %rax

	movq	%rax, %rsi
	incq	%rdi
	callq	_is_mut_overflow
	testq	%rax, %rax
	jne		.L3
	leaq	-1(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
