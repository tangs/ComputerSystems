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
	movq	$0, %rax
	ja		.L2
	#jmp		*LJTI0_0(,%rdi,8)
	leaq	LJTI0_0(%rip), %rcx
	movq	(%rcx,%rdi,8), %rdx
	addq	%rcx, %rdx
	#movq	(,%rdi,8), %rdx
	#addq	%rcx, %rdx
	#addq	%rcx, %rdx
	jmpq	*%rdx
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
	.p2align	4, 0x90
	.data_region jt32
L0_0_set_0 = .L5-LJTI0_0
L0_0_set_1 = .L5-LJTI0_0
L0_0_set_2 = .L5-LJTI0_0
L0_0_set_3 = .L2-LJTI0_0
L0_0_set_4 = .L6-LJTI0_0
L0_0_set_5 = .L6-LJTI0_0
L0_0_set_6 = .L7-LJTI0_0
L0_0_set_7 = .L2-LJTI0_0
L0_0_set_8 = .L8-LJTI0_0
LJTI0_0:
	.quad	L0_0_set_0			# -1
	.quad	L0_0_set_1			# 0
	.quad	L0_0_set_2			# 1
	.quad	L0_0_set_3			# 2
	.quad	L0_0_set_4
	.quad	L0_0_set_5			# 4
	.quad	L0_0_set_6			# 5
	.quad	L0_0_set_7
	.quad	L0_0_set_8			# 7
	.end_data_region
                                        ## -- End function
.subsections_via_symbols
