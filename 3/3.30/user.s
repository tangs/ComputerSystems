.section	__TEXT,__text,regular,pure_instructions
.build_version macos, 10, 14
.globl	_fact_switch                   ## -- Begin function fact_switch
.p2align	4, 0x90
_fact_switch:                                  ## @fact_switch
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq 	$1, %rdi
	cmpq	$8, %rdi
	ja		.L2
	#jmp		*.L4(,%rdi,8)
.L5:
	movq	$5, %rax
	jmp		.L2
.L6:
	movq	$6, %rax
	jmp		.L2
.L7:
	movq	$7, %rax
	jmp		.L2
.L8:
	movq	$8, %rax
	jmp		.L2
.L9:
	movq	$9, %rax
	jmp		.L2
.L2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.align 8
.L4:
	.quad	.L9			# -1
	.quad	.L5			# 0
	.quad	.L6			# 1
	.quad	.L7			# 2
	.quad	.L2
	.quad	.L7			# 4
	.quad	.L8			# 5
	.quad	.L2
	.quad	.L5			# 7
.subsections_via_symbols
