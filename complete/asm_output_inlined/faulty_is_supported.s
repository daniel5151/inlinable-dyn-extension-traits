__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::inc:
	inc	qword ptr [rdi]
	ret
.Lfunc_end1:

<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end2:

<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::set_state:
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
	movaps	xmmword ptr [rsp + 144], xmm0
	movaps	xmmword ptr [rsp + 128], xmm0
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	lea	r15, [rsp + 8]
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
	xor	ecx, ecx
.LBB4_1:
	xor	r13d, r13d
.LBB4_2:
	cmp	rcx, rax
	jb	.LBB4_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB4_34
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB4_5:
	cmp	rax, rcx
	jb	.LBB4_33
	cmp	rax, 1024
	ja	.LBB4_33
	cmp	rcx, rax
	je	.LBB4_2
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB4_9:
	mov	sil, byte ptr [rsp + rcx + 167]
	mov	qword ptr [rsp + 1200], rcx
	cmp	sil, 10
	je	.LBB4_10
	cmp	r13, 127
	ja	.LBB4_14
	mov	byte ptr [rsp + r13 + 32], sil
	inc	r13
.LBB4_14:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB4_9
	mov	rcx, rax
	jmp	.LBB4_2
.LBB4_34:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB4_33
	jmp	.LBB4_35
.LBB4_10:
	cmp	r13, 128
	ja	.LBB4_33
	test	r13, r13
	je	.LBB4_1
.LBB4_35:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 22
	#APP
	#NO_APP
	cmp	r13, 2
	je	.LBB4_16
	cmp	r13, 1
	jne	.LBB4_17
	movzx	eax, byte ptr [rsp + 32]
	cmp	eax, 43
	je	.LBB4_29
	cmp	eax, 112
	je	.LBB4_28
	cmp	eax, 45
	je	.LBB4_40
	jmp	.LBB4_25
.LBB4_16:
	cmp	word ptr [rsp + 32], 11563
	je	.LBB4_31
.LBB4_17:
	cmp	word ptr [rsp + 32], 8307
	jne	.LBB4_25
	mov	rax, r13
	add	rax, -2
	je	.LBB4_25
	cmp	rax, 1
	jne	.LBB4_20
.LBB4_25:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	call	rbp
.LBB4_30:
	mov	rax, qword ptr [rsp + 1192]
	mov	rcx, qword ptr [rsp + 1200]
	jmp	.LBB4_1
.LBB4_20:
	mov	al, byte ptr [rsp + 34]
	mov	ecx, 3
	xor	esi, esi
.LBB4_21:
	cmp	r13, rcx
	je	.LBB4_26
	mov	dl, byte ptr [rsp + rcx + 32]
	add	dl, -48
	cmp	dl, 9
	ja	.LBB4_25
	imul	rsi, rsi, 10
	jo	.LBB4_25
	movzx	edx, dl
	inc	rcx
	add	rsi, rdx
	jno	.LBB4_21
	jmp	.LBB4_25
.LBB4_28:
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB4_30
.LBB4_29:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::inc
	jmp	.LBB4_30
.LBB4_26:
	xor	ecx, ecx
	cmp	al, 45
	setne	cl
	lea	rax, [2*rcx - 1]
	imul	rsi, rax
	jo	.LBB4_25
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::set_state
	jmp	.LBB4_30
.LBB4_31:
	lea	rax, [rsp + 8]
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rax + 8], 16
	#APP
	#NO_APP
	jmp	.LBB4_32
.LBB4_40:
	lea	rax, [rsp + 8]
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rax + 8], 16
	#APP
	#NO_APP
.LBB4_32:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	edx, 38
	mov	edi, 1
	call	rbp
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	edx, 1
	mov	edi, 1
	call	rbp
.LBB4_33:
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
