__rustc::rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::run:
	mov	rax, rdi
	test	rcx, rcx
	je	.LBB1_1
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 32], rax
	shl	r14, 4
	lea	r13, [rip + .LJTI1_0]
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	xor	ebp, ebp
.LBB1_4:
	mov	rax, qword ptr [r15 + rbp]
	movsxd	rcx, dword ptr [r13 + 4*rax]
	add	rcx, r13
	jmp	rcx
.LBB1_5:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 16
	lea	rcx, [rsp + 8]
	#APP
	#NO_APP
	cmp	eax, 2
	je	.LBB1_11
	cmp	eax, 3
	je	.LBB1_13
	lea	rdi, [rsp + 8]
	mov	rsi, r12
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	dword ptr [rsp + 8], 1
	jne	.LBB1_14
	jmp	.LBB1_8
.LBB1_11:
	lea	rdi, [rsp + 8]
	mov	rsi, r12
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	byte ptr [rsp + 8], 0
	je	.LBB1_17
.LBB1_8:
	mov	rax, qword ptr [rsp + 16]
	test	rax, rax
	jne	.LBB1_9
	jmp	.LBB1_13
.LBB1_16:
	mov	rdi, r12
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB1_17
.LBB1_10:
	mov	rsi, qword ptr [r15 + rbp + 8]
	mov	rdi, r12
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB1_17
.LBB1_12:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
.LBB1_13:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	call	rbx
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	call	rbx
.LBB1_17:
	add	rbp, 16
	cmp	r14, rbp
	jne	.LBB1_4
	mov	rax, qword ptr [rsp + 32]
	xor	ecx, ecx
	jmp	.LBB1_19
.LBB1_1:
	xor	ecx, ecx
	jmp	.LBB1_2
.LBB1_9:
	mov	rcx, qword ptr [rsp + 24]
	jmp	.LBB1_15
.LBB1_14:
	xor	eax, eax
.LBB1_15:
	mov	rdx, qword ptr [rsp + 32]
	mov	qword ptr [rdx + 8], rax
	mov	rax, rdx
	mov	qword ptr [rdx + 16], rcx
	mov	ecx, 1
.LBB1_19:
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
.LBB1_2:
	mov	qword ptr [rax], rcx
	ret
.Lfunc_end1:
.LJTI1_0:
	.long	.LBB1_16-.LJTI1_0
	.long	.LBB1_10-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_12-.LJTI1_0

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc:
	inc	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end2:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end3:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end4:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r11, rsp
	sub	r11, 131072
.LBB5_1:
	sub	rsp, 4096
	mov	qword ptr [rsp], 0
	cmp	rsp, r11
	jne	.LBB5_1
	sub	rsp, 776
	mov	qword ptr [rsp + 8], 0
	xor	eax, eax
.LBB5_3:
	mov	qword ptr [rsp + rax + 776], 0
	add	rax, 16
	cmp	rax, 131072
	jne	.LBB5_3
	xorps	xmm0, xmm0
	lea	rdi, [rsp + 16]
	movaps	xmmword ptr [rdi + 16], xmm0
	movaps	xmmword ptr [rdi], xmm0
	mov	esi, 32
	call	qword ptr [rip + getrandom::getrandom@GOTPCREL]
	test	eax, eax
	jne	.LBB5_27
	movaps	xmm0, xmmword ptr [rsp + 16]
	movaps	xmm1, xmmword ptr [rsp + 32]
	lea	rsi, [rsp + 48]
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
	lea	rbx, [rsp + 80]
	mov	edx, 320
	mov	rdi, rbx
	mov	rsi, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	lea	r14, [rsp + 352]
	mov	rax, qword ptr [r14 - 16]
	mov	r12, qword ptr [rip + rand_chacha::guts::refill_wide::fn_impl::<ppv_lite86::x86_64::SseMachine<ppv_lite86::x86_64::NoS3, ppv_lite86::x86_64::NoS4, ppv_lite86::x86_64::NoNI>>@GOTPCREL]
	mov	r13d, 2863311531
	lea	rbp, [rip + .LJTI5_0]
.LBB5_6:
	mov	rdx, rax
	cmp	rax, 64
	jb	.LBB5_8
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	edx, edx
.LBB5_8:
	mov	ecx, dword ptr [rsp + 4*rdx + 80]
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 336], rax
	mov	rsi, rcx
	imul	rsi, r13
	shr	rsi, 34
	add	esi, esi
	lea	esi, [rsi + 2*rsi]
	sub	ecx, esi
	cmp	ecx, 4
	ja	.LBB5_13
	movsxd	rsi, dword ptr [rbp + 4*rcx]
	add	rsi, rbp
	jmp	rsi
.LBB5_16:
	cmp	rdx, 63
	jne	.LBB5_18
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB5_18:
	mov	edx, dword ptr [rsp + 4*rax + 80]
	inc	rax
	mov	qword ptr [rsp + 336], rax
	imul	rcx, rdx, 1374389535
	shr	rcx, 37
	imul	ecx, ecx, 100
	sub	edx, ecx
	mov	ecx, 1
	jmp	.LBB5_23
.LBB5_21:
	mov	ecx, 4
	jmp	.LBB5_22
.LBB5_19:
	mov	ecx, 2
	jmp	.LBB5_22
.LBB5_20:
	mov	ecx, 3
.LBB5_22:
.LBB5_23:
	mov	qword ptr [rsp + r15 + 768], rcx
	mov	qword ptr [rsp + r15 + 776], rdx
	add	r15, 16
	cmp	r15, 131080
	jne	.LBB5_6
	jmp	.LBB5_24
.LBB5_13:
	cmp	rdx, 63
	jne	.LBB5_15
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB5_15:
	mov	edx, dword ptr [rsp + 4*rax + 80]
	inc	rax
	mov	qword ptr [rsp + 336], rax
	mov	rcx, rdx
	mov	esi, 3435973837
	imul	rcx, rsi
	shr	rcx, 35
	add	ecx, ecx
	lea	ecx, [rcx + 4*rcx]
	sub	edx, ecx
	cmp	edx, 7
	mov	ecx, 8
	cmove	edx, ecx
	mov	ecx, 5
	jmp	.LBB5_23
.LBB5_24:
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
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::run
	cmp	byte ptr [rbx], 0
	je	.LBB5_12
	mov	rsi, qword ptr [rsp + 456]
	test	rsi, rsi
	je	.LBB5_10
	mov	rdx, qword ptr [rsp + 464]
	jmp	.LBB5_11
.LBB5_10:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	edx, 23
.LBB5_11:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB5_12:
	xor	eax, eax
	add	rsp, 131848
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB5_27:
	lea	rcx, [rsp + 80]
	mov	dword ptr [rcx], eax
	lea	rsi, [rsp + 448]
	mov	qword ptr [rsi], rcx
	mov	rax, qword ptr [rip + <getrandom::error::Error as core::fmt::Display>::fmt@GOTPCREL]
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	lea	rdx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	call	qword ptr [rip + core::panicking::panic_fmt@GOTPCREL]
.Lfunc_end5:
.LJTI5_0:
	.long	.LBB5_22-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_19-.LJTI5_0
	.long	.LBB5_20-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0

rust_eh_personality:
	ret
.Lfunc_end6:

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
	.zero	8

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.asciz	"\025from_entropy failed: \300"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7:
	.asciz	"/home/daprilik/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.6.4/src/lib.rs"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8:
	.quad	.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7
	.asciz	"^\000\000\000\000\000\000\000\237\001\000\000\r\000\000"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
