	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
<<<<<<< HEAD
	.globl	_uchar2long             ## -- Begin function uchar2long
	.p2align	4, 0x90
_uchar2long:                            ## @uchar2long
=======
	.globl	_decode1                ## -- Begin function decode1
	.p2align	4, 0x90
_decode1:                               ## @decode1
>>>>>>> b69938cc20794fba52f50db8da4fa066832f9437
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
<<<<<<< HEAD
	movzbl	(%rdi), %eax
	movq	%rax, (%rsi)
=======
	movq	(%rdi), %rax
	movq	(%rsi), %rcx
	movq	(%rdx), %r8
	movq	%rax, (%rsi)
	movq	%rcx, (%rdx)
	movq	%r8, (%rdi)
>>>>>>> b69938cc20794fba52f50db8da4fa066832f9437
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
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
<<<<<<< HEAD
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movb	$0, -25(%rbp)
	movq	$0, -40(%rbp)
	leaq	-25(%rbp), %rbx
	leaq	-40(%rbp), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_uchar2long
	movq	-40(%rbp), %rsi
	leaq	L_.str(%rip), %r15
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	_printf
	movb	$-128, -25(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_uchar2long
	movq	-40(%rbp), %rsi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	_printf
	movb	$-1, -25(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_uchar2long
	movq	-40(%rbp), %rsi
=======
	subq	$16, %rsp
	movq	$0, %rbp
	leaq	-8(%rbp), %rdx
	movl	$2, %edi
	movl	$3, %esi
	callq	_multstore
	movq	-8(%rbp), %rsi
	leaq	L_.str(%rip), %rdi
>>>>>>> b69938cc20794fba52f50db8da4fa066832f9437
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	_printf
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mult2                  ## -- Begin function mult2
	.p2align	4, 0x90
_mult2:                                 ## @mult2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	imulq	%rsi, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%ld\n"


.subsections_via_symbols
