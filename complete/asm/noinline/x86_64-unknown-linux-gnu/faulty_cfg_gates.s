	.file	"optional_trait_methods.6f5509271040e1d3-cgu.0"
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

	.section	.text.<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::parse_command,"ax",@progbits
	.type	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::parse_command,@function
<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::parse_command:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	.Lanon.8a056b3048a9433622de011ef7cfe2db.0(%rip), %rax
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movq	$22, 8(%rcx)
	#APP
	#NO_APP
	testq	%rdx, %rdx
	je	.LBB1_13
	cmpq	$2, %rdx
	je	.LBB1_9
	cmpq	$1, %rdx
	jne	.LBB1_10
	movzbl	(%rsi), %eax
	cmpl	$112, %eax
	je	.LBB1_15
	cmpl	$45, %eax
	je	.LBB1_7
	cmpl	$43, %eax
	jne	.LBB1_13
	movq	$2, (%rbx)
	movb	$0, 8(%rbx)
	jmp	.LBB1_14
.LBB1_9:
	cmpw	$11563, (%rsi)
	jne	.LBB1_10
	movq	$2, (%rbx)
	movb	$2, 8(%rbx)
	jmp	.LBB1_14
.LBB1_10:
	cmpw	$8307, (%rsi)
	jne	.LBB1_13
	addq	$-2, %rdx
	addq	$2, %rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	optional_trait_methods::commands::parse_isize
	testb	$1, %al
	je	.LBB1_13
	movq	$1, (%rbx)
	movq	%rdx, 8(%rbx)
	jmp	.LBB1_14
.LBB1_13:
	movq	$3, (%rbx)
.LBB1_14:
	movq	%rbx, %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_7:
	.cfi_def_cfa_offset 32
	movq	$2, (%rbx)
	movb	$1, 8(%rbx)
	jmp	.LBB1_14
.LBB1_15:
	movq	$0, (%rbx)
	jmp	.LBB1_14
.Lfunc_end1:
	.size	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::parse_command, .Lfunc_end1-<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::parse_command
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::handle,"ax",@progbits
	.type	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::handle,@function
<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::handle:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB2_6
	cmpl	$2, %eax
	jne	.LBB2_5
	leaq	.Lanon.8a056b3048a9433622de011ef7cfe2db.3(%rip), %rax
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movq	$16, 8(%rcx)
	#APP
	#NO_APP
	movzbl	8(%rsi), %eax
	testl	%eax, %eax
	je	.LBB2_9
	leaq	.Lanon.8a056b3048a9433622de011ef7cfe2db.9(%rip), %rbx
	cmpl	$1, %eax
	je	.LBB2_8
	callq	*<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc@GOTPCREL(%rip)
	jmp	.LBB2_8
.LBB2_6:
	callq	*<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state@GOTPCREL(%rip)
	movq	%rax, %rdi
	callq	optional_trait_methods::print_macros::write_isize_line
	jmp	.LBB2_7
.LBB2_5:
	movq	8(%rsi), %rsi
	callq	*<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state@GOTPCREL(%rip)
	jmp	.LBB2_7
.LBB2_9:
	callq	*<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc@GOTPCREL(%rip)
.LBB2_7:
	xorl	%ebx, %ebx
.LBB2_8:
	movq	%rbx, %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::handle, .Lfunc_end2-<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::handle
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
.LBB3_1:
	cmpq	%rax, %rcx
	jb	.LBB3_4
	movl	$1024, %edx
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	*%rbp
	testq	%rax, %rax
	jle	.LBB3_11
	movq	%rax, 1024(%r13)
	movq	$0, 1032(%r13)
	xorl	%ecx, %ecx
.LBB3_4:
	cmpq	%rcx, %rax
	jb	.LBB3_15
	cmpq	$1024, %rax
	ja	.LBB3_16
	cmpq	%rax, %rcx
	je	.LBB3_1
.LBB3_7:
	movb	(%r13,%rcx), %dl
	incq	%rcx
	movq	%rcx, 1032(%r13)
	cmpb	$10, %dl
	je	.LBB3_12
	cmpq	%r12, %rbx
	jae	.LBB3_10
	movb	%dl, (%r14,%rbx)
	incq	%rbx
.LBB3_10:
	cmpq	%rcx, %rax
	je	.LBB3_1
	jmp	.LBB3_7
.LBB3_11:
	testq	%rbx, %rbx
	je	.LBB3_14
.LBB3_12:
	xorl	%eax, %eax
	cmpq	%r12, %rbx
	cmovaq	%rax, %r14
	movq	%r14, %r15
	jmp	.LBB3_16
.LBB3_14:
	xorl	%r15d, %r15d
.LBB3_15:
.LBB3_16:
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
.Lfunc_end3:
	.size	<optional_trait_methods::line_reader::LineReader>::read_line, .Lfunc_end3-<optional_trait_methods::line_reader::LineReader>::read_line
	.cfi_endproc

	.section	.text.optional_trait_methods::print_macros::write_line,"ax",@progbits
	.type	optional_trait_methods::print_macros::write_line,@function
optional_trait_methods::print_macros::write_line:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	optional_trait_methods::print_macros::write_all
	leaq	.Lanon.8a056b3048a9433622de011ef7cfe2db.4(%rip), %rdi
	movl	$1, %esi
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	optional_trait_methods::print_macros::write_all
.Lfunc_end4:
	.size	optional_trait_methods::print_macros::write_line, .Lfunc_end4-optional_trait_methods::print_macros::write_line
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
.LBB5_1:
	cmpq	$31, %r8
	ja	.LBB5_5
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
	jae	.LBB5_1
	testq	%rdi, %rdi
	js	.LBB5_7
	incq	%r8
	jmp	.LBB5_9
.LBB5_7:
	cmpq	$31, %r8
	ja	.LBB5_10
	movb	$45, (%rsp,%r8)
.LBB5_9:
	movl	$32, %esi
	subq	%r8, %rsi
	leaq	(%rsp,%r8), %rdi
	callq	optional_trait_methods::print_macros::write_all
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB5_5:
	.cfi_def_cfa_offset 48
	leaq	.Lanon.8a056b3048a9433622de011ef7cfe2db.6(%rip), %rdx
.LBB5_6:
	movl	$32, %esi
	movq	$-1, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB5_10:
	leaq	.Lanon.8a056b3048a9433622de011ef7cfe2db.7(%rip), %rdx
	jmp	.LBB5_6
.Lfunc_end5:
	.size	optional_trait_methods::print_macros::write_isize_line, .Lfunc_end5-optional_trait_methods::print_macros::write_isize_line
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
	je	.LBB6_5
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	write@GOTPCREL(%rip), %r15
.LBB6_2:
	movl	$1, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%r15
	testq	%rax, %rax
	jle	.LBB6_5
	cmpq	%rax, %rbx
	jb	.LBB6_6
	addq	%rax, %r14
	subq	%rax, %rbx
	jne	.LBB6_2
.LBB6_5:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_6:
	.cfi_def_cfa_offset 32
	leaq	.Lanon.8a056b3048a9433622de011ef7cfe2db.8(%rip), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	*core::slice::index::slice_index_fail@GOTPCREL(%rip)
.Lfunc_end6:
	.size	optional_trait_methods::print_macros::write_all, .Lfunc_end6-optional_trait_methods::print_macros::write_all
	.cfi_endproc

	.section	.text.optional_trait_methods::commands::parse_isize,"ax",@progbits
	.type	optional_trait_methods::commands::parse_isize,@function
optional_trait_methods::commands::parse_isize:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB7_1
	movzbl	(%rdi), %eax
	cmpl	$45, %eax
	je	.LBB7_5
	xorl	%ecx, %ecx
	cmpl	$43, %eax
	je	.LBB7_7
	jmp	.LBB7_9
.LBB7_5:
	movb	$1, %cl
.LBB7_7:
	decq	%rsi
	je	.LBB7_1
	incq	%rdi
.LBB7_9:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
.LBB7_10:
	movb	(%rdi,%r8), %r9b
	addb	$-48, %r9b
	cmpb	$10, %r9b
	jae	.LBB7_2
	imulq	$10, %rdx, %rdx
	jo	.LBB7_2
	movzbl	%r9b, %r9d
	testb	%cl, %cl
	je	.LBB7_13
	subq	%r9, %rdx
	jo	.LBB7_2
	jmp	.LBB7_15
.LBB7_13:
	addq	%r9, %rdx
	jo	.LBB7_2
.LBB7_15:
	incq	%r8
	cmpq	%r8, %rsi
	jne	.LBB7_10
	movl	$1, %eax
	retq
.LBB7_1:
	xorl	%eax, %eax
.LBB7_2:
	retq
.Lfunc_end7:
	.size	optional_trait_methods::commands::parse_isize, .Lfunc_end7-optional_trait_methods::commands::parse_isize
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
.Lfunc_end8:
	.size	<optional_trait_methods::line_reader::LineReader as core::default::Default>::default, .Lfunc_end8-<optional_trait_methods::line_reader::LineReader as core::default::Default>::default
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec,"ax",@progbits
	.globl	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec
	.type	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec,@function
<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec:
	.cfi_startproc
	leaq	.Lanon.8a056b3048a9433622de011ef7cfe2db.9(%rip), %rax
	movl	$38, %edx
	retq
.Lfunc_end9:
	.size	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec, .Lfunc_end9-<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc,"ax",@progbits
	.globl	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc
	.type	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc,@function
<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc:
	.cfi_startproc
	incq	(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc, .Lfunc_end10-<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state,"ax",@progbits
	.globl	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	.type	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state,@function
<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state:
	.cfi_startproc
	movq	(%rdi), %rax
	retq
.Lfunc_end11:
	.size	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state, .Lfunc_end11-<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state,"ax",@progbits
	.globl	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	.type	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state,@function
<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state:
	.cfi_startproc
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state, .Lfunc_end12-<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
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
	subq	$1208, %rsp
	.cfi_def_cfa_offset 1264
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	$0, 8(%rsp)
	leaq	168(%rsp), %r14
	xorl	%ebx, %ebx
	movl	$1040, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	xorps	%xmm0, %xmm0
	leaq	32(%rsp), %rsi
	movaps	%xmm0, 112(%rsi)
	movaps	%xmm0, 96(%rsi)
	movaps	%xmm0, 80(%rsi)
	movaps	%xmm0, 64(%rsi)
	movaps	%xmm0, 48(%rsi)
	movaps	%xmm0, 32(%rsi)
	movaps	%xmm0, 16(%rsi)
	movaps	%xmm0, (%rsi)
	movl	$128, %edx
	movq	%r14, %rdi
	callq	*<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB13_9
	leaq	168(%rsp), %r14
	leaq	32(%rsp), %r15
	movq	<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip), %rbx
	leaq	16(%rsp), %r12
	leaq	.Lanon.8a056b3048a9433622de011ef7cfe2db.2(%rip), %r13
	leaq	8(%rsp), %rbp
.LBB13_2:
	testq	%rdx, %rdx
	je	.LBB13_3
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::parse_command
	cmpl	$3, 16(%rsp)
	jne	.LBB13_7
	movl	$16, %esi
	movq	%r13, %rdi
	callq	optional_trait_methods::print_macros::write_line
	jmp	.LBB13_3
.LBB13_7:
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget>>::handle
	testq	%rax, %rax
	jne	.LBB13_8
.LBB13_3:
	movl	$128, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*%rbx
	testq	%rax, %rax
	jne	.LBB13_2
	xorl	%ebx, %ebx
	jmp	.LBB13_9
.LBB13_8:
	movl	$38, %esi
	movq	%rax, %rdi
	callq	optional_trait_methods::print_macros::write_line
	movl	$1, %ebx
.LBB13_9:
	movl	%ebx, %eax
	addq	$1208, %rsp
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
.Lfunc_end13:
	.size	run_optional_trait_methods, .Lfunc_end13-run_optional_trait_methods
	.cfi_endproc

	.type	.Lanon.8a056b3048a9433622de011ef7cfe2db.0,@object
	.section	.rodata..Lanon.8a056b3048a9433622de011ef7cfe2db.0,"a",@progbits
.Lanon.8a056b3048a9433622de011ef7cfe2db.0:
	.ascii	"Parse IncDec extension"
	.size	.Lanon.8a056b3048a9433622de011ef7cfe2db.0, 22

	.type	.Lanon.8a056b3048a9433622de011ef7cfe2db.1,@object
	.section	.rodata..Lanon.8a056b3048a9433622de011ef7cfe2db.1,"a",@progbits
.Lanon.8a056b3048a9433622de011ef7cfe2db.1:
	.ascii	"s "
	.size	.Lanon.8a056b3048a9433622de011ef7cfe2db.1, 2

	.type	.Lanon.8a056b3048a9433622de011ef7cfe2db.2,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.8a056b3048a9433622de011ef7cfe2db.2:
	.ascii	"Unsupported cmd!"
	.size	.Lanon.8a056b3048a9433622de011ef7cfe2db.2, 16

	.type	.Lanon.8a056b3048a9433622de011ef7cfe2db.3,@object
.Lanon.8a056b3048a9433622de011ef7cfe2db.3:
	.ascii	"IncDec extension"
	.size	.Lanon.8a056b3048a9433622de011ef7cfe2db.3, 16

	.type	.Lanon.8a056b3048a9433622de011ef7cfe2db.4,@object
	.section	.rodata..Lanon.8a056b3048a9433622de011ef7cfe2db.4,"a",@progbits
.Lanon.8a056b3048a9433622de011ef7cfe2db.4:
	.byte	10
	.size	.Lanon.8a056b3048a9433622de011ef7cfe2db.4, 1

	.type	.Lanon.8a056b3048a9433622de011ef7cfe2db.5,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.8a056b3048a9433622de011ef7cfe2db.5:
	.asciz	"src/print_macros.rs"
	.size	.Lanon.8a056b3048a9433622de011ef7cfe2db.5, 20

	.type	.Lanon.8a056b3048a9433622de011ef7cfe2db.6,@object
	.section	.data.rel.ro..Lanon.8a056b3048a9433622de011ef7cfe2db.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.8a056b3048a9433622de011ef7cfe2db.6:
	.quad	.Lanon.8a056b3048a9433622de011ef7cfe2db.5
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"
	.size	.Lanon.8a056b3048a9433622de011ef7cfe2db.6, 24

	.type	.Lanon.8a056b3048a9433622de011ef7cfe2db.7,@object
	.section	.data.rel.ro..Lanon.8a056b3048a9433622de011ef7cfe2db.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.8a056b3048a9433622de011ef7cfe2db.7:
	.quad	.Lanon.8a056b3048a9433622de011ef7cfe2db.5
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"
	.size	.Lanon.8a056b3048a9433622de011ef7cfe2db.7, 24

	.type	.Lanon.8a056b3048a9433622de011ef7cfe2db.8,@object
	.section	.data.rel.ro..Lanon.8a056b3048a9433622de011ef7cfe2db.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.8a056b3048a9433622de011ef7cfe2db.8:
	.quad	.Lanon.8a056b3048a9433622de011ef7cfe2db.5
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"
	.size	.Lanon.8a056b3048a9433622de011ef7cfe2db.8, 24

	.type	.Lanon.8a056b3048a9433622de011ef7cfe2db.9,@object
	.section	.rodata..Lanon.8a056b3048a9433622de011ef7cfe2db.9,"a",@progbits
.Lanon.8a056b3048a9433622de011ef7cfe2db.9:
	.ascii	"`dec` operations are not supported yet"
	.size	.Lanon.8a056b3048a9433622de011ef7cfe2db.9, 38

	.ident	"rustc version 1.97.0-nightly (9ec5d5f32 2026-04-21)"
	.section	".note.GNU-stack","",@progbits
