	.file	"optional_trait_methods.de65403903eb1c49-cgu.0"
	.section	.text.<[u8]>::strip_prefix::<[u8; 2]>,"ax",@progbits
	.globl	<[u8]>::strip_prefix::<[u8; 2]>
	.type	<[u8]>::strip_prefix::<[u8; 2]>,@function
<[u8]>::strip_prefix::<[u8; 2]>:
	.cfi_startproc
	cmpq	$2, %rsi
	jb	.LBB0_1
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	addq	$-2, %rdx
	movzwl	(%rdi), %esi
	addq	$2, %rdi
	xorl	%eax, %eax
	cmpw	(%rcx), %si
	cmoveq	%rdi, %rax
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	<[u8]>::strip_prefix::<[u8; 2]>, .Lfunc_end0-<[u8]>::strip_prefix::<[u8; 2]>
	.cfi_endproc

	.section	.text.<[u8]>::strip_prefix::<[u8; 3]>,"ax",@progbits
	.globl	<[u8]>::strip_prefix::<[u8; 3]>
	.type	<[u8]>::strip_prefix::<[u8; 3]>,@function
<[u8]>::strip_prefix::<[u8; 3]>:
	.cfi_startproc
	cmpq	$3, %rsi
	jb	.LBB1_1
	movq	%rdx, %rax
	movq	%rsi, %rdx
	leaq	3(%rdi), %rcx
	addq	$-3, %rdx
	movzwl	(%rdi), %esi
	xorw	(%rax), %si
	movb	2(%rdi), %dil
	xorb	2(%rax), %dil
	movzbl	%dil, %edi
	xorl	%eax, %eax
	orw	%si, %di
	cmoveq	%rcx, %rax
	retq
.LBB1_1:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	<[u8]>::strip_prefix::<[u8; 3]>, .Lfunc_end1-<[u8]>::strip_prefix::<[u8; 3]>
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::parse_command,"ax",@progbits
	.type	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::parse_command,@function
<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::parse_command:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.0(%rip), %rax
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movq	$22, 8(%rcx)
	#APP
	#NO_APP
	cmpq	$1, %rdx
	jne	.LBB2_4
	movzbl	(%r15), %eax
	cmpl	$45, %eax
	je	.LBB2_19
	cmpl	$43, %eax
	jne	.LBB2_7
	movq	$2, (%rbx)
	movb	$0, 8(%rbx)
	jmp	.LBB2_25
.LBB2_4:
	cmpq	$2, %r14
	jne	.LBB2_7
	cmpw	$11563, (%r15)
	jne	.LBB2_7
	movq	$2, (%rbx)
	movb	$2, 8(%rbx)
	jmp	.LBB2_25
.LBB2_7:
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.1(%rip), %rax
	movq	%rax, (%rcx)
	movq	$19, 8(%rcx)
	#APP
	#NO_APP
	cmpq	$2, %r14
	jb	.LBB2_12
	cmpw	$8234, (%r15)
	jne	.LBB2_12
	leaq	-2(%r14), %rsi
	leaq	2(%r15), %rdi
	callq	optional_trait_methods::commands::parse_isize
	testb	$1, %al
	je	.LBB2_12
	movq	$3, (%rbx)
	jmp	.LBB2_11
.LBB2_12:
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.3(%rip), %rax
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movq	$27, 8(%rcx)
	#APP
	#NO_APP
	cmpq	$3, %r14
	jb	.LBB2_16
	movzwl	(%r15), %eax
	xorl	$32298, %eax
	movzbl	2(%r15), %ecx
	xorl	$32, %ecx
	orw	%ax, %cx
	jne	.LBB2_21
	leaq	-3(%r14), %rsi
	leaq	3(%r15), %rdi
	callq	optional_trait_methods::commands::parse_isize
	testb	$1, %al
	je	.LBB2_21
	movq	$4, (%rbx)
	jmp	.LBB2_11
.LBB2_16:
	cmpq	$1, %r14
	jne	.LBB2_20
	cmpb	$112, (%r15)
	jne	.LBB2_24
	movq	$0, (%rbx)
	jmp	.LBB2_25
.LBB2_19:
	movq	$2, (%rbx)
	movb	$1, 8(%rbx)
	jmp	.LBB2_25
.LBB2_20:
	jbe	.LBB2_24
.LBB2_21:
	cmpw	$8307, (%r15)
	jne	.LBB2_24
	addq	$-2, %r14
	addq	$2, %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	optional_trait_methods::commands::parse_isize
	testb	$1, %al
	je	.LBB2_24
	movq	$1, (%rbx)
.LBB2_11:
	movq	%rdx, 8(%rbx)
	jmp	.LBB2_25
.LBB2_24:
	movq	$5, (%rbx)
.LBB2_25:
	movq	%rbx, %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::parse_command, .Lfunc_end2-<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::parse_command
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::handle,"ax",@progbits
	.type	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::handle,@function
<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::handle:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	(%rdx), %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$-1, %rcx
	movq	%rdi, %rbx
	leaq	.LJTI3_0(%rip), %rsi
	movslq	(%rsi,%rcx,4), %rcx
	addq	%rsi, %rcx
	jmpq	*%rcx
.LBB3_1:
	testb	$1, %al
	je	.LBB3_8
	movq	8(%rdx), %rsi
	movq	%r14, %rdi
	callq	*<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state@GOTPCREL(%rip)
	jmp	.LBB3_14
.LBB3_3:
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.8(%rip), %rax
	leaq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	$13, 8(%rcx)
	#APP
	#NO_APP
	movq	8(%rdx), %rdx
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul@GOTPCREL(%rip)
	jmp	.LBB3_10
.LBB3_4:
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.9(%rip), %rax
	leaq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	$21, 8(%rcx)
	#APP
	#NO_APP
	movq	8(%rdx), %rdx
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor@GOTPCREL(%rip)
	jmp	.LBB3_10
.LBB3_5:
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.7(%rip), %rax
	leaq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	$16, 8(%rcx)
	#APP
	#NO_APP
	movzbl	8(%rdx), %eax
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	testl	%eax, %eax
	je	.LBB3_9
	cmpl	$1, %eax
	jne	.LBB3_16
	movq	%r14, %rsi
	callq	*<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec@GOTPCREL(%rip)
	jmp	.LBB3_10
.LBB3_8:
	movq	%r14, %rdi
	callq	*<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state@GOTPCREL(%rip)
	movq	%rax, %rdi
	callq	optional_trait_methods::print_macros::write_isize_line
	jmp	.LBB3_14
.LBB3_9:
	movq	%r14, %rsi
	callq	*<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc@GOTPCREL(%rip)
.LBB3_10:
	cmpb	$0, (%r15)
	je	.LBB3_14
.LBB3_11:
	movq	16(%rsp), %rax
	testq	%rax, %rax
	je	.LBB3_13
.LBB3_12:
	movq	24(%rsp), %rcx
	movq	%rax, 8(%rbx)
	movq	%rcx, 16(%rbx)
.LBB3_22:
	movl	$1, %eax
	jmp	.LBB3_15
.LBB3_13:
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.6(%rip), %rdi
	movl	$16, %esi
	callq	optional_trait_methods::print_macros::write_line
.LBB3_14:
	xorl	%eax, %eax
.LBB3_15:
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB3_16:
	.cfi_def_cfa_offset 64
	movq	%r14, %rsi
	callq	*<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc@GOTPCREL(%rip)
	cmpl	$1, (%r15)
	jne	.LBB3_19
	movq	16(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB3_12
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec@GOTPCREL(%rip)
	cmpb	$0, (%r15)
	jne	.LBB3_11
	jmp	.LBB3_21
.LBB3_19:
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec@GOTPCREL(%rip)
	cmpb	$0, (%r15)
	je	.LBB3_14
	movq	16(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB3_12
.LBB3_21:
	movq	$0, 8(%rbx)
	jmp	.LBB3_22
.Lfunc_end3:
	.size	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::handle, .Lfunc_end3-<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::handle
	.cfi_endproc
	.section	.rodata.<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::handle,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.long	.LBB3_1-.LJTI3_0
	.long	.LBB3_5-.LJTI3_0
	.long	.LBB3_3-.LJTI3_0
	.long	.LBB3_4-.LJTI3_0

	.section	.text.<optional_trait_methods::line_reader::LineReader>::read_line,"ax",@progbits
	.globl	<optional_trait_methods::line_reader::LineReader>::read_line
	.type	<optional_trait_methods::line_reader::LineReader>::read_line,@function
<optional_trait_methods::line_reader::LineReader>::read_line:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	1024(%rdi), %rax
	movq	1032(%rdi), %rcx
	xorl	%r15d, %r15d
	movq	read@GOTPCREL(%rip), %rbp
	xorl	%ebx, %ebx
.LBB4_1:
	cmpq	%rax, %rcx
	jb	.LBB4_4
	movl	$1024, %edx
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	*%rbp
	testq	%rax, %rax
	jle	.LBB4_11
	movq	%rax, 1024(%r13)
	movq	$0, 1032(%r13)
	xorl	%ecx, %ecx
.LBB4_4:
	cmpq	%rcx, %rax
	jb	.LBB4_15
	cmpq	$1024, %rax
	ja	.LBB4_16
	cmpq	%rax, %rcx
	je	.LBB4_1
.LBB4_7:
	movb	(%r13,%rcx), %dl
	incq	%rcx
	movq	%rcx, 1032(%r13)
	cmpb	$10, %dl
	je	.LBB4_12
	cmpq	%r12, %rbx
	jae	.LBB4_10
	movb	%dl, (%r14,%rbx)
	incq	%rbx
.LBB4_10:
	cmpq	%rcx, %rax
	je	.LBB4_1
	jmp	.LBB4_7
.LBB4_11:
	testq	%rbx, %rbx
	je	.LBB4_14
.LBB4_12:
	xorl	%eax, %eax
	cmpq	%r12, %rbx
	cmovaq	%rax, %r14
	movq	%r14, %r15
	jmp	.LBB4_16
.LBB4_14:
	xorl	%r15d, %r15d
.LBB4_15:
.LBB4_16:
	movq	%r15, %rax
	movq	%rbx, %rdx
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	<optional_trait_methods::line_reader::LineReader>::read_line, .Lfunc_end4-<optional_trait_methods::line_reader::LineReader>::read_line
	.cfi_endproc

	.section	.text.optional_trait_methods::print_macros::write_line,"ax",@progbits
	.type	optional_trait_methods::print_macros::write_line,@function
optional_trait_methods::print_macros::write_line:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	optional_trait_methods::print_macros::write_all
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.10(%rip), %rdi
	movl	$1, %esi
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	optional_trait_methods::print_macros::write_all
.Lfunc_end5:
	.size	optional_trait_methods::print_macros::write_line, .Lfunc_end5-optional_trait_methods::print_macros::write_line
	.cfi_endproc

	.section	.text.optional_trait_methods::print_macros::write_isize_line,"ax",@progbits
	.type	optional_trait_methods::print_macros::write_isize_line,@function
optional_trait_methods::print_macros::write_isize_line:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	xorps	%xmm0, %xmm0
	movups	%xmm0, 15(%rsp)
	movq	%rdi, %rcx
	negq	%rcx
	cmovsq	%rdi, %rcx
	movaps	%xmm0, (%rsp)
	movb	$10, 31(%rsp)
	movl	$30, %r8d
	movabsq	$-3689348814741910323, %rsi
.LBB6_1:
	cmpq	$31, %r8
	ja	.LBB6_5
	movq	%rcx, %rax
	mulq	%rsi
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %eax
	movl	%ecx, %r9d
	subl	%eax, %r9d
	orb	$48, %r9b
	movb	%r9b, (%rsp,%r8)
	decq	%r8
	cmpq	$10, %rcx
	movq	%rdx, %rcx
	jae	.LBB6_1
	testq	%rdi, %rdi
	js	.LBB6_7
	incq	%r8
	jmp	.LBB6_9
.LBB6_7:
	cmpq	$31, %r8
	ja	.LBB6_10
	movb	$45, (%rsp,%r8)
.LBB6_9:
	movl	$32, %esi
	subq	%r8, %rsi
	leaq	(%rsp,%r8), %rdi
	callq	optional_trait_methods::print_macros::write_all
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB6_5:
	.cfi_def_cfa_offset 48
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.12(%rip), %rdx
.LBB6_6:
	movl	$32, %esi
	movq	$-1, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB6_10:
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.13(%rip), %rdx
	jmp	.LBB6_6
.Lfunc_end6:
	.size	optional_trait_methods::print_macros::write_isize_line, .Lfunc_end6-optional_trait_methods::print_macros::write_isize_line
	.cfi_endproc

	.section	.text.optional_trait_methods::print_macros::write_all,"ax",@progbits
	.type	optional_trait_methods::print_macros::write_all,@function
optional_trait_methods::print_macros::write_all:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	testq	%rsi, %rsi
	je	.LBB7_5
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	write@GOTPCREL(%rip), %r15
.LBB7_2:
	movl	$1, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%r15
	testq	%rax, %rax
	jle	.LBB7_5
	cmpq	%rax, %rbx
	jb	.LBB7_6
	addq	%rax, %r14
	subq	%rax, %rbx
	jne	.LBB7_2
.LBB7_5:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB7_6:
	.cfi_def_cfa_offset 32
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.14(%rip), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	*core::slice::index::slice_index_fail@GOTPCREL(%rip)
.Lfunc_end7:
	.size	optional_trait_methods::print_macros::write_all, .Lfunc_end7-optional_trait_methods::print_macros::write_all
	.cfi_endproc

	.section	.text.optional_trait_methods::commands::parse_isize,"ax",@progbits
	.type	optional_trait_methods::commands::parse_isize,@function
optional_trait_methods::commands::parse_isize:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB8_1
	movzbl	(%rdi), %eax
	cmpl	$45, %eax
	je	.LBB8_5
	xorl	%ecx, %ecx
	cmpl	$43, %eax
	je	.LBB8_7
	jmp	.LBB8_9
.LBB8_5:
	movb	$1, %cl
.LBB8_7:
	decq	%rsi
	je	.LBB8_1
	incq	%rdi
.LBB8_9:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
.LBB8_10:
	movb	(%rdi,%r8), %r9b
	addb	$-48, %r9b
	cmpb	$10, %r9b
	jae	.LBB8_2
	imulq	$10, %rdx, %rdx
	jo	.LBB8_2
	movzbl	%r9b, %r9d
	testb	%cl, %cl
	je	.LBB8_13
	subq	%r9, %rdx
	jo	.LBB8_2
	jmp	.LBB8_15
.LBB8_13:
	addq	%r9, %rdx
	jo	.LBB8_2
.LBB8_15:
	incq	%r8
	cmpq	%r8, %rsi
	jne	.LBB8_10
	movl	$1, %eax
	retq
.LBB8_1:
	xorl	%eax, %eax
.LBB8_2:
	retq
.Lfunc_end8:
	.size	optional_trait_methods::commands::parse_isize, .Lfunc_end8-optional_trait_methods::commands::parse_isize
	.cfi_endproc

	.section	.text.<optional_trait_methods::line_reader::LineReader as core::default::Default>::default,"ax",@progbits
	.globl	<optional_trait_methods::line_reader::LineReader as core::default::Default>::default
	.type	<optional_trait_methods::line_reader::LineReader as core::default::Default>::default,@function
<optional_trait_methods::line_reader::LineReader as core::default::Default>::default:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1040, %edx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	<optional_trait_methods::line_reader::LineReader as core::default::Default>::default, .Lfunc_end9-<optional_trait_methods::line_reader::LineReader as core::default::Default>::default
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	.type	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor,@function
<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor:
	.cfi_startproc
	movq	%rdi, %rax
	movq	%rdx, 8(%rsi)
	movq	$0, (%rdi)
	retq
.Lfunc_end10:
	.size	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor, .Lfunc_end10-<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	.type	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec,@function
<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec:
	.cfi_startproc
	decq	(%rsi)
	movq	%rdi, %rax
	movq	$0, (%rdi)
	retq
.Lfunc_end11:
	.size	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec, .Lfunc_end11-<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
	.type	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc,@function
<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc:
	.cfi_startproc
	incq	(%rsi)
	movq	%rdi, %rax
	movq	$0, (%rdi)
	retq
.Lfunc_end12:
	.size	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc, .Lfunc_end12-<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul
	.type	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul,@function
<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul:
	.cfi_startproc
	movq	%rdi, %rax
	cmpq	$7, %rdx
	jne	.LBB13_2
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.15(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	$28, 16(%rax)
	movl	$1, %ecx
	jmp	.LBB13_3
.LBB13_2:
	imulq	8(%rsi), %rdx
	imulq	(%rsi), %rdx
	movq	%rdx, (%rsi)
	xorl	%ecx, %ecx
.LBB13_3:
	movq	%rcx, (%rax)
	retq
.Lfunc_end13:
	.size	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul, .Lfunc_end13-<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state
	.type	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state,@function
<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state:
	.cfi_startproc
	movq	(%rdi), %rax
	retq
.Lfunc_end14:
	.size	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state, .Lfunc_end14-<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state
	.type	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state,@function
<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state:
	.cfi_startproc
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end15:
	.size	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state, .Lfunc_end15-<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state
	.cfi_endproc

	.section	.text.run_optional_trait_methods,"ax",@progbits
	.globl	run_optional_trait_methods
	.type	run_optional_trait_methods,@function
run_optional_trait_methods:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$1240, %rsp
	.cfi_def_cfa_offset 1296
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	$0, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	200(%rsp), %rbx
	xorl	%ebp, %ebp
	movl	$1040, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	xorps	%xmm0, %xmm0
	leaq	64(%rsp), %rsi
	movaps	%xmm0, 112(%rsi)
	movaps	%xmm0, 96(%rsi)
	movaps	%xmm0, 80(%rsi)
	movaps	%xmm0, 64(%rsi)
	movaps	%xmm0, 48(%rsi)
	movaps	%xmm0, 32(%rsi)
	movaps	%xmm0, 16(%rsi)
	movaps	%xmm0, (%rsi)
	movl	$128, %edx
	movq	%rbx, %rdi
	callq	*<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB16_12
	leaq	200(%rsp), %r14
	leaq	64(%rsp), %r15
	movq	<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip), %r13
	leaq	48(%rsp), %r12
	leaq	24(%rsp), %rbp
	leaq	8(%rsp), %rbx
.LBB16_2:
	testq	%rdx, %rdx
	je	.LBB16_5
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::parse_command
	cmpl	$5, 48(%rsp)
	jne	.LBB16_7
	movl	$16, %esi
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.6(%rip), %rdi
	callq	optional_trait_methods::print_macros::write_line
	jmp	.LBB16_5
.LBB16_7:
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::handle
	cmpl	$1, 24(%rsp)
	je	.LBB16_8
.LBB16_5:
	movl	$128, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*%r13
	testq	%rax, %rax
	jne	.LBB16_2
	xorl	%ebp, %ebp
	jmp	.LBB16_12
.LBB16_8:
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB16_10
	movq	40(%rsp), %rsi
	jmp	.LBB16_11
.LBB16_10:
	leaq	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.16(%rip), %rdi
	movl	$23, %esi
.LBB16_11:
	callq	optional_trait_methods::print_macros::write_line
	movl	$1, %ebp
.LBB16_12:
	movl	%ebp, %eax
	addq	$1240, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	run_optional_trait_methods, .Lfunc_end16-run_optional_trait_methods
	.cfi_endproc

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.0,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.0,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.0:
	.ascii	"Parse IncDec extension"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.0, 22

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.1,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.1,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.1:
	.ascii	"Parse Mul extension"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.1, 19

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.2,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.2,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.2:
	.ascii	"* "
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.2, 2

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.3,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.3,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.3:
	.ascii	"Parse ScaleFactor extension"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.3, 27

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.4,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.4,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.4:
	.ascii	"*~ "
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.4, 3

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.5,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.5,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.5:
	.ascii	"s "
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.5, 2

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.6,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.6:
	.ascii	"Unsupported cmd!"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.6, 16

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.7,@object
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.7:
	.ascii	"IncDec extension"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.7, 16

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.8,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.8,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.8:
	.ascii	"Mul extension"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.8, 13

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.9,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.9,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.9:
	.ascii	"ScaleFactor extension"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.9, 21

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.10,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.10,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.10:
	.byte	10
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.10, 1

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.11,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.11:
	.asciz	"src/print_macros.rs"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.11, 20

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.12,@object
	.section	.data.rel.ro..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.12:
	.quad	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.11
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.12, 24

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.13,@object
	.section	.data.rel.ro..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.13:
	.quad	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.11
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.13, 24

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.14,@object
	.section	.data.rel.ro..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.14:
	.quad	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.11
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.14, 24

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.15,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.15,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.15:
	.ascii	"multiplying by 7 is unlucky!"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.15, 28

	.type	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.16,@object
	.section	.rodata..Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.16,"a",@progbits
.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.16:
	.ascii	"Invalid implementation!"
	.size	.Lanon.69e9fcb3c0bbbb6329c7d77e3d93ef14.16, 23

	.ident	"rustc version 1.97.0-nightly (9ec5d5f32 2026-04-21)"
	.section	".note.GNU-stack","",@progbits
