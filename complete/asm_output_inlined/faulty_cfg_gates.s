__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc:
	inc	qword ptr [rdi]
	ret
.Lfunc_end1:

<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end2:

<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state:
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
	sub	rsp, 1208
	lea	rbx, [rsp + 24]
	mov	qword ptr [rbx], 0
	lea	r14, [rsp + 168]
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	r13, [rsp + 34]
	movaps	xmmword ptr [r13 + 110], xmm0
	movaps	xmmword ptr [r13 + 94], xmm0
	movaps	xmmword ptr [r13 + 78], xmm0
	movaps	xmmword ptr [r13 + 62], xmm0
	movaps	xmmword ptr [r13 + 46], xmm0
	movaps	xmmword ptr [r13 + 30], xmm0
	movaps	xmmword ptr [r13 + 14], xmm0
	movaps	xmmword ptr [r13 - 2], xmm0
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	mov	r15, qword ptr [rip + read@GOTPCREL]
.LBB4_1:
	mov	rax, qword ptr [rsp + 1192]
	mov	rcx, qword ptr [rsp + 1200]
.LBB4_2:
	xor	r12d, r12d
.LBB4_3:
	cmp	rcx, rax
	jb	.LBB4_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r15
	test	rax, rax
	jle	.LBB4_39
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB4_6:
	cmp	rax, rcx
	jb	.LBB4_38
	cmp	rax, 1024
	ja	.LBB4_38
	cmp	rcx, rax
	je	.LBB4_3
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB4_10:
	mov	sil, byte ptr [rsp + rcx + 167]
	mov	qword ptr [rsp + 1200], rcx
	cmp	sil, 10
	je	.LBB4_11
	cmp	r12, 127
	ja	.LBB4_15
	mov	byte ptr [rsp + r12 + 32], sil
	inc	r12
.LBB4_15:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB4_10
	mov	rcx, rax
	jmp	.LBB4_3
.LBB4_11:
	cmp	r12, 128
	ja	.LBB4_38
	test	r12, r12
	je	.LBB4_2
	jmp	.LBB4_40
.LBB4_39:
	lea	rax, [r12 - 129]
	cmp	rax, -128
	jb	.LBB4_38
.LBB4_40:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 22
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	cmp	r12, 2
	je	.LBB4_17
	cmp	r12, 1
	jne	.LBB4_18
	movzx	eax, byte ptr [rsp + 32]
	cmp	eax, 43
	je	.LBB4_35
	cmp	eax, 112
	je	.LBB4_34
	cmp	eax, 45
	je	.LBB4_45
	jmp	.LBB4_31
.LBB4_17:
	cmp	word ptr [rsp + 32], 11563
	je	.LBB4_36
.LBB4_18:
	cmp	word ptr [rsp + 32], 8307
	jne	.LBB4_31
	mov	rcx, r12
	add	rcx, -2
	je	.LBB4_31
	movzx	eax, byte ptr [rsp + 34]
	cmp	eax, 45
	je	.LBB4_21
	cmp	eax, 43
	jne	.LBB4_23
	xor	eax, eax
	jmp	.LBB4_25
.LBB4_34:
	mov	rdi, rbx
	call	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB4_1
.LBB4_35:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc
	jmp	.LBB4_1
.LBB4_21:
	mov	al, 1
.LBB4_25:
	lea	rdx, [rsp + 35]
	add	r12, -3
	mov	rcx, r12
	jne	.LBB4_26
	jmp	.LBB4_31
.LBB4_23:
	xor	eax, eax
	mov	rdx, r13
.LBB4_26:
	xor	edi, edi
	xor	esi, esi
.LBB4_27:
	cmp	rcx, rdi
	je	.LBB4_32
	mov	r8b, byte ptr [rdx + rdi]
	add	r8b, -48
	cmp	r8b, 9
	ja	.LBB4_31
	imul	rsi, rsi, 10
	jo	.LBB4_31
	movzx	r8d, r8b
	inc	rdi
	add	rsi, r8
	jno	.LBB4_27
	jmp	.LBB4_31
.LBB4_32:
	movzx	eax, al
	neg	rax
	or	rax, 1
	imul	rsi, rax
	jno	.LBB4_33
.LBB4_31:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	call	rbp
	jmp	.LBB4_1
.LBB4_33:
	mov	rdi, rbx
	call	<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	jmp	.LBB4_1
.LBB4_36:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rax + 8], 16
	#APP
	#NO_APP
	jmp	.LBB4_37
.LBB4_45:
	lea	rax, [rsp + 8]
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rax + 8], 16
	#APP
	#NO_APP
.LBB4_37:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	edx, 38
	mov	edi, 1
	call	rbp
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	edx, 1
	mov	edi, 1
	call	rbp
.LBB4_38:
	xor	eax, eax
	add	rsp, 1208
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end4:

rust_eh_personality:
	ret
.Lfunc_end5:

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0:
	.ascii	"panic!\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1:
	.ascii	"Parse IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2:
	.ascii	"Unsupported cmd!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.asciz	"%d\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.ascii	"`dec` operations are not supported yet"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
