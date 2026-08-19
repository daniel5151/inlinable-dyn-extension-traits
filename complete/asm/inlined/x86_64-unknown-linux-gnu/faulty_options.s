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
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.4(%rip), %rdi
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
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.6(%rip), %rdx
.LBB4_6:
	movl	$32, %esi
	movq	$-1, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB4_10:
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7(%rip), %rdx
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
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.8(%rip), %rcx
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
	movq	%rsp, %rax
	movq	$0, (%rax)
	leaq	168(%rsp), %r14
	movl	$1040, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	xorps	%xmm0, %xmm0
	leaq	32(%rsp), %r15
	movaps	%xmm0, 112(%r15)
	movaps	%xmm0, 96(%r15)
	movaps	%xmm0, 80(%r15)
	movaps	%xmm0, 64(%r15)
	movaps	%xmm0, 48(%r15)
	movaps	%xmm0, 32(%r15)
	movaps	%xmm0, 16(%r15)
	movaps	%xmm0, (%r15)
	movq	<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip), %r12
	leaq	.LJTI12_0(%rip), %rbx
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.3(%rip), %r13
.LBB12_1:
	movl	$128, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*%r12
	testq	%rax, %rax
	je	.LBB12_75
	testq	%rdx, %rdx
	je	.LBB12_1
	cmpq	$2, %rdx
	je	.LBB12_9
	cmpq	$1, %rdx
	jne	.LBB12_11
	movzbl	(%rax), %eax
	cmpl	$112, %eax
	je	.LBB12_18
	cmpl	$45, %eax
	je	.LBB12_17
	cmpl	$43, %eax
	jne	.LBB12_74
	andq	$-256, %rbp
	movl	$2, %eax
	cmpq	$1, %rax
	movl	$2, %ecx
	adcq	$-1, %rcx
	movslq	(%rbx,%rcx,4), %rcx
	addq	%rbx, %rcx
	jmpq	*%rcx
.LBB12_9:
	cmpw	$11563, (%rax)
	jne	.LBB12_11
	andq	$-256, %rbp
	orq	$2, %rbp
	movl	$2, %eax
	cmpq	$1, %rax
	movl	$2, %ecx
	adcq	$-1, %rcx
	movslq	(%rbx,%rcx,4), %rcx
	addq	%rbx, %rcx
	jmpq	*%rcx
.LBB12_11:
	cmpw	$8234, (%rax)
	setne	%sil
	movq	%rdx, %rcx
	addq	$-2, %rcx
	sete	%dil
	orb	%sil, %dil
	je	.LBB12_14
.LBB12_12:
	cmpq	$3, %rdx
	jb	.LBB12_33
	leaq	-3(%rdx), %rsi
	jmp	.LBB12_32
.LBB12_14:
	movzbl	2(%rax), %esi
	cmpl	$45, %esi
	je	.LBB12_19
	cmpl	$43, %esi
	jne	.LBB12_22
	xorl	%esi, %esi
	jmp	.LBB12_20
.LBB12_17:
	andq	$-256, %rbp
	incq	%rbp
	movl	$2, %eax
	cmpq	$1, %rax
	movl	$2, %ecx
	adcq	$-1, %rcx
	movslq	(%rbx,%rcx,4), %rcx
	addq	%rbx, %rcx
	jmpq	*%rcx
.LBB12_18:
	xorl	%eax, %eax
	jmp	.LBB12_65
.LBB12_19:
	movb	$1, %sil
.LBB12_20:
	movq	%rdx, %r8
	addq	$-3, %r8
	je	.LBB12_31
	leaq	3(%rax), %rdi
	jmp	.LBB12_23
.LBB12_22:
	leaq	2(%rax), %rdi
	xorl	%esi, %esi
	movq	%rcx, %r8
.LBB12_23:
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
.LBB12_24:
	movb	(%rdi,%r10), %r11b
	addb	$-48, %r11b
	cmpb	$9, %r11b
	ja	.LBB12_12
	imulq	$10, %r9, %r9
	jo	.LBB12_12
	movzbl	%r11b, %r11d
	testb	%sil, %sil
	je	.LBB12_28
	subq	%r11, %r9
	jo	.LBB12_12
	jmp	.LBB12_29
.LBB12_28:
	addq	%r11, %r9
	jo	.LBB12_12
.LBB12_29:
	incq	%r10
	cmpq	%r10, %r8
	jne	.LBB12_24
	movl	$3, %eax
	jmp	.LBB12_64
.LBB12_31:
	xorl	%esi, %esi
.LBB12_32:
	movzwl	(%rax), %edi
	xorl	$32298, %edi
	movzbl	2(%rax), %r8d
	xorl	$32, %r8d
	orw	%di, %r8w
	setne	%dil
	testq	%rsi, %rsi
	sete	%r8b
	orb	%dil, %r8b
	je	.LBB12_37
.LBB12_33:
	cmpw	$8307, (%rax)
	setne	%sil
	testq	%rcx, %rcx
	sete	%dil
	orb	%sil, %dil
	jne	.LBB12_74
	movzbl	2(%rax), %esi
	cmpl	$45, %esi
	je	.LBB12_40
	cmpl	$43, %esi
	jne	.LBB12_43
	xorl	%esi, %esi
	jmp	.LBB12_41
.LBB12_37:
	movzbl	3(%rax), %edi
	cmpl	$45, %edi
	je	.LBB12_52
	cmpl	$43, %edi
	jne	.LBB12_55
	xorl	%edi, %edi
	jmp	.LBB12_53
.LBB12_40:
	movb	$1, %sil
.LBB12_41:
	addq	$-3, %rdx
	je	.LBB12_74
	addq	$3, %rax
	jmp	.LBB12_44
.LBB12_43:
	addq	$2, %rax
	xorl	%esi, %esi
	movq	%rcx, %rdx
.LBB12_44:
	xorl	%edi, %edi
	xorl	%ecx, %ecx
.LBB12_45:
	movb	(%rax,%rdi), %r8b
	addb	$-48, %r8b
	cmpb	$9, %r8b
	ja	.LBB12_74
	imulq	$10, %rcx, %rcx
	jo	.LBB12_74
	movzbl	%r8b, %r8d
	testb	%sil, %sil
	je	.LBB12_49
	subq	%r8, %rcx
	jo	.LBB12_74
	jmp	.LBB12_50
.LBB12_49:
	addq	%r8, %rcx
	jo	.LBB12_74
.LBB12_50:
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB12_45
	movl	$1, %eax
	movq	%rcx, %rbp
	jmp	.LBB12_65
.LBB12_52:
	movb	$1, %dil
.LBB12_53:
	movq	%rdx, %rsi
	addq	$-4, %rsi
	je	.LBB12_33
	leaq	4(%rax), %r8
	jmp	.LBB12_56
.LBB12_55:
	leaq	3(%rax), %r8
	xorl	%edi, %edi
.LBB12_56:
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
.LBB12_57:
	movb	(%r8,%r10), %r11b
	addb	$-48, %r11b
	cmpb	$9, %r11b
	ja	.LBB12_33
	imulq	$10, %r9, %r9
	jo	.LBB12_33
	movzbl	%r11b, %r11d
	testb	%dil, %dil
	je	.LBB12_61
	subq	%r11, %r9
	jo	.LBB12_33
	jmp	.LBB12_62
.LBB12_61:
	addq	%r11, %r9
	jo	.LBB12_33
.LBB12_62:
	incq	%r10
	cmpq	%r10, %rsi
	jne	.LBB12_57
	movl	$4, %eax
.LBB12_64:
	movq	%r9, %rbp
.LBB12_65:
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$-1, %rcx
	movslq	(%rbx,%rcx,4), %rcx
	addq	%rbx, %rcx
	jmpq	*%rcx
.LBB12_66:
	movq	%rsp, %rdi
	testb	$1, %al
	je	.LBB12_71
	movq	%rbp, %rsi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state@GOTPCREL(%rip)
	jmp	.LBB12_1
.LBB12_68:
	testb	%bpl, %bpl
	je	.LBB12_72
	movzbl	%bpl, %eax
	cmpl	$1, %eax
	je	.LBB12_74
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc@GOTPCREL(%rip)
	cmpl	$1, 8(%rsp)
	je	.LBB12_73
	jmp	.LBB12_78
.LBB12_71:
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state@GOTPCREL(%rip)
	movq	%rax, %rdi
	callq	optional_trait_methods::print_macros::write_isize_line
	jmp	.LBB12_1
.LBB12_72:
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	callq	*<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc@GOTPCREL(%rip)
	cmpb	$0, 8(%rsp)
	je	.LBB12_1
.LBB12_73:
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB12_77
.LBB12_74:
	movl	$16, %esi
	movq	%r13, %rdi
	callq	optional_trait_methods::print_macros::write_line
	jmp	.LBB12_1
.LBB12_75:
	xorl	%eax, %eax
.LBB12_76:
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
.LBB12_77:
	.cfi_def_cfa_offset 1264
	movq	24(%rsp), %rsi
	jmp	.LBB12_79
.LBB12_78:
	leaq	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.9(%rip), %rdi
	movl	$23, %esi
.LBB12_79:
	callq	optional_trait_methods::print_macros::write_line
	movl	$1, %eax
	jmp	.LBB12_76
.Lfunc_end12:
	.size	run_optional_trait_methods, .Lfunc_end12-run_optional_trait_methods
	.cfi_endproc
	.section	.rodata.run_optional_trait_methods,"a",@progbits
	.p2align	2, 0x0
.LJTI12_0:
	.long	.LBB12_66-.LJTI12_0
	.long	.LBB12_68-.LJTI12_0
	.long	.LBB12_74-.LJTI12_0
	.long	.LBB12_74-.LJTI12_0

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.0,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.0,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.0:
	.ascii	"* "
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.0, 2

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.1,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.1,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.1:
	.ascii	"*~ "
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.1, 3

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.2,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.2,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.2:
	.ascii	"s "
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.2, 2

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.3,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.3:
	.ascii	"Unsupported cmd!"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.3, 16

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.4,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.4,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.4:
	.byte	10
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.4, 1

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.5,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.5:
	.asciz	"src/print_macros.rs"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.5, 20

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.6,@object
	.section	.data.rel.ro..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.6:
	.quad	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.5
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.6, 24

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7,@object
	.section	.data.rel.ro..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7:
	.quad	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.5
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.7, 24

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.8,@object
	.section	.data.rel.ro..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.8:
	.quad	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.5
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.8, 24

	.type	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.9,@object
	.section	.rodata..Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.9,"a",@progbits
.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.9:
	.ascii	"Invalid implementation!"
	.size	.Lanon.e1b5db914fe3a57d7d2dc395a5eecb23.9, 23

	.globl	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::mul
	.type	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::mul,@function
<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::mul = <optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	.ident	"rustc version 1.97.0-nightly (9ec5d5f32 2026-04-21)"
	.section	".note.GNU-stack","",@progbits
