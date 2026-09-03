	.file	"optional_trait_methods.89ee81719338fa0f-cgu.0"
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
	leaq	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.2(%rip), %rdi
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
	leaq	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.4(%rip), %rdx
.LBB4_6:
	movl	$32, %esi
	movq	$-1, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB4_10:
	leaq	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.5(%rip), %rdx
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
	leaq	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.6(%rip), %rcx
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

	.section	.text.<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::get_state,"ax",@progbits
	.globl	<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::get_state
	.type	<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::get_state,@function
<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::get_state:
	.cfi_startproc
	movq	(%rdi), %rax
	retq
.Lfunc_end7:
	.size	<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::get_state, .Lfunc_end7-<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::get_state
	.cfi_endproc

	.section	.text.<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::set_state,"ax",@progbits
	.globl	<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::set_state
	.type	<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::set_state,@function
<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::set_state:
	.cfi_startproc
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::set_state, .Lfunc_end8-<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::set_state
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
	movq	$0, 8(%rsp)
	leaq	152(%rsp), %rbx
	movl	$1040, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	xorps	%xmm0, %xmm0
	leaq	16(%rsp), %rsi
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
	je	.LBB9_25
	leaq	152(%rsp), %rbx
	leaq	16(%rsp), %r14
	movq	<optional_trait_methods::line_reader::LineReader>::read_line@GOTPCREL(%rip), %r13
	leaq	8(%rsp), %r15
	movq	<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::get_state@GOTPCREL(%rip), %rbp
	leaq	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.1(%rip), %r12
.LBB9_2:
	testq	%rdx, %rdx
	je	.LBB9_24
	cmpq	$1, %rdx
	jne	.LBB9_6
	cmpb	$112, (%rax)
	jne	.LBB9_20
	movq	%r15, %rdi
	callq	*%rbp
	movq	%rax, %rdi
	callq	optional_trait_methods::print_macros::write_isize_line
	jmp	.LBB9_24
.LBB9_6:
	cmpw	$8307, (%rax)
	jne	.LBB9_20
	movq	%rdx, %rdi
	addq	$-2, %rdi
	je	.LBB9_20
	movzbl	2(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB9_9
	cmpl	$43, %ecx
	jne	.LBB9_11
	xorl	%ecx, %ecx
	jmp	.LBB9_13
.LBB9_9:
	movb	$1, %cl
.LBB9_13:
	addq	$-3, %rdx
	je	.LBB9_20
	addq	$3, %rax
	movq	%rdx, %rdi
	jmp	.LBB9_15
.LBB9_11:
	addq	$2, %rax
	xorl	%ecx, %ecx
.LBB9_15:
	xorl	%edx, %edx
	xorl	%esi, %esi
.LBB9_16:
	movb	(%rax,%rdx), %r8b
	addb	$-48, %r8b
	cmpb	$9, %r8b
	ja	.LBB9_20
	imulq	$10, %rsi, %rsi
	jo	.LBB9_20
	movzbl	%r8b, %r8d
	testb	%cl, %cl
	je	.LBB9_19
	subq	%r8, %rsi
	jo	.LBB9_20
	jmp	.LBB9_22
.LBB9_19:
	addq	%r8, %rsi
	jo	.LBB9_20
.LBB9_22:
	incq	%rdx
	cmpq	%rdx, %rdi
	jne	.LBB9_16
	movq	%r15, %rdi
	callq	*<optional_trait_methods::using_no_op::targets::basic::BasicTarget as optional_trait_methods::using_no_op::target::Target>::set_state@GOTPCREL(%rip)
	jmp	.LBB9_24
.LBB9_20:
	movl	$16, %esi
	movq	%r12, %rdi
	callq	optional_trait_methods::print_macros::write_line
.LBB9_24:
	movl	$128, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%r13
	testq	%rax, %rax
	jne	.LBB9_2
.LBB9_25:
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
.Lfunc_end9:
	.size	run_optional_trait_methods, .Lfunc_end9-run_optional_trait_methods
	.cfi_endproc

	.type	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.0,@object
	.section	.rodata..Lanon.4bc4be5817ce1f0564418f7a3d116f68.0,"a",@progbits
.Lanon.4bc4be5817ce1f0564418f7a3d116f68.0:
	.ascii	"s "
	.size	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.0, 2

	.type	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.1,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.4bc4be5817ce1f0564418f7a3d116f68.1:
	.ascii	"Unsupported cmd!"
	.size	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.1, 16

	.type	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.2,@object
	.section	.rodata..Lanon.4bc4be5817ce1f0564418f7a3d116f68.2,"a",@progbits
.Lanon.4bc4be5817ce1f0564418f7a3d116f68.2:
	.byte	10
	.size	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.2, 1

	.type	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.4bc4be5817ce1f0564418f7a3d116f68.3:
	.asciz	"src/print_macros.rs"
	.size	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.3, 20

	.type	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.4,@object
	.section	.data.rel.ro..Lanon.4bc4be5817ce1f0564418f7a3d116f68.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.4bc4be5817ce1f0564418f7a3d116f68.4:
	.quad	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.3
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"
	.size	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.4, 24

	.type	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.5,@object
	.section	.data.rel.ro..Lanon.4bc4be5817ce1f0564418f7a3d116f68.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.4bc4be5817ce1f0564418f7a3d116f68.5:
	.quad	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.3
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"
	.size	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.5, 24

	.type	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.6,@object
	.section	.data.rel.ro..Lanon.4bc4be5817ce1f0564418f7a3d116f68.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.4bc4be5817ce1f0564418f7a3d116f68.6:
	.quad	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.3
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"
	.size	.Lanon.4bc4be5817ce1f0564418f7a3d116f68.6, 24

	.ident	"rustc version 1.97.0-nightly (9ec5d5f32 2026-04-21)"
	.section	".note.GNU-stack","",@progbits
