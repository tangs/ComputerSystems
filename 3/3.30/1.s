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
	decl	%edi
	cmpl	$3, %edi
	ja	LBB0_2
## %bb.1:
	movslq	%edi, %rax
	leaq	l_switch.table.func(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	popq	%rbp
	retq
LBB0_2:
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @switch.table.func
l_switch.table.func:
	.quad	3                       ## 0x3
	.quad	3500005                 ## 0x3567e5
	.quad	45451321311             ## 0xa951c1fdf
	.quad	4                       ## 0x4


.subsections_via_symbols
