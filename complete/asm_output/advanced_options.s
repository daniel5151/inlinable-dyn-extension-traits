__rustc::rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::run:
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
	lea	rbp, [rsp + 8]
	xor	ebx, ebx
.LBB1_4:
	mov	rax, qword ptr [r15 + rbx]
	movsxd	rcx, dword ptr [r13 + 4*rax]
	add	rcx, r13
	jmp	rcx
.LBB1_5:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, rbp
	mov	rsi, r12
	cmp	eax, 2
	je	.LBB1_14
	cmp	eax, 3
	jne	.LBB1_16
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	jmp	.LBB1_8
.LBB1_14:
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
	jmp	.LBB1_8
.LBB1_23:
	mov	rdi, r12
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB1_24
.LBB1_13:
	mov	rsi, qword ptr [r15 + rbx + 8]
	mov	rdi, r12
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB1_24
.LBB1_16:
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	dword ptr [rsp + 8], 1
	jne	.LBB1_19
	mov	rax, qword ptr [rsp + 16]
	test	rax, rax
	jne	.LBB1_10
	mov	rdi, rbp
	mov	rsi, r12
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	cmp	byte ptr [rsp + 8], 0
	je	.LBB1_21
	jmp	.LBB1_9
.LBB1_11:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	#APP
	#NO_APP
	mov	rdx, qword ptr [r15 + rbx + 8]
	mov	rdi, rbp
	mov	rsi, r12
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul
	jmp	.LBB1_8
.LBB1_12:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 21
	#APP
	#NO_APP
	mov	rdx, qword ptr [r15 + rbx + 8]
	mov	rdi, rbp
	mov	rsi, r12
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor
.LBB1_8:
	cmp	byte ptr [rsp + 8], 0
	je	.LBB1_24
.LBB1_9:
	mov	rax, qword ptr [rsp + 16]
	test	rax, rax
	jne	.LBB1_10
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	call	rbp
	lea	rbp, [rsp + 8]
.LBB1_24:
	add	rbx, 16
	cmp	r14, rbx
	jne	.LBB1_4
	jmp	.LBB1_25
.LBB1_19:
	mov	rdi, rbp
	mov	rsi, r12
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	cmp	byte ptr [rsp + 8], 0
	je	.LBB1_24
	mov	rax, qword ptr [rsp + 16]
	test	rax, rax
	je	.LBB1_21
.LBB1_10:
	mov	rcx, qword ptr [rsp + 24]
.LBB1_22:
	mov	rdx, qword ptr [rsp + 32]
	mov	qword ptr [rdx + 8], rax
	mov	rax, rdx
	mov	qword ptr [rdx + 16], rcx
	mov	ecx, 1
	jmp	.LBB1_26
.LBB1_25:
	mov	rax, qword ptr [rsp + 32]
	xor	ecx, ecx
.LBB1_26:
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	.LBB1_2
.LBB1_1:
	xor	ecx, ecx
.LBB1_2:
	mov	qword ptr [rax], rcx
	ret
.LBB1_21:
	xor	eax, eax
	jmp	.LBB1_22
.Lfunc_end1:
.LJTI1_0:
	.long	.LBB1_23-.LJTI1_0
	.long	.LBB1_13-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_11-.LJTI1_0
	.long	.LBB1_12-.LJTI1_0

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor:
	mov	rax, rdi
	mov	qword ptr [rsi + 8], rdx
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end2:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec:
	dec	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end3:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc:
	inc	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end4:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul:
	mov	rax, rdi
	cmp	rdx, 7
	jne	.LBB5_2
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rax + 16], 28
	mov	ecx, 1
	jmp	.LBB5_3
.LBB5_2:
	imul	rdx, qword ptr [rsi + 8]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rsi], rdx
	xor	ecx, ecx
.LBB5_3:
	mov	qword ptr [rax], rcx
	ret
.Lfunc_end5:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end6:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end7:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r11, rsp
	sub	r11, 131072
.LBB8_1:
	sub	rsp, 4096
	mov	qword ptr [rsp], 0
	cmp	rsp, r11
	jne	.LBB8_1
	sub	rsp, 776
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 1
	xor	eax, eax
.LBB8_3:
	mov	qword ptr [rsp + rax + 776], 0
	add	rax, 16
	cmp	rax, 131072
	jne	.LBB8_3
	xorps	xmm0, xmm0
	lea	rdi, [rsp + 16]
	movaps	xmmword ptr [rdi + 16], xmm0
	movaps	xmmword ptr [rdi], xmm0
	mov	esi, 32
	call	qword ptr [rip + getrandom::getrandom@GOTPCREL]
	test	eax, eax
	jne	.LBB8_30
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
	lea	rbp, [rip + .LJTI8_0]
.LBB8_6:
	mov	rcx, rax
	cmp	rax, 64
	jb	.LBB8_8
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	ecx, ecx
.LBB8_8:
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
	ja	.LBB8_20
	movsxd	rsi, dword ptr [rbp + 4*rdx]
	add	rsi, rbp
	jmp	rsi
.LBB8_10:
	cmp	rcx, 63
	jne	.LBB8_12
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB8_12:
	mov	ecx, dword ptr [rsp + 4*rax + 48]
	inc	rax
	mov	qword ptr [rsp + 304], rax
	imul	rdx, rcx, 1374389535
	shr	rdx, 37
	imul	edx, edx, 100
	sub	ecx, edx
	mov	edx, 1
	jmp	.LBB8_23
.LBB8_13:
	mov	edx, 4
	jmp	.LBB8_14
.LBB8_15:
	mov	edx, 2
	jmp	.LBB8_14
.LBB8_16:
	mov	edx, 3
.LBB8_14:
.LBB8_23:
	mov	qword ptr [rsp + r15 + 768], rdx
	mov	qword ptr [rsp + r15 + 776], rcx
	add	r15, 16
	cmp	r15, 131080
	jne	.LBB8_6
	jmp	.LBB8_24
.LBB8_17:
	cmp	rcx, 63
	jne	.LBB8_19
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB8_19:
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
	jmp	.LBB8_23
.LBB8_20:
	cmp	rcx, 63
	jne	.LBB8_22
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB8_22:
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
	jmp	.LBB8_23
.LBB8_24:
	lea	rax, [rsp + 776]
	lea	rcx, [rsp + 448]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 64
	#APP
	#NO_APP
	mov	rdx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	lea	rbx, [rsp + 448]
	mov	rsi, rsp
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::run
	cmp	byte ptr [rbx], 0
	je	.LBB8_29
	mov	rsi, qword ptr [rsp + 456]
	test	rsi, rsi
	je	.LBB8_27
	mov	rdx, qword ptr [rsp + 464]
	jmp	.LBB8_28
.LBB8_27:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	mov	edx, 23
.LBB8_28:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB8_29:
	xor	eax, eax
	add	rsp, 131848
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB8_30:
	lea	rcx, [rsp + 48]
	mov	dword ptr [rcx], eax
	lea	rsi, [rsp + 448]
	mov	qword ptr [rsi], rcx
	mov	rax, qword ptr [rip + <getrandom::error::Error as core::fmt::Display>::fmt@GOTPCREL]
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	lea	rdx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	call	qword ptr [rip + core::panicking::panic_fmt@GOTPCREL]
.Lfunc_end8:
.LJTI8_0:
	.long	.LBB8_14-.LJTI8_0
	.long	.LBB8_10-.LJTI8_0
	.long	.LBB8_15-.LJTI8_0
	.long	.LBB8_16-.LJTI8_0
	.long	.LBB8_13-.LJTI8_0
	.long	.LBB8_17-.LJTI8_0

rust_eh_personality:
	ret
.Lfunc_end9:

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
	.ascii	"multiplying by 7 is unlucky!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8:
	.asciz	"\025from_entropy failed: \300"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9:
	.asciz	"/home/daprilik/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.6.4/src/lib.rs"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10:
	.quad	.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9
	.asciz	"^\000\000\000\000\000\000\000\237\001\000\000\r\000\000"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
