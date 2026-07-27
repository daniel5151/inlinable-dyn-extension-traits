__rustc::rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::basic::BasicTarget>>::run:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 32], rdi
	test	rcx, rcx
	je	.LBB1_10
	mov	rbx, rcx
	mov	r15, rdx
	shl	rbx, 4
	lea	r14, [rip + .LJTI1_0]
	mov	r12, qword ptr [rip + write@GOTPCREL]
	lea	r13, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	xor	ebp, ebp
.LBB1_2:
	mov	rax, qword ptr [r15 + rbp]
	movsxd	rax, dword ptr [r14 + 4*rax]
	add	rax, r14
	jmp	rax
.LBB1_3:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	jmp	.LBB1_4
.LBB1_8:
	mov	rdi, qword ptr [rsp + 24]
	call	<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB1_9
.LBB1_5:
	mov	rsi, qword ptr [r15 + rbp + 8]
	mov	rdi, qword ptr [rsp + 24]
	call	<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB1_9
.LBB1_6:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	jmp	.LBB1_4
.LBB1_7:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 21
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
.LBB1_4:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	call	r12
	mov	edx, 1
	mov	edi, 1
	mov	rsi, r13
	call	r12
.LBB1_9:
	add	rbp, 16
	cmp	rbx, rbp
	jne	.LBB1_2
.LBB1_10:
	mov	rax, qword ptr [rsp + 32]
	mov	qword ptr [rax], 0
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end1:
.LJTI1_0:
	.long	.LBB1_8-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_6-.LJTI1_0
	.long	.LBB1_7-.LJTI1_0

<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end2:

<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end3:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r11, rsp
	sub	r11, 131072
.LBB4_1:
	sub	rsp, 4096
	mov	qword ptr [rsp], 0
	cmp	rsp, r11
	jne	.LBB4_1
	sub	rsp, 776
	mov	qword ptr [rsp + 8], 0
	xor	eax, eax
.LBB4_3:
	mov	qword ptr [rsp + rax + 776], 0
	add	rax, 16
	cmp	rax, 131072
	jne	.LBB4_3
	xorps	xmm0, xmm0
	lea	rdi, [rsp + 16]
	movaps	xmmword ptr [rdi + 16], xmm0
	movaps	xmmword ptr [rdi], xmm0
	mov	esi, 32
	call	qword ptr [rip + getrandom::getrandom@GOTPCREL]
	test	eax, eax
	jne	.LBB4_30
	movaps	xmm0, xmmword ptr [rsp + 16]
	movaps	xmm1, xmmword ptr [rsp + 32]
	lea	rsi, [rsp + 368]
	movaps	xmmword ptr [rsi + 16], xmm1
	movaps	xmmword ptr [rsi], xmm0
	lea	rdx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
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
	lea	rbp, [rip + .LJTI4_0]
.LBB4_6:
	mov	rcx, rax
	cmp	rax, 64
	jb	.LBB4_8
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	ecx, ecx
.LBB4_8:
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
	ja	.LBB4_20
	movsxd	rsi, dword ptr [rbp + 4*rdx]
	add	rsi, rbp
	jmp	rsi
.LBB4_10:
	cmp	rcx, 63
	jne	.LBB4_12
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB4_12:
	mov	ecx, dword ptr [rsp + 4*rax + 48]
	inc	rax
	mov	qword ptr [rsp + 304], rax
	imul	rdx, rcx, 1374389535
	shr	rdx, 37
	imul	edx, edx, 100
	sub	ecx, edx
	mov	edx, 1
	jmp	.LBB4_23
.LBB4_13:
	mov	edx, 4
	jmp	.LBB4_14
.LBB4_15:
	mov	edx, 2
	jmp	.LBB4_14
.LBB4_16:
	mov	edx, 3
.LBB4_14:
.LBB4_23:
	mov	qword ptr [rsp + r15 + 768], rdx
	mov	qword ptr [rsp + r15 + 776], rcx
	add	r15, 16
	cmp	r15, 131080
	jne	.LBB4_6
	jmp	.LBB4_24
.LBB4_17:
	cmp	rcx, 63
	jne	.LBB4_19
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB4_19:
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
	jmp	.LBB4_23
.LBB4_20:
	cmp	rcx, 63
	jne	.LBB4_22
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB4_22:
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
	jmp	.LBB4_23
.LBB4_24:
	lea	rax, [rsp + 776]
	lea	rcx, [rsp + 448]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 64
	#APP
	#NO_APP
	mov	rdx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	lea	rbx, [rsp + 448]
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::basic::BasicTarget>>::run
	cmp	byte ptr [rbx], 0
	je	.LBB4_29
	mov	rsi, qword ptr [rsp + 456]
	test	rsi, rsi
	je	.LBB4_27
	mov	rdx, qword ptr [rsp + 464]
	jmp	.LBB4_28
.LBB4_27:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	edx, 23
.LBB4_28:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB4_29:
	xor	eax, eax
	add	rsp, 131848
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB4_30:
	lea	rcx, [rsp + 48]
	mov	dword ptr [rcx], eax
	lea	rsi, [rsp + 448]
	mov	qword ptr [rsi], rcx
	mov	rax, qword ptr [rip + <getrandom::error::Error as core::fmt::Display>::fmt@GOTPCREL]
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	lea	rdx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	call	qword ptr [rip + core::panicking::panic_fmt@GOTPCREL]
.Lfunc_end4:
.LJTI4_0:
	.long	.LBB4_14-.LJTI4_0
	.long	.LBB4_10-.LJTI4_0
	.long	.LBB4_15-.LJTI4_0
	.long	.LBB4_16-.LJTI4_0
	.long	.LBB4_13-.LJTI4_0
	.long	.LBB4_17-.LJTI4_0

rust_eh_personality:
	ret
.Lfunc_end5:

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0:
	.ascii	"Unsupported cmd!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2:
	.asciz	"%d\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.ascii	"Mul extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.ascii	"ScaleFactor extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.zero	8

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7:
	.asciz	"\025from_entropy failed: \300"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8:
	.asciz	"/home/daprilik/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.6.4/src/lib.rs"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9:
	.quad	.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8
	.asciz	"^\000\000\000\000\000\000\000\237\001\000\000\r\000\000"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
