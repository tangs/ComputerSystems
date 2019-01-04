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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	addl	-8(%rbp), %esi
	movl	%esi, %eax
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
	subq	$16, %rsp
	movl	$3, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	_fun
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -16(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
