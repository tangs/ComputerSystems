.section	__TEXT,__text,regular,pure_instructions
.build_version macos, 10, 14
.globl	_fact_for                   ## -- Begin function fact_for
.p2align	4, 0x90
_fact_for:                                  ## @fact_for
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax		#result = 1
	movl	$2, %edx		#i = 2
	cmpq	%rdi, %rdx		#compare i : n
	jg		.done
.loop:
	imulq	%rdx, %rax		#result *= i
	incq	%rdx			#i++
	cmpq	%rdi, %rdx		#compare i : n
	jle		.loop
.done:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
