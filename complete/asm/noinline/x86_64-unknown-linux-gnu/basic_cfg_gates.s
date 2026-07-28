	.file	"optional_trait_methods.c27e56638656374d-cgu.0"
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

	.section	.text.<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::parse_command,"ax",@progbits
	.type	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::parse_command,@function
<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::parse_command:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB1_6
	cmpq	$1, %rsi
	jne	.LBB1_5
	cmpb	$112, (%rdi)
	jne	.LBB1_6
	xorl	%eax, %eax
	retq
.LBB1_5:
	cmpw	$8307, (%rdi)
	je	.LBB1_7
.LBB1_6:
	movl	$2, %eax
	retq
.LBB1_7:
	pushq	%rax
	.cfi_def_cfa_offset 16
	addq	$-2, %rsi
	addq	$2, %rdi
	callq	optional_trait_methods::commands::parse_isize
	movq	%rax, %rcx
	andl	$1, %ecx
	movl	$2, %eax
	subq	%rcx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::parse_command, .Lfunc_end1-<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::parse_command
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::handle,"ax",@progbits
	.type	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::handle,@function
<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::handle:
	.cfi_startproc
	cmpl	$1, (%rsi)
	jne	.LBB2_2
	movq	8(%rsi), %rsi
	jmpq	*<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state@GOTPCREL(%rip)
.LBB2_2:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state@GOTPCREL(%rip)
	movq	%rax, %rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	optional_trait_methods::print_macros::write_isize_line
.Lfunc_end2:
	.size	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::handle, .Lfunc_end2-<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::handle
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
	leaq	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.1(%rip), %rdi
	movl	$16, %esi
	callq	optional_trait_methods::print_macros::write_all
	leaq	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.2(%rip), %rdi
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
	leaq	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.4(%rip), %rdx
.LBB5_6:
	movl	$32, %esi
	movq	$-1, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB5_10:
	leaq	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.5(%rip), %rdx
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
	leaq	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.6(%rip), %rcx
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

	.section	.text.<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state,"ax",@progbits
	.globl	<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	.type	<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state,@function
<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state:
	.cfi_startproc
	movq	(%rdi), %rax
	retq
.Lfunc_end9:
	.size	<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state, .Lfunc_end9-<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state,"ax",@progbits
	.globl	<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	.type	<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state,@function
<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state:
	.cfi_startproc
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state, .Lfunc_end10-<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	.cfi_endproc

	.section	.text.run_optional_trait_methods,"ax",@progbits
	.globl	run_optional_trait_methods
	.type	run_optional_trait_methods,@function
run_optional_trait_methods:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$1200, %rsp
	.cfi_def_cfa_offset 1248
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	$0, 8(%rsp)
	leaq	160(%rsp), %rbx
	movl	$1040, %edx
	movq	%rbx, %rdi
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
	movq	%rbx, %rdi
	callq	*<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB11_7
	leaq	160(%rsp), %rbx
	leaq	32(%rsp), %r14
	movq	<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip), %r13
	leaq	8(%rsp), %r15
	leaq	16(%rsp), %r12
.LBB11_2:
	testq	%rdx, %rdx
	je	.LBB11_6
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::parse_command
	cmpq	$2, %rax
	jne	.LBB11_4
	callq	optional_trait_methods::print_macros::write_line
	jmp	.LBB11_6
.LBB11_4:
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::handle
.LBB11_6:
	movl	$128, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%r13
	testq	%rax, %rax
	jne	.LBB11_2
.LBB11_7:
	xorl	%eax, %eax
	addq	$1200, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	run_optional_trait_methods, .Lfunc_end11-run_optional_trait_methods
	.cfi_endproc

	.type	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.0,@object
	.section	.rodata..Lanon.ff664d4ad7db4da878aec2e7871d8fb1.0,"a",@progbits
.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.0:
	.ascii	"s "
	.size	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.0, 2

	.type	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.1,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.1:
	.ascii	"Unsupported cmd!"
	.size	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.1, 16

	.type	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.2,@object
	.section	.rodata..Lanon.ff664d4ad7db4da878aec2e7871d8fb1.2,"a",@progbits
.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.2:
	.byte	10
	.size	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.2, 1

	.type	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.3:
	.asciz	"src/print_macros.rs"
	.size	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.3, 20

	.type	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.4,@object
	.section	.data.rel.ro..Lanon.ff664d4ad7db4da878aec2e7871d8fb1.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.4:
	.quad	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.3
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"
	.size	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.4, 24

	.type	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.5,@object
	.section	.data.rel.ro..Lanon.ff664d4ad7db4da878aec2e7871d8fb1.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.5:
	.quad	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.3
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"
	.size	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.5, 24

	.type	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.6,@object
	.section	.data.rel.ro..Lanon.ff664d4ad7db4da878aec2e7871d8fb1.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.6:
	.quad	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.3
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"
	.size	.Lanon.ff664d4ad7db4da878aec2e7871d8fb1.6, 24

	.ident	"rustc version 1.97.0-nightly (9ec5d5f32 2026-04-21)"
	.section	".note.GNU-stack","",@progbits
