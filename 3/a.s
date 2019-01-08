	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	_fun                    ## -- Begin function fun
	.p2align	4, 0x90
_fun:                                   ## @fun
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(%rdi,%rsi,4), %rax
	leaq	(%rdx,%rdx,2), %rcx
	leaq	(%rax,%rcx,4), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_fun2                   ## -- Begin function fun2
	.p2align	4, 0x90
_fun2:                                  ## @fun2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
