	.file	"optional_trait_methods.58189bda259f41cc-cgu.0"
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
	leaq	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.4(%rip), %rdi
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
	leaq	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.6(%rip), %rdx
.LBB4_6:
	movl	$32, %esi
	movq	$-1, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB4_10:
	leaq	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.7(%rip), %rdx
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
	leaq	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.8(%rip), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	*core::slice::index::slice_index_fail@GOTPCREL(%rip)
.Lfunc_end5:
	.size	optional_trait_methods::print_macros::write_all, .Lfunc_end5-optional_trait_methods::print_macros::write_all
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state,"ax",@progbits
	.globl	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state
	.type	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state,@function
<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state:
	.cfi_startproc
	movq	(%rdi), %rax
	retq
.Lfunc_end6:
	.size	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state, .Lfunc_end6-<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state,"ax",@progbits
	.globl	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state
	.type	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state,@function
<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state:
	.cfi_startproc
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state, .Lfunc_end7-<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec,"ax",@progbits
	.globl	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec
	.type	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec,@function
<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec:
	.cfi_startproc
	decq	(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec, .Lfunc_end8-<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc,"ax",@progbits
	.globl	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	.type	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc,@function
<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc:
	.cfi_startproc
	incq	(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc, .Lfunc_end9-<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul,"ax",@progbits
	.globl	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul
	.type	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul,@function
<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul:
	.cfi_startproc
	cmpq	$7, %rsi
	jne	.LBB10_2
	leaq	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.9(%rip), %rax
	jmp	.LBB10_3
.LBB10_2:
	imulq	8(%rdi), %rsi
	imulq	(%rdi), %rsi
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
.LBB10_3:
	movl	$28, %edx
	retq
.Lfunc_end10:
	.size	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul, .Lfunc_end10-<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor,"ax",@progbits
	.globl	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor
	.type	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor,@function
<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor:
	.cfi_startproc
	movq	%rsi, 8(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor, .Lfunc_end11-<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor
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
.Lfunc_end12:
	.size	<optional_trait_methods::line_reader::LineReader as core::default::Default>::default, .Lfunc_end12-<optional_trait_methods::line_reader::LineReader as core::default::Default>::default
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
	subq	$1192, %rsp
	.cfi_def_cfa_offset 1248
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsp, %rbx
	movq	$0, (%rbx)
	movq	$1, 8(%rbx)
	leaq	152(%rsp), %r14
	movl	$1040, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	xorps	%xmm0, %xmm0
	leaq	16(%rsp), %r15
	movaps	%xmm0, 112(%r15)
	movaps	%xmm0, 96(%r15)
	movaps	%xmm0, 80(%r15)
	movaps	%xmm0, 64(%r15)
	movaps	%xmm0, 48(%r15)
	movaps	%xmm0, 32(%r15)
	movaps	%xmm0, 16(%r15)
	movaps	%xmm0, (%r15)
	movq	<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip), %rbp
	leaq	.LJTI13_0(%rip), %r12
.LBB13_1:
	movl	$128, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*%rbp
	testq	%rax, %rax
	je	.LBB13_2
	testq	%rdx, %rdx
	je	.LBB13_1
	cmpq	$2, %rdx
	je	.LBB13_11
	cmpq	$1, %rdx
	jne	.LBB13_12
	movzbl	(%rax), %eax
	cmpl	$45, %eax
	je	.LBB13_9
	cmpl	$43, %eax
	jne	.LBB13_46
	andq	$-256, %r13
	movl	$2, %eax
	cmpq	$1, %rax
	movl	$2, %ecx
	adcq	$-1, %rcx
	movslq	(%r12,%rcx,4), %rcx
	addq	%r12, %rcx
	jmpq	*%rcx
.LBB13_11:
	cmpw	$11563, (%rax)
	jne	.LBB13_12
	andq	$-256, %r13
	orq	$2, %r13
	movl	$2, %eax
	cmpq	$1, %rax
	movl	$2, %ecx
	adcq	$-1, %rcx
	movslq	(%r12,%rcx,4), %rcx
	addq	%r12, %rcx
	jmpq	*%rcx
.LBB13_12:
	cmpw	$8234, (%rax)
	setne	%sil
	movq	%rdx, %rcx
	addq	$-2, %rcx
	sete	%dil
	orb	%sil, %dil
	je	.LBB13_13
.LBB13_25:
	cmpq	$3, %rdx
	jb	.LBB13_43
	leaq	-3(%rdx), %rdi
	jmp	.LBB13_27
.LBB13_13:
	movzbl	2(%rax), %esi
	cmpl	$45, %esi
	je	.LBB13_14
	cmpl	$43, %esi
	jne	.LBB13_16
	xorl	%edi, %edi
	jmp	.LBB13_18
.LBB13_9:
	andq	$-256, %r13
	incq	%r13
	movl	$2, %eax
	cmpq	$1, %rax
	movl	$2, %ecx
	adcq	$-1, %rcx
	movslq	(%r12,%rcx,4), %rcx
	addq	%r12, %rcx
	jmpq	*%rcx
.LBB13_14:
	movb	$1, %dil
.LBB13_18:
	movq	%rdx, %r9
	addq	$-3, %r9
	je	.LBB13_86
	leaq	3(%rax), %r8
	jmp	.LBB13_20
.LBB13_16:
	leaq	2(%rax), %r8
	xorl	%edi, %edi
	movq	%rcx, %r9
.LBB13_20:
	xorl	%r10d, %r10d
	xorl	%esi, %esi
.LBB13_21:
	movb	(%r8,%r10), %r11b
	addb	$-48, %r11b
	cmpb	$9, %r11b
	ja	.LBB13_25
	imulq	$10, %rsi, %rsi
	jo	.LBB13_25
	movzbl	%r11b, %r11d
	testb	%dil, %dil
	je	.LBB13_24
	subq	%r11, %rsi
	jo	.LBB13_25
	jmp	.LBB13_31
.LBB13_24:
	addq	%r11, %rsi
	jo	.LBB13_25
.LBB13_31:
	incq	%r10
	cmpq	%r10, %r9
	jne	.LBB13_21
	movl	$3, %eax
	jmp	.LBB13_70
.LBB13_86:
	xorl	%edi, %edi
.LBB13_27:
	movzwl	(%rax), %esi
	xorl	$32298, %esi
	movzbl	2(%rax), %r8d
	xorl	$32, %r8d
	orw	%si, %r8w
	setne	%sil
	testq	%rdi, %rdi
	sete	%r8b
	orb	%sil, %r8b
	jne	.LBB13_52
	movzbl	3(%rax), %esi
	cmpl	$45, %esi
	je	.LBB13_29
	cmpl	$43, %esi
	jne	.LBB13_34
	xorl	%r8d, %r8d
	jmp	.LBB13_36
.LBB13_29:
	movb	$1, %r8b
.LBB13_36:
	movq	%rdx, %rdi
	addq	$-4, %rdi
	je	.LBB13_51
	leaq	4(%rax), %r9
	jmp	.LBB13_38
.LBB13_34:
	leaq	3(%rax), %r9
	xorl	%r8d, %r8d
.LBB13_38:
	xorl	%r10d, %r10d
	xorl	%esi, %esi
.LBB13_39:
	movb	(%r9,%r10), %r11b
	addb	$-48, %r11b
	cmpb	$9, %r11b
	ja	.LBB13_43
	imulq	$10, %rsi, %rsi
	jo	.LBB13_43
	movzbl	%r11b, %r11d
	testb	%r8b, %r8b
	je	.LBB13_42
	subq	%r11, %rsi
	jo	.LBB13_43
	jmp	.LBB13_49
.LBB13_42:
	addq	%r11, %rsi
	jo	.LBB13_43
.LBB13_49:
	incq	%r10
	cmpq	%r10, %rdi
	jne	.LBB13_39
	movl	$4, %eax
	jmp	.LBB13_70
.LBB13_43:
	testq	%rdx, %rdx
	je	.LBB13_65
	cmpq	$1, %rdx
	jne	.LBB13_52
	movb	(%rax), %al
.LBB13_46:
	cmpb	$112, %al
	jne	.LBB13_65
	movq	%r13, %rsi
	xorl	%eax, %eax
.LBB13_70:
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$-1, %rcx
	movslq	(%r12,%rcx,4), %rcx
	addq	%r12, %rcx
	movq	%rsi, %r13
	jmpq	*%rcx
.LBB13_71:
	movq	%rbx, %rdi
	cmpl	$1, %eax
	jne	.LBB13_73
	movq	%r13, %rsi
	callq	*<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state@GOTPCREL(%rip)
	jmp	.LBB13_83
.LBB13_81:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul@GOTPCREL(%rip)
	jmp	.LBB13_83
.LBB13_82:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor@GOTPCREL(%rip)
	jmp	.LBB13_83
.LBB13_74:
	cmpb	$2, %r13b
	je	.LBB13_78
	movzbl	%r13b, %eax
	movq	%rbx, %rdi
	cmpl	$1, %eax
	je	.LBB13_80
	callq	*<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc@GOTPCREL(%rip)
	jmp	.LBB13_77
.LBB13_73:
	callq	*<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state@GOTPCREL(%rip)
	movq	%rax, %rdi
	callq	optional_trait_methods::print_macros::write_isize_line
	jmp	.LBB13_66
.LBB13_78:
	movq	%rbx, %rdi
	callq	*<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB13_84
	movq	%rbx, %rdi
.LBB13_80:
	callq	*<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec@GOTPCREL(%rip)
.LBB13_77:
	testq	%rax, %rax
	jne	.LBB13_84
	jmp	.LBB13_66
.LBB13_51:
	movl	$2, %ecx
.LBB13_52:
	cmpw	$8307, (%rax)
	setne	%dl
	testq	%rcx, %rcx
	sete	%sil
	orb	%dl, %sil
	je	.LBB13_53
.LBB13_65:
	movl	$16, %esi
	leaq	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.3(%rip), %rdi
	callq	optional_trait_methods::print_macros::write_line
.LBB13_66:
	xorl	%eax, %eax
.LBB13_83:
	testq	%rax, %rax
	je	.LBB13_1
	jmp	.LBB13_84
.LBB13_53:
	movzbl	2(%rax), %edx
	cmpl	$45, %edx
	je	.LBB13_54
	cmpl	$43, %edx
	jne	.LBB13_56
	xorl	%edx, %edx
	jmp	.LBB13_58
.LBB13_54:
	movb	$1, %dl
.LBB13_58:
	decq	%rcx
	je	.LBB13_65
	addq	$3, %rax
	jmp	.LBB13_60
.LBB13_56:
	addq	$2, %rax
	xorl	%edx, %edx
.LBB13_60:
	xorl	%edi, %edi
	xorl	%esi, %esi
.LBB13_61:
	movb	(%rax,%rdi), %r8b
	addb	$-48, %r8b
	cmpb	$9, %r8b
	ja	.LBB13_65
	imulq	$10, %rsi, %rsi
	jo	.LBB13_65
	movzbl	%r8b, %r8d
	testb	%dl, %dl
	je	.LBB13_64
	subq	%r8, %rsi
	jo	.LBB13_65
	jmp	.LBB13_68
.LBB13_64:
	addq	%r8, %rsi
	jo	.LBB13_65
.LBB13_68:
	incq	%rdi
	cmpq	%rdi, %rcx
	jne	.LBB13_61
	movl	$1, %eax
	jmp	.LBB13_70
.LBB13_2:
	xorl	%eax, %eax
.LBB13_85:
	addq	$1192, %rsp
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
.LBB13_84:
	.cfi_def_cfa_offset 1248
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	optional_trait_methods::print_macros::write_line
	movl	$1, %eax
	jmp	.LBB13_85
.Lfunc_end13:
	.size	run_optional_trait_methods, .Lfunc_end13-run_optional_trait_methods
	.cfi_endproc
	.section	.rodata.run_optional_trait_methods,"a",@progbits
	.p2align	2, 0x0
.LJTI13_0:
	.long	.LBB13_71-.LJTI13_0
	.long	.LBB13_74-.LJTI13_0
	.long	.LBB13_81-.LJTI13_0
	.long	.LBB13_82-.LJTI13_0

	.type	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.0,@object
	.section	.rodata..Lanon.e0d9c4ad9140dd6335184fb4b166ad26.0,"a",@progbits
.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.0:
	.ascii	"* "
	.size	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.0, 2

	.type	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.1,@object
	.section	.rodata..Lanon.e0d9c4ad9140dd6335184fb4b166ad26.1,"a",@progbits
.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.1:
	.ascii	"*~ "
	.size	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.1, 3

	.type	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.2,@object
	.section	.rodata..Lanon.e0d9c4ad9140dd6335184fb4b166ad26.2,"a",@progbits
.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.2:
	.ascii	"s "
	.size	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.2, 2

	.type	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.3,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.3:
	.ascii	"Unsupported cmd!"
	.size	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.3, 16

	.type	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.4,@object
	.section	.rodata..Lanon.e0d9c4ad9140dd6335184fb4b166ad26.4,"a",@progbits
.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.4:
	.byte	10
	.size	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.4, 1

	.type	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.5,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.5:
	.asciz	"src/print_macros.rs"
	.size	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.5, 20

	.type	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.6,@object
	.section	.data.rel.ro..Lanon.e0d9c4ad9140dd6335184fb4b166ad26.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.6:
	.quad	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.5
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"
	.size	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.6, 24

	.type	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.7,@object
	.section	.data.rel.ro..Lanon.e0d9c4ad9140dd6335184fb4b166ad26.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.7:
	.quad	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.5
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"
	.size	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.7, 24

	.type	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.8,@object
	.section	.data.rel.ro..Lanon.e0d9c4ad9140dd6335184fb4b166ad26.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.8:
	.quad	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.5
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"
	.size	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.8, 24

	.type	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.9,@object
	.section	.rodata..Lanon.e0d9c4ad9140dd6335184fb4b166ad26.9,"a",@progbits
.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.9:
	.ascii	"multiplying by 7 is unlucky!"
	.size	.Lanon.e0d9c4ad9140dd6335184fb4b166ad26.9, 28

	.ident	"rustc version 1.97.0-nightly (9ec5d5f32 2026-04-21)"
	.section	".note.GNU-stack","",@progbits
