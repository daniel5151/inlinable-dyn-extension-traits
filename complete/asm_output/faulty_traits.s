__rustc::rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::faulty::FaultyTarget>>::run:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	shl	rbx, 4
	lea	r12, [rip + .LJTI1_0]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	xor	ebp, ebp
.LBB1_1:
	cmp	rbx, rbp
	je	.LBB1_2
	mov	rax, qword ptr [r14 + rbp]
	movsxd	rax, dword ptr [r12 + 4*rax]
	add	rax, r12
	jmp	rax
.LBB1_7:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	call	r13
	jmp	.LBB1_5
.LBB1_9:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	mov	rdi, r15
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	test	rax, rax
	jne	.LBB1_13
	jmp	.LBB1_11
.LBB1_8:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	mov	rdi, r15
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	jmp	.LBB1_12
.LBB1_10:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
.LBB1_11:
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec
	jmp	.LBB1_12
.LBB1_4:
	mov	rdi, r15
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
.LBB1_5:
	xor	eax, eax
	jmp	.LBB1_12
.LBB1_6:
	mov	rsi, qword ptr [r14 + rbp + 8]
	mov	rdi, r15
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state
.LBB1_12:
	add	rbp, 16
	test	rax, rax
	je	.LBB1_1
	jmp	.LBB1_13
.LBB1_2:
	xor	eax, eax
.LBB1_13:
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end1:
.LJTI1_0:
	.long	.LBB1_4-.LJTI1_0
	.long	.LBB1_6-.LJTI1_0
	.long	.LBB1_8-.LJTI1_0
	.long	.LBB1_10-.LJTI1_0
	.long	.LBB1_9-.LJTI1_0
	.long	.LBB1_7-.LJTI1_0
	.long	.LBB1_7-.LJTI1_0

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end2:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state:
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end3:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	edx, 38
	ret
.Lfunc_end4:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc:
	inc	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end5:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r11, rsp
	sub	r11, 131072
.LBB6_1:
	sub	rsp, 4096
	mov	qword ptr [rsp], 0
	cmp	rsp, r11
	jne	.LBB6_1
	sub	rsp, 776
	mov	qword ptr [rsp + 8], 0
	xor	eax, eax
.LBB6_3:
	mov	qword ptr [rsp + rax + 776], 0
	add	rax, 16
	cmp	rax, 131072
	jne	.LBB6_3
	xorps	xmm0, xmm0
	lea	rdi, [rsp + 16]
	movaps	xmmword ptr [rdi + 16], xmm0
	movaps	xmmword ptr [rdi], xmm0
	mov	esi, 32
	call	qword ptr [rip + getrandom::getrandom@GOTPCREL]
	test	eax, eax
	jne	.LBB6_27
	movaps	xmm0, xmmword ptr [rsp + 16]
	movaps	xmm1, xmmword ptr [rsp + 32]
	lea	rsi, [rsp + 368]
	movaps	xmmword ptr [rsi + 16], xmm1
	movaps	xmmword ptr [rsi], xmm0
	lea	rdx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	lea	rbx, [rsp + 400]
	mov	r15d, 8
	mov	ecx, 8
	mov	rdi, rbx
	call	qword ptr [rip + rand_chacha::guts::init_chacha::fn_impl::<ppv_lite86::x86_64::SseMachine<ppv_lite86::x86_64::NoS3, ppv_lite86::x86_64::NoS4, ppv_lite86::x86_64::NoNI>>@GOTPCREL]
	lea	r14, [rsp + 448]
	mov	rdi, r14
	call	qword ptr [rip + <rand_chacha::chacha::Array64<u32> as core::default::Default>::default@GOTPCREL]
	mov	qword ptr [r14 + 256], 64
	movaps	xmm0, xmmword ptr [rbx]
	movaps	xmm1, xmmword ptr [rbx + 16]
	movaps	xmm2, xmmword ptr [rbx + 32]
	movaps	xmmword ptr [r14 + 272], xmm0
	movaps	xmmword ptr [r14 + 288], xmm1
	movaps	xmmword ptr [r14 + 304], xmm2
	lea	rbx, [rsp + 48]
	mov	edx, 320
	mov	rdi, rbx
	mov	rsi, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	lea	r14, [rsp + 320]
	mov	rax, qword ptr [r14 - 16]
	mov	r12, qword ptr [rip + rand_chacha::guts::refill_wide::fn_impl::<ppv_lite86::x86_64::SseMachine<ppv_lite86::x86_64::NoS3, ppv_lite86::x86_64::NoS4, ppv_lite86::x86_64::NoNI>>@GOTPCREL]
	mov	r13d, 3435973837
	lea	rbp, [rip + .LJTI6_0]
.LBB6_6:
	mov	rcx, rax
	cmp	rax, 64
	jb	.LBB6_8
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	ecx, ecx
.LBB6_8:
	mov	esi, dword ptr [rsp + 4*rcx + 48]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 304], rax
	imul	rdi, rsi, 613566757
	shr	rdi, 32
	mov	edx, esi
	sub	edx, edi
	shr	edx
	add	edx, edi
	shr	edx, 2
	lea	edi, [8*rdx]
	sub	edx, edi
	add	edx, esi
	cmp	edx, 5
	ja	.LBB6_20
	movsxd	rsi, dword ptr [rbp + 4*rdx]
	add	rsi, rbp
	jmp	rsi
.LBB6_10:
	cmp	rcx, 63
	jne	.LBB6_12
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB6_12:
	mov	ecx, dword ptr [rsp + 4*rax + 48]
	inc	rax
	mov	qword ptr [rsp + 304], rax
	imul	rdx, rcx, 1374389535
	shr	rdx, 37
	imul	edx, edx, 100
	sub	ecx, edx
	mov	edx, 1
	jmp	.LBB6_23
.LBB6_13:
	mov	edx, 4
	jmp	.LBB6_14
.LBB6_15:
	mov	edx, 2
	jmp	.LBB6_14
.LBB6_16:
	mov	edx, 3
.LBB6_14:
.LBB6_23:
	mov	qword ptr [rsp + r15 + 768], rdx
	mov	qword ptr [rsp + r15 + 776], rcx
	add	r15, 16
	cmp	r15, 131080
	jne	.LBB6_6
	jmp	.LBB6_24
.LBB6_17:
	cmp	rcx, 63
	jne	.LBB6_19
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB6_19:
	mov	ecx, dword ptr [rsp + 4*rax + 48]
	inc	rax
	mov	qword ptr [rsp + 304], rax
	mov	rdx, rcx
	imul	rdx, r13
	shr	rdx, 35
	add	edx, edx
	lea	edx, [rdx + 4*rdx]
	sub	ecx, edx
	cmp	ecx, 7
	mov	edx, 8
	cmove	ecx, edx
	mov	edx, 5
	jmp	.LBB6_23
.LBB6_20:
	cmp	rcx, 63
	jne	.LBB6_22
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB6_22:
	mov	ecx, dword ptr [rsp + 4*rax + 48]
	inc	rax
	mov	qword ptr [rsp + 304], rax
	mov	rdx, rcx
	imul	rdx, r13
	shr	rdx, 34
	lea	edx, [rdx + 4*rdx]
	sub	ecx, edx
	cmp	ecx, 1
	adc	ecx, 0
	mov	edx, 6
	jmp	.LBB6_23
.LBB6_24:
	lea	rax, [rsp + 776]
	lea	rcx, [rsp + 448]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 64
	#APP
	#NO_APP
	mov	rsi, qword ptr [rcx]
	mov	rdx, qword ptr [rcx + 8]
	lea	rdi, [rsp + 8]
	call	<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::faulty::FaultyTarget>>::run
	test	rax, rax
	je	.LBB6_26
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	edi, 1
	mov	rsi, rax
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB6_26:
	xor	eax, eax
	add	rsp, 131848
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB6_27:
	lea	rcx, [rsp + 48]
	mov	dword ptr [rcx], eax
	lea	rsi, [rsp + 448]
	mov	qword ptr [rsi], rcx
	mov	rax, qword ptr [rip + <getrandom::error::Error as core::fmt::Display>::fmt@GOTPCREL]
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	lea	rdx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	call	qword ptr [rip + core::panicking::panic_fmt@GOTPCREL]
.Lfunc_end6:
.LJTI6_0:
	.long	.LBB6_14-.LJTI6_0
	.long	.LBB6_10-.LJTI6_0
	.long	.LBB6_15-.LJTI6_0
	.long	.LBB6_16-.LJTI6_0
	.long	.LBB6_13-.LJTI6_0
	.long	.LBB6_17-.LJTI6_0

rust_eh_personality:
	ret
.Lfunc_end7:

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0:
	.ascii	"Unsupported cmd!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2:
	.asciz	"%d\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.ascii	"`dec` operations are not supported yet"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.zero	8

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.asciz	"\025from_entropy failed: \300"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7:
	.asciz	"/home/daprilik/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.6.4/src/lib.rs"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8:
	.quad	.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7
	.asciz	"^\000\000\000\000\000\000\000\237\001\000\000\r\000\000"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
