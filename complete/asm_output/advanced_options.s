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
	je	.LBB1_13
	cmp	eax, 3
	jne	.LBB1_15
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	jmp	.LBB1_8
.LBB1_13:
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
	jmp	.LBB1_8
.LBB1_22:
	mov	rdi, r12
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB1_23
.LBB1_12:
	mov	rsi, qword ptr [r15 + rbx + 8]
	mov	rdi, r12
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB1_23
.LBB1_15:
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	dword ptr [rsp + 8], 1
	jne	.LBB1_18
	mov	rax, qword ptr [rsp + 16]
	test	rax, rax
	jne	.LBB1_10
	mov	rdi, rbp
	mov	rsi, r12
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	cmp	byte ptr [rsp + 8], 0
	je	.LBB1_20
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
.LBB1_8:
	cmp	byte ptr [rsp + 8], 0
	je	.LBB1_23
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
	jmp	.LBB1_23
.LBB1_18:
	mov	rdi, rbp
	mov	rsi, r12
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	cmp	byte ptr [rsp + 8], 0
	jne	.LBB1_19
.LBB1_23:
	add	rbx, 16
	cmp	r14, rbx
	jne	.LBB1_4
	mov	rax, qword ptr [rsp + 32]
	xor	ecx, ecx
	jmp	.LBB1_25
.LBB1_1:
	xor	ecx, ecx
	jmp	.LBB1_2
.LBB1_19:
	mov	rax, qword ptr [rsp + 16]
	test	rax, rax
	je	.LBB1_20
.LBB1_10:
	mov	rcx, qword ptr [rsp + 24]
.LBB1_21:
	mov	rdx, qword ptr [rsp + 32]
	mov	qword ptr [rdx + 8], rax
	mov	rax, rdx
	mov	qword ptr [rdx + 16], rcx
	mov	ecx, 1
.LBB1_25:
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
.LBB1_20:
	xor	eax, eax
	jmp	.LBB1_21
.Lfunc_end1:
.LJTI1_0:
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_12-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_11-.LJTI1_0

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec:
	dec	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end2:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc:
	inc	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end3:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul:
	mov	rax, rdi
	cmp	rdx, 7
	jne	.LBB4_2
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rax + 16], 28
	mov	ecx, 1
	jmp	.LBB4_3
.LBB4_2:
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rsi], rdx
	xor	ecx, ecx
.LBB4_3:
	mov	qword ptr [rax], rcx
	ret
.Lfunc_end4:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end5:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end6:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r11, rsp
	sub	r11, 131072
.LBB7_1:
	sub	rsp, 4096
	mov	qword ptr [rsp], 0
	cmp	rsp, r11
	jne	.LBB7_1
	sub	rsp, 776
	mov	qword ptr [rsp + 8], 0
	xor	eax, eax
.LBB7_3:
	mov	qword ptr [rsp + rax + 776], 0
	add	rax, 16
	cmp	rax, 131072
	jne	.LBB7_3
	xorps	xmm0, xmm0
	lea	rdi, [rsp + 16]
	movaps	xmmword ptr [rdi + 16], xmm0
	movaps	xmmword ptr [rdi], xmm0
	mov	esi, 32
	call	qword ptr [rip + getrandom::getrandom@GOTPCREL]
	test	eax, eax
	jne	.LBB7_27
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
	lea	rbp, [rip + .LJTI7_0]
.LBB7_6:
	mov	rdx, rax
	cmp	rax, 64
	jb	.LBB7_8
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	edx, edx
.LBB7_8:
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
	ja	.LBB7_13
	movsxd	rsi, dword ptr [rbp + 4*rcx]
	add	rsi, rbp
	jmp	rsi
.LBB7_16:
	cmp	rdx, 63
	jne	.LBB7_18
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB7_18:
	mov	edx, dword ptr [rsp + 4*rax + 80]
	inc	rax
	mov	qword ptr [rsp + 336], rax
	imul	rcx, rdx, 1374389535
	shr	rcx, 37
	imul	ecx, ecx, 100
	sub	edx, ecx
	mov	ecx, 1
	jmp	.LBB7_23
.LBB7_21:
	mov	ecx, 4
	jmp	.LBB7_22
.LBB7_19:
	mov	ecx, 2
	jmp	.LBB7_22
.LBB7_20:
	mov	ecx, 3
.LBB7_22:
.LBB7_23:
	mov	qword ptr [rsp + r15 + 768], rcx
	mov	qword ptr [rsp + r15 + 776], rdx
	add	r15, 16
	cmp	r15, 131080
	jne	.LBB7_6
	jmp	.LBB7_24
.LBB7_13:
	cmp	rdx, 63
	jne	.LBB7_15
	mov	rdi, r14
	mov	esi, 4
	mov	rdx, rbx
	call	r12
	xor	eax, eax
.LBB7_15:
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
	jmp	.LBB7_23
.LBB7_24:
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
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::run
	cmp	byte ptr [rbx], 0
	je	.LBB7_12
	mov	rsi, qword ptr [rsp + 456]
	test	rsi, rsi
	je	.LBB7_10
	mov	rdx, qword ptr [rsp + 464]
	jmp	.LBB7_11
.LBB7_10:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	edx, 23
.LBB7_11:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB7_12:
	xor	eax, eax
	add	rsp, 131848
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB7_27:
	lea	rcx, [rsp + 80]
	mov	dword ptr [rcx], eax
	lea	rsi, [rsp + 448]
	mov	qword ptr [rsi], rcx
	mov	rax, qword ptr [rip + <getrandom::error::Error as core::fmt::Display>::fmt@GOTPCREL]
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	lea	rdx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	call	qword ptr [rip + core::panicking::panic_fmt@GOTPCREL]
.Lfunc_end7:
.LJTI7_0:
	.long	.LBB7_22-.LJTI7_0
	.long	.LBB7_16-.LJTI7_0
	.long	.LBB7_19-.LJTI7_0
	.long	.LBB7_20-.LJTI7_0
	.long	.LBB7_21-.LJTI7_0

rust_eh_personality:
	ret
.Lfunc_end8:

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
	.ascii	"multiplying by 7 is unlucky!"

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
