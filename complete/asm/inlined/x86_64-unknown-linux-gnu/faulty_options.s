	.file	"optional_trait_methods.536167489baa6f95-cgu.0"
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
.LBB2_1:
	cmpq	%rax, %rcx
	jb	.LBB2_4
	movl	$1024, %edx
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	*%rbp
	testq	%rax, %rax
	jle	.LBB2_11
	movq	%rax, 1024(%r13)
	movq	$0, 1032(%r13)
	xorl	%ecx, %ecx
.LBB2_4:
	cmpq	%rcx, %rax
	jb	.LBB2_15
	cmpq	$1024, %rax
	ja	.LBB2_16
	cmpq	%rax, %rcx
	je	.LBB2_1
.LBB2_7:
	movb	(%r13,%rcx), %dl
	incq	%rcx
	movq	%rcx, 1032(%r13)
	cmpb	$10, %dl
	je	.LBB2_12
	cmpq	%r12, %rbx
	jae	.LBB2_10
	movb	%dl, (%r14,%rbx)
	incq	%rbx
.LBB2_10:
	cmpq	%rcx, %rax
	je	.LBB2_1
	jmp	.LBB2_7
.LBB2_11:
	testq	%rbx, %rbx
	je	.LBB2_14
.LBB2_12:
	xorl	%eax, %eax
	cmpq	%r12, %rbx
	cmovaq	%rax, %r14
	movq	%r14, %r15
	jmp	.LBB2_16
.LBB2_14:
	xorl	%r15d, %r15d
.LBB2_15:
.LBB2_16:
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
.Lfunc_end2:
	.size	<optional_trait_methods::line_reader::LineReader>::read_line, .Lfunc_end2-<optional_trait_methods::line_reader::LineReader>::read_line
	.cfi_endproc

	.section	.text.optional_trait_methods::print_macros::write_line,"ax",@progbits
	.type	optional_trait_methods::print_macros::write_line,@function
optional_trait_methods::print_macros::write_line:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	optional_trait_methods::print_macros::write_all
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.10(%rip), %rdi
	movl	$1, %esi
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	optional_trait_methods::print_macros::write_all
.Lfunc_end3:
	.size	optional_trait_methods::print_macros::write_line, .Lfunc_end3-optional_trait_methods::print_macros::write_line
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
.LBB4_1:
	cmpq	$31, %r8
	ja	.LBB4_5
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
	jae	.LBB4_1
	testq	%rdi, %rdi
	js	.LBB4_7
	incq	%r8
	jmp	.LBB4_9
.LBB4_7:
	cmpq	$31, %r8
	ja	.LBB4_10
	movb	$45, (%rsp,%r8)
.LBB4_9:
	movl	$32, %esi
	subq	%r8, %rsi
	leaq	(%rsp,%r8), %rdi
	callq	optional_trait_methods::print_macros::write_all
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB4_5:
	.cfi_def_cfa_offset 48
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.12(%rip), %rdx
.LBB4_6:
	movl	$32, %esi
	movq	$-1, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB4_10:
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.13(%rip), %rdx
	jmp	.LBB4_6
.Lfunc_end4:
	.size	optional_trait_methods::print_macros::write_isize_line, .Lfunc_end4-optional_trait_methods::print_macros::write_isize_line
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
	je	.LBB5_5
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	write@GOTPCREL(%rip), %r15
.LBB5_2:
	movl	$1, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%r15
	testq	%rax, %rax
	jle	.LBB5_5
	cmpq	%rax, %rbx
	jb	.LBB5_6
	addq	%rax, %r14
	subq	%rax, %rbx
	jne	.LBB5_2
.LBB5_5:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_6:
	.cfi_def_cfa_offset 32
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.14(%rip), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	*core::slice::index::slice_index_fail@GOTPCREL(%rip)
.Lfunc_end5:
	.size	optional_trait_methods::print_macros::write_all, .Lfunc_end5-optional_trait_methods::print_macros::write_all
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
.Lfunc_end6:
	.size	<optional_trait_methods::line_reader::LineReader as core::default::Default>::default, .Lfunc_end6-<optional_trait_methods::line_reader::LineReader as core::default::Default>::default
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
.Lfunc_end7:
	.size	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc, .Lfunc_end7-<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state
	.type	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state,@function
<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state:
	.cfi_startproc
	movq	(%rdi), %rax
	retq
.Lfunc_end8:
	.size	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state, .Lfunc_end8-<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state,"ax",@progbits
	.globl	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state
	.type	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state,@function
<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state:
	.cfi_startproc
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state, .Lfunc_end9-<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state
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
.Lfunc_end10:
	.size	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor, .Lfunc_end10-<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor
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
.Lfunc_end11:
	.size	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::dec, .Lfunc_end11-<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::dec
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
	movq	$0, 24(%rsp)
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
	je	.LBB12_73
	leaq	168(%rsp), %rbx
	leaq	32(%rsp), %r14
	movq	<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip), %rbp
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.0(%rip), %r12
	movq	%rsp, %r15
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.6(%rip), %r13
.LBB12_2:
	testq	%rdx, %rdx
	je	.LBB12_44
	movq	%r12, (%rsp)
	movq	$22, 8(%rsp)
	#APP
	#NO_APP
	cmpq	$1, %rdx
	jne	.LBB12_7
	movzbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB12_67
	cmpl	$45, %ecx
	jne	.LBB12_6
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7(%rip), %rax
	movq	%rax, (%rsp)
	movq	$16, 8(%rsp)
	#APP
	#NO_APP
	jmp	.LBB12_63
.LBB12_7:
	cmpq	$2, %rdx
	jne	.LBB12_9
	cmpw	$11563, (%rax)
	jne	.LBB12_9
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7(%rip), %rax
	movq	%rax, (%rsp)
	movq	$16, 8(%rsp)
	#APP
	#NO_APP
	movq	%r15, %rdi
	leaq	24(%rsp), %rsi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc@GOTPCREL(%rip)
	cmpl	$1, (%rsp)
	jne	.LBB12_71
	jmp	.LBB12_68
.LBB12_9:
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.1(%rip), %rcx
	movq	%rcx, (%rsp)
	movq	$19, 8(%rsp)
	#APP
	#NO_APP
	cmpw	$8234, (%rax)
	jne	.LBB12_23
	movq	%rdx, %rcx
	addq	$-2, %rcx
	je	.LBB12_23
	movzbl	2(%rax), %esi
	cmpl	$45, %esi
	je	.LBB12_12
	cmpl	$43, %esi
	jne	.LBB12_14
	xorl	%esi, %esi
	jmp	.LBB12_16
.LBB12_67:
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7(%rip), %rax
	movq	%rax, (%rsp)
	movq	$16, 8(%rsp)
	#APP
	#NO_APP
	movq	%r15, %rdi
	leaq	24(%rsp), %rsi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc@GOTPCREL(%rip)
	cmpb	$0, (%rsp)
	je	.LBB12_44
.LBB12_68:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB12_69
	jmp	.LBB12_63
.LBB12_6:
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.1(%rip), %rcx
	movq	%rcx, (%rsp)
	movq	$19, 8(%rsp)
	#APP
	#NO_APP
	jmp	.LBB12_23
.LBB12_12:
	movb	$1, %sil
.LBB12_16:
	movq	%rdx, %rcx
	addq	$-3, %rcx
	je	.LBB12_23
	leaq	3(%rax), %rdi
	jmp	.LBB12_18
.LBB12_14:
	leaq	2(%rax), %rdi
	xorl	%esi, %esi
.LBB12_18:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
.LBB12_19:
	movb	(%rdi,%r8), %r10b
	addb	$-48, %r10b
	cmpb	$9, %r10b
	ja	.LBB12_23
	imulq	$10, %r9, %r9
	jo	.LBB12_23
	movzbl	%r10b, %r10d
	testb	%sil, %sil
	je	.LBB12_22
	subq	%r10, %r9
	jo	.LBB12_23
	jmp	.LBB12_29
.LBB12_22:
	addq	%r10, %r9
	jo	.LBB12_23
.LBB12_29:
	incq	%r8
	cmpq	%r8, %rcx
	jne	.LBB12_19
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.8(%rip), %rax
	movq	%rax, (%rsp)
	movq	$13, 8(%rsp)
	#APP
	#NO_APP
	jmp	.LBB12_63
.LBB12_23:
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.3(%rip), %rcx
	movq	%rcx, (%rsp)
	movq	$27, 8(%rsp)
	#APP
	#NO_APP
	cmpq	$3, %rdx
	jb	.LBB12_41
	movzwl	(%rax), %ecx
	xorl	$32298, %ecx
	movzbl	2(%rax), %esi
	xorl	$32, %esi
	orw	%cx, %si
	jne	.LBB12_49
	movq	%rdx, %rcx
	addq	$-3, %rcx
	je	.LBB12_49
	movzbl	3(%rax), %esi
	cmpl	$45, %esi
	je	.LBB12_27
	cmpl	$43, %esi
	jne	.LBB12_32
	xorl	%esi, %esi
	jmp	.LBB12_34
.LBB12_27:
	movb	$1, %sil
.LBB12_34:
	movq	%rdx, %rcx
	addq	$-4, %rcx
	je	.LBB12_49
	leaq	4(%rax), %rdi
	jmp	.LBB12_36
.LBB12_32:
	leaq	3(%rax), %rdi
	xorl	%esi, %esi
.LBB12_36:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
.LBB12_37:
	movb	(%rdi,%r8), %r10b
	addb	$-48, %r10b
	cmpb	$9, %r10b
	ja	.LBB12_41
	imulq	$10, %r9, %r9
	jo	.LBB12_41
	movzbl	%r10b, %r10d
	testb	%sil, %sil
	je	.LBB12_40
	subq	%r10, %r9
	jo	.LBB12_41
	jmp	.LBB12_47
.LBB12_40:
	addq	%r10, %r9
	jo	.LBB12_41
.LBB12_47:
	incq	%r8
	cmpq	%r8, %rcx
	jne	.LBB12_37
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.9(%rip), %rax
	movq	%rax, (%rsp)
	movq	$21, 8(%rsp)
	#APP
	#NO_APP
	jmp	.LBB12_63
.LBB12_41:
	cmpq	$1, %rdx
	jne	.LBB12_49
	cmpb	$112, (%rax)
	jne	.LBB12_63
	leaq	24(%rsp), %rdi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state@GOTPCREL(%rip)
	movq	%rax, %rdi
	callq	optional_trait_methods::print_macros::write_isize_line
	jmp	.LBB12_44
.LBB12_49:
	cmpw	$8307, (%rax)
	jne	.LBB12_63
	movq	%rdx, %rdi
	addq	$-2, %rdi
	je	.LBB12_63
	movzbl	2(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB12_52
	cmpl	$43, %ecx
	jne	.LBB12_54
	xorl	%ecx, %ecx
	jmp	.LBB12_56
.LBB12_52:
	movb	$1, %cl
.LBB12_56:
	addq	$-3, %rdx
	je	.LBB12_63
	addq	$3, %rax
	movq	%rdx, %rdi
	jmp	.LBB12_58
.LBB12_54:
	addq	$2, %rax
	xorl	%ecx, %ecx
.LBB12_58:
	xorl	%edx, %edx
	xorl	%esi, %esi
.LBB12_59:
	movb	(%rax,%rdx), %r8b
	addb	$-48, %r8b
	cmpb	$9, %r8b
	ja	.LBB12_63
	imulq	$10, %rsi, %rsi
	jo	.LBB12_63
	movzbl	%r8b, %r8d
	testb	%cl, %cl
	je	.LBB12_62
	subq	%r8, %rsi
	jo	.LBB12_63
	jmp	.LBB12_65
.LBB12_62:
	addq	%r8, %rsi
	jo	.LBB12_63
.LBB12_65:
	incq	%rdx
	cmpq	%rdx, %rdi
	jne	.LBB12_59
	leaq	24(%rsp), %rdi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state@GOTPCREL(%rip)
	jmp	.LBB12_44
.LBB12_63:
	movl	$16, %esi
	movq	%r13, %rdi
	callq	optional_trait_methods::print_macros::write_line
.LBB12_44:
	movl	$128, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%rbp
	testq	%rax, %rax
	jne	.LBB12_2
	xorl	%ebx, %ebx
.LBB12_73:
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
.LBB12_69:
	.cfi_def_cfa_offset 1264
	movq	16(%rsp), %rsi
	jmp	.LBB12_72
.LBB12_71:
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.15(%rip), %rdi
	movl	$23, %esi
.LBB12_72:
	callq	optional_trait_methods::print_macros::write_line
	movl	$1, %ebx
	jmp	.LBB12_73
.Lfunc_end12:
	.size	run_optional_trait_methods, .Lfunc_end12-run_optional_trait_methods
	.cfi_endproc

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.0,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.0,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.0:
	.ascii	"Parse IncDec extension"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.0, 22

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.1,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.1,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.1:
	.ascii	"Parse Mul extension"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.1, 19

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.2,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.2,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.2:
	.ascii	"* "
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.2, 2

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.3,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.3,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.3:
	.ascii	"Parse ScaleFactor extension"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.3, 27

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.4,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.4,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.4:
	.ascii	"*~ "
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.4, 3

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.5,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.5,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.5:
	.ascii	"s "
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.5, 2

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.6,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.6:
	.ascii	"Unsupported cmd!"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.6, 16

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7,@object
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7:
	.ascii	"IncDec extension"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7, 16

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.8,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.8,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.8:
	.ascii	"Mul extension"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.8, 13

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.9,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.9,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.9:
	.ascii	"ScaleFactor extension"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.9, 21

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.10,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.10,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.10:
	.byte	10
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.10, 1

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.11,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.11:
	.asciz	"src/print_macros.rs"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.11, 20

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.12,@object
	.section	.data.rel.ro..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.12:
	.quad	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.11
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.12, 24

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.13,@object
	.section	.data.rel.ro..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.13:
	.quad	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.11
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.13, 24

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.14,@object
	.section	.data.rel.ro..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.14:
	.quad	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.11
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.14, 24

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.15,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.15,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.15:
	.ascii	"Invalid implementation!"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.15, 23

	.globl	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::mul
	.type	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::mul,@function
<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::mul = <optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	.ident	"rustc version 1.97.0-nightly (9ec5d5f32 2026-04-21)"
	.section	".note.GNU-stack","",@progbits
