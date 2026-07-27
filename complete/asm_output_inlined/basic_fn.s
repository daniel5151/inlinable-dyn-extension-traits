__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

optional_trait_methods::using_fn::targets::basic::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end1:

optional_trait_methods::using_fn::targets::basic::set_state:
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end2:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1192
	lea	rbx, [rsp + 8]
	mov	qword ptr [rbx], 0
	lea	r14, [rsp + 152]
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	r15, [rsp + 18]
	movaps	xmmword ptr [r15 + 110], xmm0
	movaps	xmmword ptr [r15 + 94], xmm0
	movaps	xmmword ptr [r15 + 78], xmm0
	movaps	xmmword ptr [r15 + 62], xmm0
	movaps	xmmword ptr [r15 + 46], xmm0
	movaps	xmmword ptr [r15 + 30], xmm0
	movaps	xmmword ptr [r15 + 14], xmm0
	movaps	xmmword ptr [r15 - 2], xmm0
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
	xor	ecx, ecx
.LBB3_1:
	xor	r13d, r13d
.LBB3_2:
	cmp	rcx, rax
	jb	.LBB3_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB3_35
	mov	qword ptr [rsp + 1176], rax
	mov	qword ptr [rsp + 1184], 0
	xor	ecx, ecx
.LBB3_5:
	cmp	rax, rcx
	jb	.LBB3_34
	cmp	rax, 1024
	ja	.LBB3_34
	cmp	rcx, rax
	je	.LBB3_2
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB3_9:
	mov	sil, byte ptr [rsp + rcx + 151]
	mov	qword ptr [rsp + 1184], rcx
	cmp	sil, 10
	je	.LBB3_10
	cmp	r13, 127
	ja	.LBB3_14
	mov	byte ptr [rsp + r13 + 16], sil
	inc	r13
.LBB3_14:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB3_9
	mov	rcx, rax
	jmp	.LBB3_2
.LBB3_35:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB3_34
	jmp	.LBB3_36
.LBB3_10:
	cmp	r13, 128
	ja	.LBB3_34
	test	r13, r13
	je	.LBB3_1
.LBB3_36:
	cmp	r13, 1
	jne	.LBB3_16
	cmp	byte ptr [rsp + 16], 112
	jne	.LBB3_30
	mov	rdi, rbx
	call	optional_trait_methods::using_fn::targets::basic::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB3_32
.LBB3_16:
	cmp	word ptr [rsp + 16], 8307
	jne	.LBB3_30
	mov	rcx, r13
	add	rcx, -2
	je	.LBB3_30
	movzx	eax, byte ptr [rsp + 18]
	cmp	eax, 45
	je	.LBB3_19
	cmp	eax, 43
	jne	.LBB3_21
	xor	eax, eax
	jmp	.LBB3_23
.LBB3_19:
	mov	al, 1
.LBB3_23:
	lea	rdx, [rsp + 19]
	add	r13, -3
	mov	rcx, r13
	jne	.LBB3_24
	jmp	.LBB3_30
.LBB3_21:
	xor	eax, eax
	mov	rdx, r15
.LBB3_24:
	xor	edi, edi
	xor	esi, esi
.LBB3_25:
	cmp	rcx, rdi
	je	.LBB3_29
	mov	r8b, byte ptr [rdx + rdi]
	add	r8b, -48
	cmp	r8b, 9
	ja	.LBB3_30
	imul	rsi, rsi, 10
	jo	.LBB3_30
	movzx	r8d, r8b
	inc	rdi
	add	rsi, r8
	jno	.LBB3_25
	jmp	.LBB3_30
.LBB3_29:
	movzx	eax, al
	neg	rax
	or	rax, 1
	imul	rsi, rax
	jno	.LBB3_31
.LBB3_30:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	call	rbp
.LBB3_32:
	mov	rax, qword ptr [rsp + 1176]
	mov	rcx, qword ptr [rsp + 1184]
	jmp	.LBB3_1
.LBB3_31:
	mov	rdi, rbx
	call	optional_trait_methods::using_fn::targets::basic::set_state
	test	rax, rax
	je	.LBB3_32
	mov	edi, 1
	mov	rsi, rax
	call	rbp
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	edx, 1
	mov	edi, 1
	call	rbp
.LBB3_34:
	xor	eax, eax
	add	rsp, 1192
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end3:

rust_eh_personality:
	ret
.Lfunc_end4:

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
