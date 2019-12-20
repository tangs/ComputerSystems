	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_fun1                   ## -- Begin function fun1
	.p2align	4, 0x90
_fun1:                                  ## @fun1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	_cc(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, _cc(%rip)
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_fun2                   ## -- Begin function fun2
	.p2align	4, 0x90
_fun2:                                  ## @fun2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	_cc(%rip), %eax
	leal	3(%rax), %ecx
	movl	%ecx, _cc(%rip)
	leal	3(%rax,%rax,2), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_fun3                   ## -- Begin function fun3
	.p2align	4, 0x90
_fun3:                                  ## @fun3
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	_cc(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, _cc(%rip)
	leal	(%rax,%rax,2), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_cc                     ## @cc
.zerofill __DATA,__common,_cc,4,2

.subsections_via_symbols
