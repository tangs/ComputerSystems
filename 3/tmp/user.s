.section	__TEXT,__text,regular,pure_instructions
.build_version macos, 10, 14
	.globl	_func                   ## -- Begin function func
	.p2align	4, 0x90
_func:                                  ## @func
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	movl    (%rdi), %eax
    addl    4(%rdi), %eax
    cltq
    leaq    8(%rdi, %rax, 4), %rax
    movq    %rax, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
