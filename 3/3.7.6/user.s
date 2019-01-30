.section	__TEXT,__text,regular,pure_instructions
.build_version macos, 10, 14
.globl	_rfact                   ## -- Begin function rfact
.p2align	4, 0x90
_rfact:                                  ## @rfact
	.cfi_startproc
    cmpq    $1, %rdi
    jg      .L1
    movq    $1, %rax
    retq
.L1:
    pushq   %rbp
    movq    %rdi, %rbp
    decq    %rdi
    callq   _rfact
    imulq   %rbp, %rax
    popq    %rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
