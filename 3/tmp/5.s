	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	_float_mov              ## -- Begin function float_mov
	.p2align	4, 0x90
_float_mov:                             ## @float_mov
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovss	(%rdi), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	vmovss	%xmm0, (%rsi)
	vmovaps	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_convert              ## -- Begin function convert
	.p2align	4, 0x90
_convert:                             ## @convert
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vcvttss2si	%xmm0, %eax
	vcvtsi2ss	%edi, %xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
