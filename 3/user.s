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
	.globl	_remdiv                   ## -- Begin function remdiv
	.p2align	4, 0x90
_remdiv:                                  ## @remdiv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdx, %r8
	movq	%rdi, %rax
	cqto
	idivq	%rsi
	movq	%rax, (%r8)
	movq	%rdx, (%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_uremdiv                   ## -- Begin function uremdiv
	.p2align	4, 0x90
_uremdiv:                                  ## @uremdiv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdx, %r8
	movq	%rdi, %rax
	xor		%rdx, %rdx
	divq		%rsi
	movq	%rax, (%r8)
	movq	%rdx, (%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
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
	.globl	_func_paras                   ## -- Begin function func_paras
	.p2align	4, 0x90
_func_paras:                                  ## @func_paras
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	movq 	%rdi, %rax
	addq 	%rsi, %rax
	addq 	%rdx, %rax
	addq 	%rcx, %rax
	addq 	%r8, %rax
	addq 	%r9, %rax
	addq	16(%rsp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
