	.file	"optional_trait_methods.3ca598eefe5c186-cgu.0"
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
	leaq	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.4(%rip), %rdi
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
	leaq	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.6(%rip), %rdx
.LBB4_6:
	movl	$32, %esi
	movq	$-1, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB4_10:
	leaq	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.7(%rip), %rdx
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
	leaq	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.8(%rip), %rcx
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

	.section	.text.<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::get_state,"ax",@progbits
	.globl	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::get_state
	.type	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::get_state,@function
<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::get_state:
	.cfi_startproc
	movq	(%rdi), %rax
	retq
.Lfunc_end7:
	.size	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::get_state, .Lfunc_end7-<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::get_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::set_state,"ax",@progbits
	.globl	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::set_state
	.type	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::set_state,@function
<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::set_state:
	.cfi_startproc
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::set_state, .Lfunc_end8-<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::set_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::scale_factor,"ax",@progbits
	.globl	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::scale_factor
	.type	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::scale_factor,@function
<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::scale_factor:
	.cfi_startproc
	movq	%rdi, %rax
	movq	$0, 8(%rdi)
	movq	$1, (%rdi)
	retq
.Lfunc_end9:
	.size	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::scale_factor, .Lfunc_end9-<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::scale_factor
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::dec,"ax",@progbits
	.globl	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::dec
	.type	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::dec,@function
<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::dec:
	.cfi_startproc
	movq	%rdi, %rax
	movq	$0, 8(%rdi)
	movq	$1, (%rdi)
	retq
.Lfunc_end10:
	.size	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::dec, .Lfunc_end10-<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::dec
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
	leaq	8(%rsp), %rbx
	movq	$0, (%rbx)
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
	leaq	.LJTI11_0(%rip), %r13
	leaq	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.3(%rip), %r12
.LBB11_1:
	movl	$128, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*%rbp
	testq	%rax, %rax
	je	.LBB11_69
	testq	%rdx, %rdx
	je	.LBB11_1
	cmpq	$2, %rdx
	je	.LBB11_10
	cmpq	$1, %rdx
	jne	.LBB11_11
	movzbl	(%rax), %eax
	cmpl	$112, %eax
	je	.LBB11_63
	cmpl	$45, %eax
	je	.LBB11_9
	cmpl	$43, %eax
	jne	.LBB11_59
	movq	(%rsp), %rsi
	andq	$-256, %rsi
	movl	$2, %eax
	cmpq	$1, %rax
	movl	$2, %ecx
	adcq	$-1, %rcx
	movslq	(%r13,%rcx,4), %rcx
	addq	%r13, %rcx
	jmpq	*%rcx
.LBB11_10:
	cmpw	$11563, (%rax)
	je	.LBB11_32
.LBB11_11:
	cmpw	$8234, (%rax)
	setne	%sil
	movq	%rdx, %rcx
	addq	$-2, %rcx
	sete	%dil
	orb	%sil, %dil
	je	.LBB11_12
.LBB11_24:
	cmpq	$3, %rdx
	jb	.LBB11_43
	leaq	-3(%rdx), %rdi
	jmp	.LBB11_26
.LBB11_12:
	movzbl	2(%rax), %esi
	cmpl	$45, %esi
	je	.LBB11_13
	cmpl	$43, %esi
	jne	.LBB11_15
	xorl	%edi, %edi
	jmp	.LBB11_17
.LBB11_13:
	movb	$1, %dil
.LBB11_17:
	movq	%rdx, %r9
	addq	$-3, %r9
	je	.LBB11_70
	leaq	3(%rax), %r8
	jmp	.LBB11_19
.LBB11_15:
	leaq	2(%rax), %r8
	xorl	%edi, %edi
	movq	%rcx, %r9
.LBB11_19:
	xorl	%r10d, %r10d
	xorl	%esi, %esi
.LBB11_20:
	movb	(%r8,%r10), %r11b
	addb	$-48, %r11b
	cmpb	$9, %r11b
	ja	.LBB11_24
	imulq	$10, %rsi, %rsi
	jo	.LBB11_24
	movzbl	%r11b, %r11d
	testb	%dil, %dil
	je	.LBB11_23
	subq	%r11, %rsi
	jo	.LBB11_24
	jmp	.LBB11_30
.LBB11_23:
	addq	%r11, %rsi
	jo	.LBB11_24
.LBB11_30:
	incq	%r10
	cmpq	%r10, %r9
	jne	.LBB11_20
	movl	$3, %eax
	jmp	.LBB11_64
.LBB11_70:
	xorl	%edi, %edi
.LBB11_26:
	movzwl	(%rax), %esi
	xorl	$32298, %esi
	movzbl	2(%rax), %r8d
	xorl	$32, %r8d
	orw	%si, %r8w
	setne	%sil
	testq	%rdi, %rdi
	sete	%r8b
	orb	%sil, %r8b
	je	.LBB11_27
.LBB11_43:
	cmpw	$8307, (%rax)
	setne	%sil
	testq	%rcx, %rcx
	sete	%dil
	orb	%sil, %dil
	jne	.LBB11_59
	movzbl	2(%rax), %esi
	cmpl	$45, %esi
	je	.LBB11_45
	cmpl	$43, %esi
	jne	.LBB11_50
	xorl	%edi, %edi
	jmp	.LBB11_52
.LBB11_27:
	movzbl	3(%rax), %esi
	cmpl	$45, %esi
	je	.LBB11_28
	cmpl	$43, %esi
	jne	.LBB11_34
	xorl	%r8d, %r8d
	jmp	.LBB11_36
.LBB11_45:
	movb	$1, %dil
.LBB11_52:
	addq	$-3, %rdx
	je	.LBB11_59
	addq	$3, %rax
	jmp	.LBB11_54
.LBB11_50:
	addq	$2, %rax
	xorl	%edi, %edi
	movq	%rcx, %rdx
.LBB11_54:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
.LBB11_55:
	movb	(%rax,%rcx), %r8b
	addb	$-48, %r8b
	cmpb	$9, %r8b
	ja	.LBB11_59
	imulq	$10, %rsi, %rsi
	jo	.LBB11_59
	movzbl	%r8b, %r8d
	testb	%dil, %dil
	je	.LBB11_58
	subq	%r8, %rsi
	jo	.LBB11_59
	jmp	.LBB11_61
.LBB11_58:
	addq	%r8, %rsi
	jo	.LBB11_59
.LBB11_61:
	incq	%rcx
	cmpq	%rcx, %rdx
	jne	.LBB11_55
	movl	$1, %eax
	jmp	.LBB11_64
.LBB11_28:
	movb	$1, %r8b
.LBB11_36:
	movq	%rdx, %rdi
	addq	$-4, %rdi
	je	.LBB11_43
	leaq	4(%rax), %r9
	jmp	.LBB11_38
.LBB11_34:
	leaq	3(%rax), %r9
	xorl	%r8d, %r8d
.LBB11_38:
	xorl	%r10d, %r10d
	xorl	%esi, %esi
.LBB11_39:
	movb	(%r9,%r10), %r11b
	addb	$-48, %r11b
	cmpb	$9, %r11b
	ja	.LBB11_43
	imulq	$10, %rsi, %rsi
	jo	.LBB11_43
	movzbl	%r11b, %r11d
	testb	%r8b, %r8b
	je	.LBB11_42
	subq	%r11, %rsi
	jo	.LBB11_43
	jmp	.LBB11_47
.LBB11_42:
	addq	%r11, %rsi
	jo	.LBB11_43
.LBB11_47:
	incq	%r10
	cmpq	%r10, %rdi
	jne	.LBB11_39
	movl	$4, %eax
	jmp	.LBB11_64
.LBB11_32:
	movq	(%rsp), %rsi
	andq	$-256, %rsi
	orq	$2, %rsi
	movl	$2, %eax
	cmpq	$1, %rax
	movl	$2, %ecx
	adcq	$-1, %rcx
	movslq	(%r13,%rcx,4), %rcx
	addq	%r13, %rcx
	jmpq	*%rcx
.LBB11_65:
	testb	$1, %al
	movq	%rsi, (%rsp)
	movq	%rbx, %rdi
	je	.LBB11_66
	callq	*<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::set_state@GOTPCREL(%rip)
	jmp	.LBB11_1
.LBB11_66:
	callq	*<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::get_state@GOTPCREL(%rip)
	movq	%rax, %rdi
	callq	optional_trait_methods::print_macros::write_isize_line
	jmp	.LBB11_1
.LBB11_63:
	xorl	%eax, %eax
	movq	(%rsp), %rsi
.LBB11_64:
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$-1, %rcx
	movslq	(%r13,%rcx,4), %rcx
	addq	%r13, %rcx
	jmpq	*%rcx
.LBB11_68:
	movq	%rsi, (%rsp)
.LBB11_59:
	movl	$16, %esi
	movq	%r12, %rdi
	callq	optional_trait_methods::print_macros::write_line
	jmp	.LBB11_1
.LBB11_9:
	movq	(%rsp), %rsi
	andq	$-256, %rsi
	incq	%rsi
	movl	$2, %eax
	cmpq	$1, %rax
	movl	$2, %ecx
	adcq	$-1, %rcx
	movslq	(%r13,%rcx,4), %rcx
	addq	%r13, %rcx
	jmpq	*%rcx
.LBB11_69:
	xorl	%eax, %eax
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
.Lfunc_end11:
	.size	run_optional_trait_methods, .Lfunc_end11-run_optional_trait_methods
	.cfi_endproc
	.section	.rodata.run_optional_trait_methods,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.long	.LBB11_65-.LJTI11_0
	.long	.LBB11_68-.LJTI11_0
	.long	.LBB11_68-.LJTI11_0
	.long	.LBB11_68-.LJTI11_0

	.type	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.0,@object
	.section	.rodata..Lanon.8a3eefaac0577fd381b65ca3f8b7f328.0,"a",@progbits
.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.0:
	.ascii	"* "
	.size	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.0, 2

	.type	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.1,@object
	.section	.rodata..Lanon.8a3eefaac0577fd381b65ca3f8b7f328.1,"a",@progbits
.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.1:
	.ascii	"*~ "
	.size	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.1, 3

	.type	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.2,@object
	.section	.rodata..Lanon.8a3eefaac0577fd381b65ca3f8b7f328.2,"a",@progbits
.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.2:
	.ascii	"s "
	.size	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.2, 2

	.type	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.3,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.3:
	.ascii	"Unsupported cmd!"
	.size	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.3, 16

	.type	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.4,@object
	.section	.rodata..Lanon.8a3eefaac0577fd381b65ca3f8b7f328.4,"a",@progbits
.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.4:
	.byte	10
	.size	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.4, 1

	.type	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.5,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.5:
	.asciz	"src/print_macros.rs"
	.size	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.5, 20

	.type	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.6,@object
	.section	.data.rel.ro..Lanon.8a3eefaac0577fd381b65ca3f8b7f328.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.6:
	.quad	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.5
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"
	.size	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.6, 24

	.type	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.7,@object
	.section	.data.rel.ro..Lanon.8a3eefaac0577fd381b65ca3f8b7f328.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.7:
	.quad	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.5
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"
	.size	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.7, 24

	.type	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.8,@object
	.section	.data.rel.ro..Lanon.8a3eefaac0577fd381b65ca3f8b7f328.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.8:
	.quad	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.5
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"
	.size	.Lanon.8a3eefaac0577fd381b65ca3f8b7f328.8, 24

	.globl	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::inc
	.type	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::inc,@function
<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::inc = <optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::dec
	.globl	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::mul
	.type	<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::mul,@function
<optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::mul = <optional_trait_methods::using_opt_result::targets::basic::BasicTarget as optional_trait_methods::using_opt_result::target::Target>::scale_factor
	.ident	"rustc version 1.97.0-nightly (9ec5d5f32 2026-04-21)"
	.section	".note.GNU-stack","",@progbits
