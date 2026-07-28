	.file	"optional_trait_methods.19f6b706a1144378-cgu.0"
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
.LBB1_1:
	cmpq	%rax, %rcx
	jb	.LBB1_4
	movl	$1024, %edx
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	*%rbp
	testq	%rax, %rax
	jle	.LBB1_11
	movq	%rax, 1024(%r13)
	movq	$0, 1032(%r13)
	xorl	%ecx, %ecx
.LBB1_4:
	cmpq	%rcx, %rax
	jb	.LBB1_15
	cmpq	$1024, %rax
	ja	.LBB1_16
	cmpq	%rax, %rcx
	je	.LBB1_1
.LBB1_7:
	movb	(%r13,%rcx), %dl
	incq	%rcx
	movq	%rcx, 1032(%r13)
	cmpb	$10, %dl
	je	.LBB1_12
	cmpq	%r12, %rbx
	jae	.LBB1_10
	movb	%dl, (%r14,%rbx)
	incq	%rbx
.LBB1_10:
	cmpq	%rcx, %rax
	je	.LBB1_1
	jmp	.LBB1_7
.LBB1_11:
	testq	%rbx, %rbx
	je	.LBB1_14
.LBB1_12:
	xorl	%eax, %eax
	cmpq	%r12, %rbx
	cmovaq	%rax, %r14
	movq	%r14, %r15
	jmp	.LBB1_16
.LBB1_14:
	xorl	%r15d, %r15d
.LBB1_15:
.LBB1_16:
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
.Lfunc_end1:
	.size	<optional_trait_methods::line_reader::LineReader>::read_line, .Lfunc_end1-<optional_trait_methods::line_reader::LineReader>::read_line
	.cfi_endproc

	.section	.text.optional_trait_methods::print_macros::write_line,"ax",@progbits
	.type	optional_trait_methods::print_macros::write_line,@function
optional_trait_methods::print_macros::write_line:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	optional_trait_methods::print_macros::write_all
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.4(%rip), %rdi
	movl	$1, %esi
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	optional_trait_methods::print_macros::write_all
.Lfunc_end2:
	.size	optional_trait_methods::print_macros::write_line, .Lfunc_end2-optional_trait_methods::print_macros::write_line
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
.LBB3_1:
	cmpq	$31, %r8
	ja	.LBB3_5
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
	jae	.LBB3_1
	testq	%rdi, %rdi
	js	.LBB3_7
	incq	%r8
	jmp	.LBB3_9
.LBB3_7:
	cmpq	$31, %r8
	ja	.LBB3_10
	movb	$45, (%rsp,%r8)
.LBB3_9:
	movl	$32, %esi
	subq	%r8, %rsi
	leaq	(%rsp,%r8), %rdi
	callq	optional_trait_methods::print_macros::write_all
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_5:
	.cfi_def_cfa_offset 48
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.6(%rip), %rdx
.LBB3_6:
	movl	$32, %esi
	movq	$-1, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB3_10:
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.7(%rip), %rdx
	jmp	.LBB3_6
.Lfunc_end3:
	.size	optional_trait_methods::print_macros::write_isize_line, .Lfunc_end3-optional_trait_methods::print_macros::write_isize_line
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
	je	.LBB4_5
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	write@GOTPCREL(%rip), %r15
.LBB4_2:
	movl	$1, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%r15
	testq	%rax, %rax
	jle	.LBB4_5
	cmpq	%rax, %rbx
	jb	.LBB4_6
	addq	%rax, %r14
	subq	%rax, %rbx
	jne	.LBB4_2
.LBB4_5:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB4_6:
	.cfi_def_cfa_offset 32
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.8(%rip), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	*core::slice::index::slice_index_fail@GOTPCREL(%rip)
.Lfunc_end4:
	.size	optional_trait_methods::print_macros::write_all, .Lfunc_end4-optional_trait_methods::print_macros::write_all
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
.Lfunc_end5:
	.size	<optional_trait_methods::line_reader::LineReader as core::default::Default>::default, .Lfunc_end5-<optional_trait_methods::line_reader::LineReader as core::default::Default>::default
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec,"ax",@progbits
	.globl	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec
	.type	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec,@function
<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec:
	.cfi_startproc
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.9(%rip), %rax
	movl	$38, %edx
	retq
.Lfunc_end6:
	.size	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec, .Lfunc_end6-<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc,"ax",@progbits
	.globl	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc
	.type	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc,@function
<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc:
	.cfi_startproc
	incq	(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc, .Lfunc_end7-<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state,"ax",@progbits
	.globl	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	.type	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state,@function
<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state:
	.cfi_startproc
	movq	(%rdi), %rax
	retq
.Lfunc_end8:
	.size	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state, .Lfunc_end8-<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state,"ax",@progbits
	.globl	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	.type	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state,@function
<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state:
	.cfi_startproc
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state, .Lfunc_end9-<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
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
	leaq	8(%rsp), %rax
	movq	$0, (%rax)
	leaq	168(%rsp), %r15
	movl	$1040, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	xorps	%xmm0, %xmm0
	leaq	32(%rsp), %r12
	movaps	%xmm0, 112(%r12)
	movaps	%xmm0, 96(%r12)
	movaps	%xmm0, 80(%r12)
	movaps	%xmm0, 64(%r12)
	movaps	%xmm0, 48(%r12)
	movaps	%xmm0, 32(%r12)
	movaps	%xmm0, 16(%r12)
	movaps	%xmm0, (%r12)
	movq	<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip), %rbp
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.0(%rip), %rbx
	leaq	16(%rsp), %r14
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.2(%rip), %r13
.LBB10_1:
	movl	$128, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*%rbp
	testq	%rax, %rax
	je	.LBB10_2
	testq	%rdx, %rdx
	je	.LBB10_1
	movq	%rbx, 16(%rsp)
	movq	$22, 24(%rsp)
	#APP
	#NO_APP
	cmpq	$2, %rdx
	je	.LBB10_10
	cmpq	$1, %rdx
	jne	.LBB10_11
	movzbl	(%rax), %eax
	cmpl	$43, %eax
	je	.LBB10_29
	cmpl	$112, %eax
	je	.LBB10_28
	cmpl	$45, %eax
	je	.LBB10_9
	jmp	.LBB10_24
.LBB10_10:
	cmpw	$11563, (%rax)
	je	.LBB10_30
.LBB10_11:
	cmpw	$8307, (%rax)
	setne	%sil
	movq	%rdx, %rcx
	addq	$-2, %rcx
	sete	%dil
	orb	%sil, %dil
	je	.LBB10_12
.LBB10_24:
	movl	$16, %esi
	movq	%r13, %rdi
	callq	optional_trait_methods::print_macros::write_line
	jmp	.LBB10_1
.LBB10_12:
	movzbl	2(%rax), %esi
	cmpl	$45, %esi
	je	.LBB10_13
	cmpl	$43, %esi
	jne	.LBB10_15
	xorl	%edi, %edi
	jmp	.LBB10_17
.LBB10_28:
	leaq	8(%rsp), %rdi
	callq	*<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state@GOTPCREL(%rip)
	movq	%rax, %rdi
	callq	optional_trait_methods::print_macros::write_isize_line
	jmp	.LBB10_1
.LBB10_29:
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.3(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$16, 24(%rsp)
	#APP
	#NO_APP
	leaq	8(%rsp), %rdi
	callq	*<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc@GOTPCREL(%rip)
	jmp	.LBB10_1
.LBB10_13:
	movb	$1, %dil
.LBB10_17:
	addq	$-3, %rdx
	je	.LBB10_24
	addq	$3, %rax
	movq	%rdx, %rcx
	jmp	.LBB10_19
.LBB10_15:
	addq	$2, %rax
	xorl	%edi, %edi
.LBB10_19:
	xorl	%edx, %edx
	xorl	%esi, %esi
.LBB10_20:
	movb	(%rax,%rdx), %r8b
	addb	$-48, %r8b
	cmpb	$9, %r8b
	ja	.LBB10_24
	imulq	$10, %rsi, %rsi
	jo	.LBB10_24
	movzbl	%r8b, %r8d
	testb	%dil, %dil
	je	.LBB10_23
	subq	%r8, %rsi
	jo	.LBB10_24
	jmp	.LBB10_26
.LBB10_23:
	addq	%r8, %rsi
	jo	.LBB10_24
.LBB10_26:
	incq	%rdx
	cmpq	%rdx, %rcx
	jne	.LBB10_20
	leaq	8(%rsp), %rdi
	callq	*<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state@GOTPCREL(%rip)
	jmp	.LBB10_1
.LBB10_2:
	xorl	%eax, %eax
	jmp	.LBB10_32
.LBB10_30:
	leaq	16(%rsp), %rax
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.3(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$16, 8(%rax)
	#APP
	#NO_APP
	jmp	.LBB10_31
.LBB10_9:
	leaq	16(%rsp), %rax
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.3(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$16, 8(%rax)
	#APP
	#NO_APP
.LBB10_31:
	leaq	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.9(%rip), %rdi
	movl	$38, %esi
	callq	optional_trait_methods::print_macros::write_line
	movl	$1, %eax
.LBB10_32:
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
.Lfunc_end10:
	.size	run_optional_trait_methods, .Lfunc_end10-run_optional_trait_methods
	.cfi_endproc

	.type	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.0,@object
	.section	.rodata..Lanon.76c6df6cd4dfd21271cb08e9bde840fb.0,"a",@progbits
.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.0:
	.ascii	"Parse IncDec extension"
	.size	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.0, 22

	.type	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.1,@object
	.section	.rodata..Lanon.76c6df6cd4dfd21271cb08e9bde840fb.1,"a",@progbits
.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.1:
	.ascii	"s "
	.size	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.1, 2

	.type	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.2,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.2:
	.ascii	"Unsupported cmd!"
	.size	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.2, 16

	.type	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.3,@object
.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.3:
	.ascii	"IncDec extension"
	.size	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.3, 16

	.type	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.4,@object
	.section	.rodata..Lanon.76c6df6cd4dfd21271cb08e9bde840fb.4,"a",@progbits
.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.4:
	.byte	10
	.size	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.4, 1

	.type	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.5,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.5:
	.asciz	"src/print_macros.rs"
	.size	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.5, 20

	.type	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.6,@object
	.section	.data.rel.ro..Lanon.76c6df6cd4dfd21271cb08e9bde840fb.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.6:
	.quad	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.5
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"
	.size	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.6, 24

	.type	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.7,@object
	.section	.data.rel.ro..Lanon.76c6df6cd4dfd21271cb08e9bde840fb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.7:
	.quad	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.5
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"
	.size	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.7, 24

	.type	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.8,@object
	.section	.data.rel.ro..Lanon.76c6df6cd4dfd21271cb08e9bde840fb.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.8:
	.quad	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.5
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"
	.size	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.8, 24

	.type	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.9,@object
	.section	.rodata..Lanon.76c6df6cd4dfd21271cb08e9bde840fb.9,"a",@progbits
.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.9:
	.ascii	"`dec` operations are not supported yet"
	.size	.Lanon.76c6df6cd4dfd21271cb08e9bde840fb.9, 38

	.ident	"rustc version 1.97.0-nightly (9ec5d5f32 2026-04-21)"
	.section	".note.GNU-stack","",@progbits
