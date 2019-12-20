	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_new_vec                ## -- Begin function new_vec
	.p2align	4, 0x90
_new_vec:                               ## @new_vec
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	movl	$16, %edi
	callq	_malloc
	testq	%rax, %rax
	je	LBB0_6
## %bb.1:
	movq	%rax, %rbx
	movq	%r14, (%rax)
	testq	%r14, %r14
	jle	LBB0_2
## %bb.4:
	movl	$8, %esi
	movq	%r14, %rdi
	callq	_calloc
	testq	%rax, %rax
	jne	LBB0_3
## %bb.5:
	movq	%rbx, %rdi
	callq	_free
LBB0_6:
	xorl	%ebx, %ebx
	jmp	LBB0_7
LBB0_2:
	xorl	%eax, %eax
LBB0_3:
	movq	%rax, 8(%rbx)
LBB0_7:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_vec_element        ## -- Begin function get_vec_element
	.p2align	4, 0x90
_get_vec_element:                       ## @get_vec_element
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	testq	%rsi, %rsi
	js	LBB1_3
## %bb.1:
	cmpq	%rsi, (%rdi)
	jle	LBB1_3
## %bb.2:
	movq	8(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	movq	%rax, (%rdx)
	movl	$1, %eax
LBB1_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_vec_length             ## -- Begin function vec_length
	.p2align	4, 0x90
_vec_length:                            ## @vec_length
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function combine1
LCPI3_0:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_combine1
	.p2align	4, 0x90
_combine1:                              ## @combine1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$4607182418800017408, %rax ## imm = 0x3FF0000000000000
	movq	%rax, (%rsi)
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	jle	LBB3_6
## %bb.1:
	movq	8(%rdi), %rcx
	leaq	-1(%rdx), %rdi
	movl	%edx, %eax
	andl	$3, %eax
	cmpq	$3, %rdi
	jae	LBB3_7
## %bb.2:
	movsd	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	xorl	%edi, %edi
	testq	%rax, %rax
	jne	LBB3_4
	jmp	LBB3_6
LBB3_7:
	subq	%rax, %rdx
	movsd	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB3_8:                                 ## =>This Inner Loop Header: Depth=1
	mulsd	(%rcx,%rdi,8), %xmm0
	movsd	%xmm0, (%rsi)
	mulsd	8(%rcx,%rdi,8), %xmm0
	movsd	%xmm0, (%rsi)
	mulsd	16(%rcx,%rdi,8), %xmm0
	movsd	%xmm0, (%rsi)
	mulsd	24(%rcx,%rdi,8), %xmm0
	movsd	%xmm0, (%rsi)
	addq	$4, %rdi
	cmpq	%rdi, %rdx
	jne	LBB3_8
## %bb.3:
	testq	%rax, %rax
	je	LBB3_6
LBB3_4:
	leaq	(%rcx,%rdi,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB3_5:                                 ## =>This Inner Loop Header: Depth=1
	mulsd	(%rcx,%rdx,8), %xmm0
	movsd	%xmm0, (%rsi)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	LBB3_5
LBB3_6:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function combine2
LCPI4_0:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_combine2
	.p2align	4, 0x90
_combine2:                              ## @combine2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$4607182418800017408, %rax ## imm = 0x3FF0000000000000
	movq	%rax, (%rsi)
	movq	(%rdi), %r8
	testq	%r8, %r8
	jle	LBB4_6
## %bb.1:
	movq	8(%rdi), %rax
	leaq	-1(%r8), %rdx
	movl	%r8d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rdx
	jae	LBB4_7
## %bb.2:
	movsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	testq	%rcx, %rcx
	jne	LBB4_4
	jmp	LBB4_6
LBB4_7:
	movq	%rcx, %rdx
	subq	%r8, %rdx
	movsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	.p2align	4, 0x90
LBB4_8:                                 ## =>This Inner Loop Header: Depth=1
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rsi)
	mulsd	8(%rax), %xmm0
	movsd	%xmm0, (%rsi)
	mulsd	16(%rax), %xmm0
	movsd	%xmm0, (%rsi)
	mulsd	24(%rax), %xmm0
	movsd	%xmm0, (%rsi)
	addq	$32, %rax
	addq	$4, %rdx
	jne	LBB4_8
## %bb.3:
	testq	%rcx, %rcx
	je	LBB4_6
LBB4_4:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB4_5:                                 ## =>This Inner Loop Header: Depth=1
	mulsd	(%rax,%rdx,8), %xmm0
	movsd	%xmm0, (%rsi)
	incq	%rdx
	cmpq	%rdx, %rcx
	jne	LBB4_5
LBB4_6:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function combine4
LCPI5_0:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_combine4
	.p2align	4, 0x90
_combine4:                              ## @combine4
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	jle	LBB5_1
## %bb.2:
	movq	8(%rdi), %rcx
	leaq	-1(%rdx), %rdi
	movl	%edx, %eax
	andl	$7, %eax
	cmpq	$7, %rdi
	jae	LBB5_8
## %bb.3:
	movsd	LCPI5_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	xorl	%edi, %edi
	testq	%rax, %rax
	jne	LBB5_5
	jmp	LBB5_7
LBB5_1:
	movsd	LCPI5_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	jmp	LBB5_7
LBB5_8:
	subq	%rax, %rdx
	movsd	LCPI5_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB5_9:                                 ## =>This Inner Loop Header: Depth=1
	mulsd	(%rcx,%rdi,8), %xmm0
	mulsd	8(%rcx,%rdi,8), %xmm0
	mulsd	16(%rcx,%rdi,8), %xmm0
	mulsd	24(%rcx,%rdi,8), %xmm0
	mulsd	32(%rcx,%rdi,8), %xmm0
	mulsd	40(%rcx,%rdi,8), %xmm0
	mulsd	48(%rcx,%rdi,8), %xmm0
	mulsd	56(%rcx,%rdi,8), %xmm0
	addq	$8, %rdi
	cmpq	%rdi, %rdx
	jne	LBB5_9
## %bb.4:
	testq	%rax, %rax
	je	LBB5_7
LBB5_5:
	leaq	(%rcx,%rdi,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB5_6:                                 ## =>This Inner Loop Header: Depth=1
	mulsd	(%rcx,%rdx,8), %xmm0
	incq	%rdx
	cmpq	%rdx, %rax
	jne	LBB5_6
LBB5_7:
	movsd	%xmm0, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
