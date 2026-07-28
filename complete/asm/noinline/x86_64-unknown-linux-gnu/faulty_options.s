	.file	"optional_trait_methods.b86628e7c6cdd69c-cgu.0"
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

	.section	.text.<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command,"ax",@progbits
	.type	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command,@function
<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command:
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
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.0(%rip), %rax
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movq	$22, 8(%rcx)
	#APP
	#NO_APP
	cmpq	$1, %rdx
	jne	.LBB2_4
	movzbl	(%r15), %eax
	cmpl	$45, %eax
	je	.LBB2_18
	cmpl	$43, %eax
	jne	.LBB2_7
	movw	$1, (%rbx)
	jmp	.LBB2_26
.LBB2_4:
	cmpq	$2, %r14
	jne	.LBB2_7
	cmpw	$11563, (%r15)
	jne	.LBB2_7
	movw	$513, (%rbx)
	jmp	.LBB2_26
.LBB2_7:
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.1(%rip), %rax
	movq	%rax, (%rcx)
	movq	$19, 8(%rcx)
	#APP
	#NO_APP
	cmpq	$2, %r14
	jb	.LBB2_11
	cmpw	$8234, (%r15)
	jne	.LBB2_11
	leaq	-2(%r14), %rsi
	leaq	2(%r15), %rdi
	callq	optional_trait_methods::commands::parse_isize
	testb	$1, %al
	je	.LBB2_11
	movb	$2, (%rbx)
	movq	$0, 8(%rbx)
	jmp	.LBB2_24
.LBB2_11:
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.3(%rip), %rax
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movq	$27, 8(%rcx)
	#APP
	#NO_APP
	cmpq	$3, %r14
	jb	.LBB2_15
	movzwl	(%r15), %eax
	xorl	$32298, %eax
	movzbl	2(%r15), %ecx
	xorl	$32, %ecx
	orw	%ax, %cx
	jne	.LBB2_20
	leaq	-3(%r14), %rsi
	leaq	3(%r15), %rdi
	callq	optional_trait_methods::commands::parse_isize
	testb	$1, %al
	je	.LBB2_20
	movb	$2, (%rbx)
	jmp	.LBB2_23
.LBB2_15:
	cmpq	$1, %r14
	jne	.LBB2_19
	cmpb	$112, (%r15)
	jne	.LBB2_25
	movb	$0, (%rbx)
	movq	$0, 8(%rbx)
	jmp	.LBB2_26
.LBB2_18:
	movw	$257, (%rbx)
	jmp	.LBB2_26
.LBB2_19:
	jbe	.LBB2_25
.LBB2_20:
	cmpw	$8307, (%r15)
	jne	.LBB2_25
	addq	$-2, %r14
	addq	$2, %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	optional_trait_methods::commands::parse_isize
	testb	$1, %al
	je	.LBB2_25
	movb	$0, (%rbx)
.LBB2_23:
	movq	$1, 8(%rbx)
.LBB2_24:
	movq	%rdx, 16(%rbx)
	jmp	.LBB2_26
.LBB2_25:
	movb	$3, (%rbx)
.LBB2_26:
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
	.size	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command, .Lfunc_end2-<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::handle,"ax",@progbits
	.type	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::handle,@function
<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::handle:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movzbl	(%rdx), %eax
	testl	%eax, %eax
	je	.LBB3_7
	cmpl	$1, %eax
	jne	.LBB3_9
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.7(%rip), %rax
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movq	$16, 8(%rcx)
	#APP
	#NO_APP
	movzbl	1(%rdx), %eax
	testl	%eax, %eax
	je	.LBB3_13
	cmpl	$1, %eax
	je	.LBB3_16
	movq	%rsp, %r14
	movq	%r14, %rdi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc@GOTPCREL(%rip)
	cmpl	$1, (%r14)
	je	.LBB3_14
	movq	$0, 8(%rbx)
	jmp	.LBB3_6
.LBB3_7:
	cmpb	$0, 8(%rdx)
	je	.LBB3_11
	movq	16(%rdx), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state@GOTPCREL(%rip)
	jmp	.LBB3_17
.LBB3_9:
	cmpb	$0, 8(%rdx)
	je	.LBB3_12
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.9(%rip), %rax
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movq	$21, 8(%rcx)
	#APP
	#NO_APP
	jmp	.LBB3_16
.LBB3_11:
	movq	%rsi, %rdi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state@GOTPCREL(%rip)
	movq	%rax, %rdi
	callq	optional_trait_methods::print_macros::write_isize_line
	jmp	.LBB3_17
.LBB3_12:
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.8(%rip), %rax
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movq	$13, 8(%rcx)
	#APP
	#NO_APP
	jmp	.LBB3_16
.LBB3_13:
	movq	%rsp, %r14
	movq	%r14, %rdi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc@GOTPCREL(%rip)
	cmpb	$0, (%r14)
	je	.LBB3_17
.LBB3_14:
	movq	8(%rsp), %rax
	testq	%rax, %rax
	je	.LBB3_16
	movq	16(%rsp), %rcx
	movq	%rax, 8(%rbx)
	movq	%rcx, 16(%rbx)
.LBB3_6:
	movl	$1, %eax
	jmp	.LBB3_18
.LBB3_16:
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.6(%rip), %rdi
	movl	$16, %esi
	callq	optional_trait_methods::print_macros::write_line
.LBB3_17:
	xorl	%eax, %eax
.LBB3_18:
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::handle, .Lfunc_end3-<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::handle
	.cfi_endproc

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
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.10(%rip), %rdi
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
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.12(%rip), %rdx
.LBB6_6:
	movl	$32, %esi
	movq	$-1, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB6_10:
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.13(%rip), %rdx
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
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.14(%rip), %rcx
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

	.section	.text.<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	.type	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc,@function
<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc:
	.cfi_startproc
	incq	(%rsi)
	movq	%rdi, %rax
	movq	$0, (%rdi)
	retq
.Lfunc_end10:
	.size	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc, .Lfunc_end10-<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state
	.type	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state,@function
<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state:
	.cfi_startproc
	movq	(%rdi), %rax
	retq
.Lfunc_end11:
	.size	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state, .Lfunc_end11-<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state
	.type	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state,@function
<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state:
	.cfi_startproc
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state, .Lfunc_end12-<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	.type	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor,@function
<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor:
	.cfi_startproc
	movq	%rdi, %rax
	movq	$0, 8(%rdi)
	movq	$1, (%rdi)
	retq
.Lfunc_end13:
	.size	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor, .Lfunc_end13-<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::dec,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::dec
	.type	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::dec,@function
<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::dec:
	.cfi_startproc
	movq	%rdi, %rax
	movq	$0, 8(%rdi)
	movq	$1, (%rdi)
	retq
.Lfunc_end14:
	.size	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::dec, .Lfunc_end14-<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::dec
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
	je	.LBB15_12
	leaq	200(%rsp), %r14
	leaq	64(%rsp), %r15
	movq	<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip), %r13
	leaq	40(%rsp), %r12
	leaq	16(%rsp), %rbp
	leaq	8(%rsp), %rbx
.LBB15_2:
	testq	%rdx, %rdx
	je	.LBB15_5
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command
	cmpb	$3, 40(%rsp)
	jne	.LBB15_7
	movl	$16, %esi
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.6(%rip), %rdi
	callq	optional_trait_methods::print_macros::write_line
	jmp	.LBB15_5
.LBB15_7:
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::handle
	cmpl	$1, 16(%rsp)
	je	.LBB15_8
.LBB15_5:
	movl	$128, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*%r13
	testq	%rax, %rax
	jne	.LBB15_2
	xorl	%ebp, %ebp
	jmp	.LBB15_12
.LBB15_8:
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB15_10
	movq	32(%rsp), %rsi
	jmp	.LBB15_11
.LBB15_10:
	leaq	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.15(%rip), %rdi
	movl	$23, %esi
.LBB15_11:
	callq	optional_trait_methods::print_macros::write_line
	movl	$1, %ebp
.LBB15_12:
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
.Lfunc_end15:
	.size	run_optional_trait_methods, .Lfunc_end15-run_optional_trait_methods
	.cfi_endproc

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.0,@object
	.section	.rodata..Lanon.d9e3d8842f334e30bac1cfddd5553b67.0,"a",@progbits
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.0:
	.ascii	"Parse IncDec extension"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.0, 22

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.1,@object
	.section	.rodata..Lanon.d9e3d8842f334e30bac1cfddd5553b67.1,"a",@progbits
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.1:
	.ascii	"Parse Mul extension"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.1, 19

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.2,@object
	.section	.rodata..Lanon.d9e3d8842f334e30bac1cfddd5553b67.2,"a",@progbits
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.2:
	.ascii	"* "
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.2, 2

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.3,@object
	.section	.rodata..Lanon.d9e3d8842f334e30bac1cfddd5553b67.3,"a",@progbits
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.3:
	.ascii	"Parse ScaleFactor extension"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.3, 27

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.4,@object
	.section	.rodata..Lanon.d9e3d8842f334e30bac1cfddd5553b67.4,"a",@progbits
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.4:
	.ascii	"*~ "
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.4, 3

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.5,@object
	.section	.rodata..Lanon.d9e3d8842f334e30bac1cfddd5553b67.5,"a",@progbits
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.5:
	.ascii	"s "
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.5, 2

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.6,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.6:
	.ascii	"Unsupported cmd!"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.6, 16

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.7,@object
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.7:
	.ascii	"IncDec extension"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.7, 16

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.8,@object
	.section	.rodata..Lanon.d9e3d8842f334e30bac1cfddd5553b67.8,"a",@progbits
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.8:
	.ascii	"Mul extension"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.8, 13

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.9,@object
	.section	.rodata..Lanon.d9e3d8842f334e30bac1cfddd5553b67.9,"a",@progbits
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.9:
	.ascii	"ScaleFactor extension"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.9, 21

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.10,@object
	.section	.rodata..Lanon.d9e3d8842f334e30bac1cfddd5553b67.10,"a",@progbits
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.10:
	.byte	10
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.10, 1

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.11,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.11:
	.asciz	"src/print_macros.rs"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.11, 20

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.12,@object
	.section	.data.rel.ro..Lanon.d9e3d8842f334e30bac1cfddd5553b67.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.12:
	.quad	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.11
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.12, 24

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.13,@object
	.section	.data.rel.ro..Lanon.d9e3d8842f334e30bac1cfddd5553b67.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.13:
	.quad	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.11
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.13, 24

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.14,@object
	.section	.data.rel.ro..Lanon.d9e3d8842f334e30bac1cfddd5553b67.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.14:
	.quad	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.11
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.14, 24

	.type	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.15,@object
	.section	.rodata..Lanon.d9e3d8842f334e30bac1cfddd5553b67.15,"a",@progbits
.Lanon.d9e3d8842f334e30bac1cfddd5553b67.15:
	.ascii	"Invalid implementation!"
	.size	.Lanon.d9e3d8842f334e30bac1cfddd5553b67.15, 23

	.globl	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::mul
	.type	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::mul,@function
<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::mul = <optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	.ident	"rustc version 1.97.0-nightly (9ec5d5f32 2026-04-21)"
	.section	".note.GNU-stack","",@progbits
