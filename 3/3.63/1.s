	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_func                   ## -- Begin function func
	.p2align	4, 0x90
_func:                                  ## @func
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	shlq	$5, %rax
	subq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func1                  ## -- Begin function func1
	.p2align	4, 0x90
_func1:                                 ## @func1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	sarq	$63, %rax
	shrq	$59, %rax
	leaq	(%rax,%rdi), %rax
	sarq	$5, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
