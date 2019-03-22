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
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rsp, %rcx
	leaq	15(,%rdi,8), %rax
	andq	$-16, %rax
	subq	%rax, %rcx
	movq	%rcx, %rsp
	xorl	%eax, %eax
	testq	%rdi, %rdi
	jle	LBB0_1
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	addq	(%rcx), %rax
	addq	$8, %rcx
	decq	%rdi
	jne	LBB0_3
LBB0_1:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	cmpq	-8(%rbp), %rcx
	jne	LBB0_4
## %bb.2:
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB0_4:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
