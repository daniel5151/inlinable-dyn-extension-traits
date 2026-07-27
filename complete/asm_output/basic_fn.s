__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_fn::controller::TargetController<optional_trait_methods::using_fn::targets::basic::BasicTarget>>::parse_command:
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

optional_trait_methods::commands::parse_isize:
	test	rsi, rsi
	je	.LBB2_2
	cmp	rsi, 1
	jne	.LBB2_3
.LBB2_2:
	xor	eax, eax
.LBB2_8:
	ret
.LBB2_3:
	mov	cl, byte ptr [rdi]
	mov	r8d, 1
	xor	eax, eax
	xor	edx, edx
.LBB2_4:
	cmp	rsi, r8
	je	.LBB2_9
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB2_8
	imul	rdx, rdx, 10
	jo	.LBB2_8
	movzx	r9d, r9b
	inc	r8
	add	rdx, r9
	jno	.LBB2_4
	jmp	.LBB2_8
.LBB2_9:
	xor	eax, eax
	cmp	cl, 45
	setne	al
	lea	rcx, [2*rax - 1]
	xor	eax, eax
	imul	rdx, rcx
	setno	al
	ret
.Lfunc_end2:

optional_trait_methods::using_fn::targets::basic::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end3:

optional_trait_methods::using_fn::targets::basic::set_state:
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end4:

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
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
	xor	ecx, ecx
.LBB5_1:
	xor	r13d, r13d
.LBB5_2:
	cmp	rcx, rax
	jb	.LBB5_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB5_22
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB5_5:
	cmp	rax, rcx
	jb	.LBB5_21
	cmp	rax, 1024
	ja	.LBB5_21
	cmp	rcx, rax
	je	.LBB5_2
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB5_9:
	mov	sil, byte ptr [rsp + rcx + 167]
	mov	qword ptr [rsp + 1200], rcx
	cmp	sil, 10
	je	.LBB5_10
	cmp	r13, 127
	ja	.LBB5_14
	mov	byte ptr [rsp + r13 + 32], sil
	inc	r13
.LBB5_14:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB5_9
	mov	rcx, rax
	jmp	.LBB5_2
.LBB5_22:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB5_21
	jmp	.LBB5_23
.LBB5_10:
	cmp	r13, 128
	ja	.LBB5_21
	test	r13, r13
	je	.LBB5_1
.LBB5_23:
	mov	rdi, rsp
	mov	rsi, r15
	mov	rdx, r13
	call	<optional_trait_methods::using_fn::controller::TargetController<optional_trait_methods::using_fn::targets::basic::BasicTarget>>::parse_command
	movzx	eax, byte ptr [rsp]
	cmp	eax, 255
	je	.LBB5_26
	test	eax, eax
	je	.LBB5_16
	cmp	eax, 1
.LBB5_26:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	call	rbp
.LBB5_19:
	mov	rax, qword ptr [rsp + 1192]
	mov	rcx, qword ptr [rsp + 1200]
	jmp	.LBB5_1
.LBB5_16:
	mov	rax, qword ptr [rsp + 8]
	test	al, 1
	je	.LBB5_17
	mov	rsi, qword ptr [rsp + 16]
	mov	rdi, rbx
	call	optional_trait_methods::using_fn::targets::basic::set_state
	test	rax, rax
	jne	.LBB5_20
	jmp	.LBB5_19
.LBB5_17:
	mov	rdi, rbx
	call	optional_trait_methods::using_fn::targets::basic::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB5_19
.LBB5_20:
	mov	edi, 1
	mov	rsi, rax
	call	rbp
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	edx, 1
	mov	edi, 1
	call	rbp
.LBB5_21:
	xor	eax, eax
	add	rsp, 1208
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end5:

rust_eh_personality:
	ret
.Lfunc_end6:

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
