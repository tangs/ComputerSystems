	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	_decode1                ## -- Begin function decode1
	.p2align	4, 0x90
_decode1:                               ## @decode1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	(%rsi), %rcx
	movq	(%rdx), %r8
	movq	%rax, (%rsi)
	movq	%rcx, (%rdx)
	movq	%r8, (%rdi)
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
	subq	$16, %rsp
	leaq	-8(%rbp), %rdx
	movl	$2, %edi
	movl	$3, %esi
	callq	_multstore
	movq	-8(%rbp), %rsi
	leaq	L_.str(%rip), %rdi
	callq	_printf
	movq	$0x1122334455667788, %rsi
	leaq	L2_.str(%rip), %rdi
	callq	_printf
	movb	$0xFF, %r8b
	movb	%r8b, %sil
	leaq	L2_.str(%rip), %rdi
	callq	_printf
	movq	$1, %rdi
	movq	$2, %rsi
	movq	$3, %rdx
	callq	_scale
	movq	%rax, %rsi
	leaq	L3_.str(%rip), %rdi
	callq	_printf
	xorl	%eax, %eax
	addq	$16, %rsp
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
	.asciz	"2 * 3 --> %ld\n"

L2_.str:                                 ## @.str
	.asciz	"%llx\n"

L3_.str:                                 ## @.str
	.asciz	"%ld\n"


.subsections_via_symbols
