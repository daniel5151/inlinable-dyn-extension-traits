__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::basic::BasicTarget>>::parse_command:
	push	rbx
	mov	rbx, rdi
	test	rdx, rdx
	je	.LBB1_8
	cmp	rdx, 1
	jne	.LBB1_5
	cmp	byte ptr [rsi], 112
	jne	.LBB1_8
	mov	byte ptr [rbx], 0
	mov	qword ptr [rbx + 8], 0
	jmp	.LBB1_4
.LBB1_5:
	cmp	word ptr [rsi], 8307
	jne	.LBB1_8
	add	rdx, -2
	add	rsi, 2
	mov	rdi, rsi
	mov	rsi, rdx
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_8
	mov	byte ptr [rbx], 0
	mov	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 16], rdx
	jmp	.LBB1_4
.LBB1_8:
	mov	byte ptr [rbx], -1
.LBB1_4:
	mov	rax, rbx
	pop	rbx
	ret
.Lfunc_end1:

<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::basic::BasicTarget>>::handle:
	push	rbx
	sub	rsp, 16
	movzx	eax, byte ptr [rsi]
	test	eax, eax
	je	.LBB2_5
	cmp	eax, 1
	jne	.LBB2_8
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 16
	#APP
	#NO_APP
	jmp	.LBB2_3
.LBB2_5:
	cmp	byte ptr [rsi + 8], 0
	je	.LBB2_6
	mov	rsi, qword ptr [rsi + 16]
	add	rsp, 16
	pop	rbx
	jmp	<optional_trait_methods::using_is_supported::targets::basic::BasicTarget as optional_trait_methods::using_is_supported::target::Target>::set_state
.LBB2_8:
	cmp	byte ptr [rsi + 8], 0
	je	.LBB2_9
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 21
	#APP
	#NO_APP
	jmp	.LBB2_3
.LBB2_6:
	call	<optional_trait_methods::using_is_supported::targets::basic::BasicTarget as optional_trait_methods::using_is_supported::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rsi, rax
	xor	eax, eax
	add	rsp, 16
	pop	rbx
	jmp	qword ptr [rip + printf@GOTPCREL]
.LBB2_9:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 13
	#APP
	#NO_APP
.LBB2_3:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	edx, 16
	mov	edi, 1
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	edx, 1
	mov	edi, 1
	call	rbx
	add	rsp, 16
	pop	rbx
	ret
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

<optional_trait_methods::using_is_supported::targets::basic::BasicTarget as optional_trait_methods::using_is_supported::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end4:

<optional_trait_methods::using_is_supported::targets::basic::BasicTarget as optional_trait_methods::using_is_supported::target::Target>::set_state:
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
	mov	rax, rsp
	mov	qword ptr [rax], 0
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
	lea	r12, [rsp + 8]
	mov	rbx, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
.LBB6_1:
	xor	ebp, ebp
.LBB6_2:
	cmp	rax, r13
	jb	.LBB6_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	rbx
	test	rax, rax
	jle	.LBB6_20
	mov	r13, rax
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	eax, eax
.LBB6_5:
	cmp	r13, rax
	jb	.LBB6_21
	cmp	r13, 1024
	ja	.LBB6_21
	cmp	rax, r13
	je	.LBB6_2
	inc	rax
	mov	rcx, r13
	neg	rcx
.LBB6_9:
	mov	dl, byte ptr [rsp + rax + 167]
	mov	qword ptr [rsp + 1200], rax
	cmp	dl, 10
	je	.LBB6_10
	cmp	rbp, 127
	ja	.LBB6_16
	mov	byte ptr [rsp + rbp + 32], dl
	inc	rbp
.LBB6_16:
	lea	rdx, [rcx + rax]
	inc	rdx
	inc	rax
	cmp	rdx, 1
	jne	.LBB6_9
	mov	rax, r13
	jmp	.LBB6_2
.LBB6_20:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB6_21
	jmp	.LBB6_12
.LBB6_10:
	cmp	rbp, 128
	ja	.LBB6_21
	test	rbp, rbp
	je	.LBB6_1
.LBB6_12:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbp
	call	<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::basic::BasicTarget>>::parse_command
	cmp	byte ptr [rsp + 8], -1
	je	.LBB6_18
	mov	rdi, rsp
	mov	rsi, r12
	call	<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::basic::BasicTarget>>::handle
	jmp	.LBB6_19
.LBB6_18:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	call	r13
.LBB6_19:
	mov	r13, qword ptr [rsp + 1192]
	mov	rax, qword ptr [rsp + 1200]
	jmp	.LBB6_1
.LBB6_21:
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

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.ascii	"Mul extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7:
	.ascii	"ScaleFactor extension"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
