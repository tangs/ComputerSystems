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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_fun                    ## -- Begin function fun
	.p2align	4, 0x90
_fun:                                   ## @fun
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, (%rdi)
	jle	LBB1_2
## %bb.1:
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	jmp	LBB1_3
LBB1_2:
	movq	-8(%rbp), %rax
	movl	$6, (%rax)
LBB1_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_uchar2long             ## -- Begin function uchar2long
	.p2align	4, 0x90
_uchar2long:                            ## @uchar2long
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movzbl	(%rsi), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	%rsi, (%rdi)
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
	subq	$96, %rsp
	leaq	-5(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movl	$0, -4(%rbp)
	movb	$0, -5(%rbp)
	movq	$0, -16(%rbp)
	callq	_uchar2long
	leaq	L_.str(%rip), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	leaq	-5(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movb	$-128, -5(%rbp)
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	callq	_uchar2long
	leaq	L_.str(%rip), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	leaq	-5(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movb	$-1, -5(%rbp)
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	callq	_uchar2long
	leaq	L_.str(%rip), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	$2, %ecx
	movl	%ecx, %edi
	movl	$3, %ecx
	movl	%ecx, %esi
	leaq	-32(%rbp), %rdx
	movq	$0, -24(%rbp)
	movq	-24(%rbp), %r8
	movq	%r8, -32(%rbp)
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	callq	_multstore
	leaq	L_.str.1(%rip), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	$20, -40(%rbp)
	movq	$7, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	callq	_remdiv
	leaq	L_.str.2(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	_printf
	xorl	%r9d, %r9d
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	movl	%r9d, %eax
	addq	$96, %rsp
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	imulq	-16(%rbp), %rsi
	movq	%rsi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%ld\n"

L_.str.1:                               ## @.str.1
	.asciz	"2 * 3 --> %ld\n"

L_.str.2:                               ## @.str.2
	.asciz	"%ld %ld\n"


.subsections_via_symbols
