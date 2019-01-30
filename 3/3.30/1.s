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
                                        ## kill: def %edi killed %edi def %rdi
	movl	$1, %eax
	addl	$-10, %edi
	cmpl	$4, %edi
	ja	LBB0_6
## %bb.1:
	leaq	LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rdi,4), %rdx
	addq	%rcx, %rdx
	jmpq	*%rdx
LBB0_2:
	xorl	%eax, %eax
	callq	_func2
	leaq	(%rax,%rax,2), %rax
	popq	%rbp
	retq
LBB0_4:
	xorl	%eax, %eax
	callq	_func3
	leaq	3500000(%rax,%rax,4), %rax
	popq	%rbp
	retq
LBB0_5:
	movabsq	$45451321311, %rax      ## imm = 0xA951C1FDF
LBB0_6:
	popq	%rbp
	retq
LBB0_3:
	xorl	%eax, %eax
	callq	_func1
	shlq	$2, %rax
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L0_0_set_2 = LBB0_2-LJTI0_0
L0_0_set_6 = LBB0_6-LJTI0_0
L0_0_set_4 = LBB0_4-LJTI0_0
L0_0_set_5 = LBB0_5-LJTI0_0
L0_0_set_3 = LBB0_3-LJTI0_0
LJTI0_0:
	.long	L0_0_set_2
	.long	L0_0_set_6
	.long	L0_0_set_4
	.long	L0_0_set_5
	.long	L0_0_set_3
	.end_data_region
                                        ## -- End function

.subsections_via_symbols
