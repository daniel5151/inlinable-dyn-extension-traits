__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

optional_trait_methods::using_fn::targets::faulty::dec:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	edx, 38
	ret
.Lfunc_end1:

optional_trait_methods::using_fn::targets::faulty::inc:
	inc	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end2:

optional_trait_methods::using_fn::targets::faulty::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end3:

optional_trait_methods::using_fn::targets::faulty::set_state:
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
	movaps	xmmword ptr [rsp + 144], xmm0
	movaps	xmmword ptr [rsp + 128], xmm0
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	lea	r13, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	lea	r15, [rsp + 8]
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
	xor	ecx, ecx
.LBB5_1:
	xor	ebp, ebp
.LBB5_2:
	cmp	rcx, rax
	jb	.LBB5_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB5_35
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB5_5:
	cmp	rax, rcx
	jb	.LBB5_28
	cmp	rax, 1024
	ja	.LBB5_28
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
	cmp	rbp, 127
	ja	.LBB5_14
	mov	byte ptr [rsp + rbp + 32], sil
	inc	rbp
.LBB5_14:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB5_9
	mov	rcx, rax
	jmp	.LBB5_2
.LBB5_35:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB5_28
	jmp	.LBB5_36
.LBB5_10:
	cmp	rbp, 128
	ja	.LBB5_28
	test	rbp, rbp
	je	.LBB5_1
.LBB5_36:
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 16], 22
	#APP
	#NO_APP
	cmp	rbp, 2
	je	.LBB5_16
	cmp	rbp, 1
	jne	.LBB5_17
	movzx	eax, byte ptr [rsp + 32]
	cmp	eax, 43
	je	.LBB5_25
	cmp	eax, 45
	je	.LBB5_29
	cmp	eax, 112
	jne	.LBB5_33
	mov	rdi, rbx
	call	optional_trait_methods::using_fn::targets::faulty::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB5_34
.LBB5_16:
	cmp	word ptr [rsp + 32], 11563
	jne	.LBB5_17
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	optional_trait_methods::using_fn::targets::faulty::inc
	test	rax, rax
	jne	.LBB5_27
	jmp	.LBB5_31
.LBB5_17:
	cmp	word ptr [rsp + 32], 8307
	jne	.LBB5_33
	mov	rax, rbp
	add	rax, -2
	je	.LBB5_33
	cmp	rax, 1
	jne	.LBB5_20
.LBB5_33:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	call	rbp
	jmp	.LBB5_34
.LBB5_20:
	mov	al, byte ptr [rsp + 34]
	mov	ecx, 3
	xor	esi, esi
.LBB5_21:
	cmp	rbp, rcx
	je	.LBB5_32
	mov	dl, byte ptr [rsp + rcx + 32]
	add	dl, -48
	cmp	dl, 9
	ja	.LBB5_33
	imul	rsi, rsi, 10
	jo	.LBB5_33
	movzx	edx, dl
	inc	rcx
	add	rsi, rdx
	jno	.LBB5_21
	jmp	.LBB5_33
.LBB5_29:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
.LBB5_31:
	call	optional_trait_methods::using_fn::targets::faulty::dec
	jmp	.LBB5_26
.LBB5_25:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	optional_trait_methods::using_fn::targets::faulty::inc
.LBB5_26:
	test	rax, rax
	jne	.LBB5_27
.LBB5_34:
	mov	rax, qword ptr [rsp + 1192]
	mov	rcx, qword ptr [rsp + 1200]
	jmp	.LBB5_1
.LBB5_32:
	xor	ecx, ecx
	cmp	al, 45
	setne	cl
	lea	rax, [2*rcx - 1]
	imul	rsi, rax
	jo	.LBB5_33
	mov	rdi, rbx
	call	optional_trait_methods::using_fn::targets::faulty::set_state
	jmp	.LBB5_26
.LBB5_27:
	mov	edi, 1
	mov	rsi, rax
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB5_28:
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
