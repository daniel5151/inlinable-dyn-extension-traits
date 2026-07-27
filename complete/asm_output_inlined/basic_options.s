__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end1:

<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
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
	lea	rbx, [rsp + 144]
	mov	qword ptr [rbx], 0
	lea	r14, [rsp + 152]
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 128], xmm0
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	movaps	xmmword ptr [rsp + 16], xmm0
	mov	r13, rsp
	mov	r15, qword ptr [rip + write@GOTPCREL]
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB3_1:
	xor	ebp, ebp
.LBB3_2:
	mov	rcx, rax
	mov	rax, rdx
.LBB3_3:
	cmp	rcx, rax
	jb	.LBB3_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB3_62
	mov	qword ptr [rsp + 1176], rax
	mov	qword ptr [rsp + 1184], 0
	xor	ecx, ecx
.LBB3_6:
	cmp	rax, rcx
	jb	.LBB3_63
	cmp	rax, 1024
	ja	.LBB3_63
	cmp	rcx, rax
	je	.LBB3_3
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB3_10:
	mov	sil, byte ptr [rsp + rcx + 151]
	mov	qword ptr [rsp + 1184], rcx
	cmp	sil, 10
	je	.LBB3_11
	cmp	rbp, 127
	ja	.LBB3_19
	mov	byte ptr [rsp + rbp + 16], sil
	inc	rbp
.LBB3_19:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB3_10
	mov	rdx, rax
	jmp	.LBB3_2
.LBB3_62:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB3_63
	jmp	.LBB3_13
.LBB3_11:
	cmp	rbp, 128
	ja	.LBB3_63
	test	rbp, rbp
	je	.LBB3_61
.LBB3_13:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 22
	#APP
	#NO_APP
	cmp	rbp, 1
	jne	.LBB3_21
	movzx	eax, byte ptr [rsp + 16]
	cmp	eax, 43
	je	.LBB3_56
	cmp	eax, 45
	jne	.LBB3_22
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	jmp	.LBB3_60
.LBB3_21:
	cmp	rbp, 2
	sete	cl
	movzx	eax, word ptr [rsp + 16]
	movzx	edx, ax
	cmp	edx, 11563
	sete	dl
	test	cl, dl
	je	.LBB3_22
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	jmp	.LBB3_60
.LBB3_22:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 19
	#APP
	#NO_APP
	cmp	rbp, 2
	jb	.LBB3_32
	cmp	word ptr [rsp + 16], 8234
	jne	.LBB3_32
	mov	rcx, rbp
	add	rcx, -2
	je	.LBB3_32
	cmp	rcx, 1
	jne	.LBB3_26
.LBB3_32:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 27
	#APP
	#NO_APP
	cmp	rbp, 3
	jb	.LBB3_42
	mov	ecx, dword ptr [rsp + 16]
	mov	edx, 32298
	xor	ecx, edx
	movzx	edx, byte ptr [rsp + 18]
	xor	edx, 32
	or	dx, cx
	jne	.LBB3_46
	mov	rcx, rbp
	add	rcx, -3
	je	.LBB3_46
	cmp	rcx, 1
	je	.LBB3_46
	mov	dl, byte ptr [rsp + 19]
	mov	esi, 4
	xor	ecx, ecx
.LBB3_37:
	cmp	rbp, rsi
	je	.LBB3_41
	mov	dil, byte ptr [rsp + rsi + 16]
	add	dil, -48
	cmp	dil, 9
	ja	.LBB3_42
	imul	rcx, rcx, 10
	jo	.LBB3_42
	movzx	edi, dil
	inc	rsi
	add	rcx, rdi
	jno	.LBB3_37
	jmp	.LBB3_42
.LBB3_56:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	jmp	.LBB3_60
.LBB3_26:
	mov	dl, byte ptr [rsp + 18]
	mov	esi, 3
	xor	ecx, ecx
.LBB3_27:
	cmp	rbp, rsi
	je	.LBB3_31
	mov	dil, byte ptr [rsp + rsi + 16]
	add	dil, -48
	cmp	dil, 9
	ja	.LBB3_32
	imul	rcx, rcx, 10
	jo	.LBB3_32
	movzx	edi, dil
	inc	rsi
	add	rcx, rdi
	jno	.LBB3_27
	jmp	.LBB3_32
.LBB3_31:
	xor	esi, esi
	cmp	dl, 45
	setne	sil
	lea	rdx, [2*rsi - 1]
	imul	rcx, rdx
	jo	.LBB3_32
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	#APP
	#NO_APP
	jmp	.LBB3_60
.LBB3_41:
	xor	esi, esi
	cmp	dl, 45
	setne	sil
	lea	rdx, [2*rsi - 1]
	imul	rcx, rdx
	jno	.LBB3_59
.LBB3_42:
	cmp	rbp, 1
	jne	.LBB3_45
	cmp	al, 112
	jne	.LBB3_60
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB3_61
.LBB3_45:
	jbe	.LBB3_60
.LBB3_46:
	cmp	word ptr [rsp + 16], 8307
	jne	.LBB3_60
	mov	rax, rbp
	add	rax, -2
	je	.LBB3_60
	cmp	rax, 1
	jne	.LBB3_49
.LBB3_60:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	call	r15
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	call	r15
.LBB3_61:
	mov	rdx, qword ptr [rsp + 1176]
	mov	rax, qword ptr [rsp + 1184]
	jmp	.LBB3_1
.LBB3_49:
	mov	al, byte ptr [rsp + 18]
	mov	ecx, 3
	xor	esi, esi
.LBB3_50:
	cmp	rbp, rcx
	je	.LBB3_54
	mov	dl, byte ptr [rsp + rcx + 16]
	add	dl, -48
	cmp	dl, 9
	ja	.LBB3_60
	imul	rsi, rsi, 10
	jo	.LBB3_60
	movzx	edx, dl
	inc	rcx
	add	rsi, rdx
	jno	.LBB3_50
	jmp	.LBB3_60
.LBB3_54:
	xor	ecx, ecx
	cmp	al, 45
	setne	cl
	lea	rax, [2*rcx - 1]
	imul	rsi, rax
	jo	.LBB3_60
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB3_61
.LBB3_59:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 21
	#APP
	#NO_APP
	jmp	.LBB3_60
.LBB3_63:
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
	.ascii	"Parse IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2:
	.ascii	"Parse Mul extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.ascii	"Parse ScaleFactor extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.ascii	"*~ "

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.ascii	"Unsupported cmd!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7:
	.asciz	"%d\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8:
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9:
	.ascii	"Mul extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10:
	.ascii	"ScaleFactor extension"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
