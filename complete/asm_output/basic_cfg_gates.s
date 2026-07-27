__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::parse_command:
	test	rsi, rsi
	je	.LBB1_6
	cmp	rsi, 1
	jne	.LBB1_5
	cmp	byte ptr [rdi], 112
	jne	.LBB1_6
	xor	eax, eax
	ret
.LBB1_5:
	cmp	word ptr [rdi], 8307
	je	.LBB1_7
.LBB1_6:
	mov	eax, 2
	ret
.LBB1_7:
	push	rax
	add	rsi, -2
	add	rdi, 2
	call	optional_trait_methods::commands::parse_isize
	mov	rcx, rax
	and	ecx, 1
	mov	eax, 2
	sub	rax, rcx
	add	rsp, 8
	ret
.Lfunc_end1:

<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::handle:
	push	rax
	cmp	dword ptr [rsi], 1
	jne	.LBB2_2
	mov	rsi, qword ptr [rsi + 8]
	pop	rax
	jmp	<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
.LBB2_2:
	call	<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rsi, rax
	xor	eax, eax
	pop	rcx
	jmp	qword ptr [rip + printf@GOTPCREL]
.Lfunc_end2:

optional_trait_methods::commands::parse_isize:
	test	rsi, rsi
	je	.LBB3_12
	movzx	eax, byte ptr [rdi]
	cmp	eax, 45
	je	.LBB3_3
	xor	ecx, ecx
	cmp	eax, 43
	je	.LBB3_4
	jmp	.LBB3_6
.LBB3_3:
	mov	cl, 1
.LBB3_4:
	dec	rsi
	je	.LBB3_12
	inc	rdi
.LBB3_6:
	xor	eax, eax
	xor	r8d, r8d
	xor	edx, edx
.LBB3_7:
	cmp	rsi, r8
	je	.LBB3_13
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB3_11
	imul	rdx, rdx, 10
	jo	.LBB3_11
	movzx	r9d, r9b
	inc	r8
	add	rdx, r9
	jno	.LBB3_7
.LBB3_11:
	ret
.LBB3_12:
	xor	eax, eax
	ret
.LBB3_13:
	movzx	ecx, cl
	neg	rcx
	or	rcx, 1
	xor	eax, eax
	imul	rdx, rcx
	setno	al
	ret
.Lfunc_end3:

<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end4:

<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end5:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1208
	lea	rbx, [rsp + 24]
	mov	qword ptr [rbx], 0
	lea	r14, [rsp + 168]
	xor	r13d, r13d
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	r15, [rsp + 32]
	movaps	xmmword ptr [r15 + 112], xmm0
	movaps	xmmword ptr [r15 + 96], xmm0
	movaps	xmmword ptr [r15 + 80], xmm0
	movaps	xmmword ptr [r15 + 64], xmm0
	movaps	xmmword ptr [r15 + 48], xmm0
	movaps	xmmword ptr [r15 + 32], xmm0
	movaps	xmmword ptr [r15 + 16], xmm0
	movaps	xmmword ptr [r15], xmm0
	mov	rbp, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
.LBB6_1:
	xor	r12d, r12d
.LBB6_2:
	mov	rcx, rax
	mov	rax, r13
.LBB6_3:
	cmp	rcx, rax
	jb	.LBB6_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	rbp
	test	rax, rax
	jle	.LBB6_21
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB6_6:
	cmp	rax, rcx
	jb	.LBB6_22
	cmp	rax, 1024
	ja	.LBB6_22
	cmp	rcx, rax
	je	.LBB6_3
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB6_10:
	mov	sil, byte ptr [rsp + rcx + 167]
	mov	qword ptr [rsp + 1200], rcx
	cmp	sil, 10
	je	.LBB6_11
	cmp	r12, 127
	ja	.LBB6_17
	mov	byte ptr [rsp + r12 + 32], sil
	inc	r12
.LBB6_17:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB6_10
	mov	r13, rax
	jmp	.LBB6_2
.LBB6_21:
	lea	rax, [r12 - 129]
	cmp	rax, -128
	jb	.LBB6_22
	jmp	.LBB6_13
.LBB6_11:
	cmp	r12, 128
	ja	.LBB6_22
	test	r12, r12
	je	.LBB6_20
.LBB6_13:
	mov	rdi, r15
	mov	rsi, r12
	call	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::parse_command
	cmp	rax, 2
	jne	.LBB6_14
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	r12, qword ptr [rip + write@GOTPCREL]
	call	r12
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	call	r12
	jmp	.LBB6_20
.LBB6_14:
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], rdx
	mov	rdi, rbx
	lea	rsi, [rsp + 8]
	call	<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::handle
.LBB6_20:
	mov	r13, qword ptr [rsp + 1192]
	mov	rax, qword ptr [rsp + 1200]
	jmp	.LBB6_1
.LBB6_22:
	xor	eax, eax
	add	rsp, 1208
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end6:

rust_eh_personality:
	ret
.Lfunc_end7:

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0:
	.ascii	"panic!\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1:
	.ascii	"s "

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2:
	.ascii	"Unsupported cmd!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.asciz	"%d\n"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
