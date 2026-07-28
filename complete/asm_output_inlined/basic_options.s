__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.0]
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
	sub	rsp, 1208
	lea	rax, [rsp + 24]
	mov	qword ptr [rax], 0
	lea	r14, [rsp + 168]
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	rbp, [rsp + 34]
	movaps	xmmword ptr [rbp + 110], xmm0
	movaps	xmmword ptr [rbp + 94], xmm0
	movaps	xmmword ptr [rbp + 78], xmm0
	movaps	xmmword ptr [rbp + 62], xmm0
	movaps	xmmword ptr [rbp + 46], xmm0
	movaps	xmmword ptr [rbp + 30], xmm0
	movaps	xmmword ptr [rbp + 14], xmm0
	movaps	xmmword ptr [rbp - 2], xmm0
	lea	r15, [rsp + 8]
	mov	r12, qword ptr [rip + write@GOTPCREL]
	mov	r13, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB3_1:
	xor	ebx, ebx
.LBB3_2:
	mov	rcx, rax
	mov	rax, rdx
.LBB3_3:
	cmp	rcx, rax
	jb	.LBB3_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r13
	test	rax, rax
	jle	.LBB3_77
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB3_6:
	cmp	rax, rcx
	jb	.LBB3_78
	cmp	rax, 1024
	ja	.LBB3_78
	cmp	rcx, rax
	je	.LBB3_3
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB3_10:
	mov	sil, byte ptr [rsp + rcx + 167]
	mov	qword ptr [rsp + 1200], rcx
	cmp	sil, 10
	je	.LBB3_11
	cmp	rbx, 127
	ja	.LBB3_19
	mov	byte ptr [rsp + rbx + 32], sil
	inc	rbx
.LBB3_19:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB3_10
	mov	rdx, rax
	jmp	.LBB3_2
.LBB3_77:
	lea	rax, [rbx - 129]
	cmp	rax, -128
	jb	.LBB3_78
	jmp	.LBB3_13
.LBB3_11:
	cmp	rbx, 128
	ja	.LBB3_78
	test	rbx, rbx
	je	.LBB3_76
.LBB3_13:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.1]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 22
	#APP
	#NO_APP
	cmp	rbx, 1
	jne	.LBB3_21
	movzx	eax, byte ptr [rsp + 32]
	cmp	eax, 43
	je	.LBB3_71
	cmp	eax, 45
	jne	.LBB3_22
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	jmp	.LBB3_75
.LBB3_21:
	cmp	rbx, 2
	sete	cl
	movzx	eax, word ptr [rsp + 32]
	movzx	edx, ax
	cmp	edx, 11563
	sete	dl
	test	cl, dl
	je	.LBB3_22
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	jmp	.LBB3_75
.LBB3_22:
	lea	rcx, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.2]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 19
	#APP
	#NO_APP
	cmp	rbx, 2
	jb	.LBB3_37
	cmp	word ptr [rsp + 32], 8234
	jne	.LBB3_37
	mov	rcx, rbx
	add	rcx, -2
	je	.LBB3_37
	movzx	edx, byte ptr [rsp + 34]
	cmp	edx, 45
	je	.LBB3_26
	cmp	edx, 43
	jne	.LBB3_28
	xor	edx, edx
	jmp	.LBB3_30
.LBB3_71:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	jmp	.LBB3_75
.LBB3_26:
	mov	dl, 1
.LBB3_30:
	mov	rcx, rbx
	lea	rsi, [rsp + 35]
	add	rcx, -3
	jne	.LBB3_31
	jmp	.LBB3_37
.LBB3_28:
	xor	edx, edx
	mov	rsi, rbp
.LBB3_31:
	xor	r8d, r8d
	xor	edi, edi
.LBB3_32:
	cmp	rcx, r8
	je	.LBB3_36
	mov	r9b, byte ptr [rsi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB3_37
	imul	rdi, rdi, 10
	jo	.LBB3_37
	movzx	r9d, r9b
	inc	r8
	add	rdi, r9
	jno	.LBB3_32
	jmp	.LBB3_37
.LBB3_36:
	movzx	ecx, dl
	neg	rcx
	or	rcx, 1
	imul	rdi, rcx
	jno	.LBB3_73
.LBB3_37:
	lea	rcx, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.3]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 27
	#APP
	#NO_APP
	cmp	rbx, 3
	jb	.LBB3_52
	mov	ecx, dword ptr [rsp + 32]
	mov	edx, 32298
	xor	ecx, edx
	movzx	edx, byte ptr [rsp + 34]
	xor	edx, 32
	or	dx, cx
	jne	.LBB3_56
	mov	rcx, rbx
	add	rcx, -3
	je	.LBB3_56
	movzx	edx, byte ptr [rsp + 35]
	cmp	edx, 45
	je	.LBB3_41
	cmp	edx, 43
	jne	.LBB3_43
	xor	edx, edx
	jmp	.LBB3_45
.LBB3_41:
	mov	dl, 1
.LBB3_45:
	mov	rcx, rbx
	lea	rsi, [rsp + 36]
	add	rcx, -4
	jne	.LBB3_46
	jmp	.LBB3_56
.LBB3_43:
	xor	edx, edx
	lea	rsi, [rsp + 35]
.LBB3_46:
	xor	r8d, r8d
	xor	edi, edi
.LBB3_47:
	cmp	rcx, r8
	je	.LBB3_51
	mov	r9b, byte ptr [rsi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB3_52
	imul	rdi, rdi, 10
	jo	.LBB3_52
	movzx	r9d, r9b
	inc	r8
	add	rdi, r9
	jno	.LBB3_47
	jmp	.LBB3_52
.LBB3_51:
	movzx	ecx, dl
	neg	rcx
	or	rcx, 1
	imul	rdi, rcx
	jno	.LBB3_74
.LBB3_52:
	cmp	rbx, 1
	jne	.LBB3_55
	cmp	al, 112
	jne	.LBB3_75
	lea	rdi, [rsp + 24]
	call	<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.7]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB3_76
.LBB3_55:
	jbe	.LBB3_75
.LBB3_56:
	cmp	word ptr [rsp + 32], 8307
	jne	.LBB3_75
	mov	rcx, rbx
	add	rcx, -2
	je	.LBB3_75
	movzx	eax, byte ptr [rsp + 34]
	cmp	eax, 45
	je	.LBB3_59
	cmp	eax, 43
	jne	.LBB3_61
	xor	eax, eax
	jmp	.LBB3_63
.LBB3_59:
	mov	al, 1
.LBB3_63:
	lea	rdx, [rsp + 35]
	add	rbx, -3
	mov	rcx, rbx
	jne	.LBB3_64
	jmp	.LBB3_75
.LBB3_61:
	xor	eax, eax
	mov	rdx, rbp
.LBB3_64:
	xor	edi, edi
	xor	esi, esi
.LBB3_65:
	cmp	rcx, rdi
	je	.LBB3_69
	mov	r8b, byte ptr [rdx + rdi]
	add	r8b, -48
	cmp	r8b, 9
	ja	.LBB3_75
	imul	rsi, rsi, 10
	jo	.LBB3_75
	movzx	r8d, r8b
	inc	rdi
	add	rsi, r8
	jno	.LBB3_65
	jmp	.LBB3_75
.LBB3_69:
	movzx	eax, al
	neg	rax
	or	rax, 1
	imul	rsi, rax
	jo	.LBB3_75
	lea	rdi, [rsp + 24]
	call	<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB3_76
.LBB3_73:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.9]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	#APP
	#NO_APP
	jmp	.LBB3_75
.LBB3_74:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.10]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 21
	#APP
	#NO_APP
.LBB3_75:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.5]
	call	r12
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.6]
	call	r12
.LBB3_76:
	mov	rdx, qword ptr [rsp + 1192]
	mov	rax, qword ptr [rsp + 1200]
	jmp	.LBB3_1
.LBB3_78:
	xor	eax, eax
	add	rsp, 1208
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

.Lanon.cabb224323f7f456a7965482e4c09287.0:
	.ascii	"panic!\n"

.Lanon.cabb224323f7f456a7965482e4c09287.1:
	.ascii	"Parse IncDec extension"

.Lanon.cabb224323f7f456a7965482e4c09287.2:
	.ascii	"Parse Mul extension"

.Lanon.cabb224323f7f456a7965482e4c09287.3:
	.ascii	"Parse ScaleFactor extension"

.Lanon.cabb224323f7f456a7965482e4c09287.4:
	.ascii	"*~ "

.Lanon.cabb224323f7f456a7965482e4c09287.5:
	.ascii	"Unsupported cmd!"

.Lanon.cabb224323f7f456a7965482e4c09287.6:
	.byte	10

.Lanon.cabb224323f7f456a7965482e4c09287.7:
	.asciz	"%d\n"

.Lanon.cabb224323f7f456a7965482e4c09287.8:
	.ascii	"IncDec extension"

.Lanon.cabb224323f7f456a7965482e4c09287.9:
	.ascii	"Mul extension"

.Lanon.cabb224323f7f456a7965482e4c09287.10:
	.ascii	"ScaleFactor extension"

	.ident	"rustc version 1.99.0-nightly (6f72b5dd5 2026-07-22)"
