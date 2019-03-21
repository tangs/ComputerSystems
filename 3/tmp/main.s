	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movabsq	$4294967296, %rax       ## imm = 0x100000000
	movq	%rax, -32(%rbp)
	movabsq	$47244640266, %rax      ## imm = 0xB0000000A
	movq	%rax, -24(%rbp)
	leaq	-20(%rbp), %rbx
	movq	$0, -16(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_func
	movq	-16(%rbp), %rdx
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	_printf
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%p %p\n"


.subsections_via_symbols
