__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc:
	inc	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end1:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end2:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state:
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
	lea	rbp, [rsp + 34]
	movaps	xmmword ptr [rbp + 110], xmm0
	movaps	xmmword ptr [rbp + 94], xmm0
	movaps	xmmword ptr [rbp + 78], xmm0
	movaps	xmmword ptr [rbp + 62], xmm0
	movaps	xmmword ptr [rbp + 46], xmm0
	movaps	xmmword ptr [rbp + 30], xmm0
	movaps	xmmword ptr [rbp + 14], xmm0
	movaps	xmmword ptr [rbp - 2], xmm0
	mov	r15, rsp
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB4_1:
	xor	r13d, r13d
.LBB4_2:
	mov	rcx, rax
	mov	rax, rdx
.LBB4_3:
	cmp	rcx, rax
	jb	.LBB4_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB4_78
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB4_6:
	cmp	rax, rcx
	jb	.LBB4_73
	cmp	rax, 1024
	ja	.LBB4_73
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
	cmp	r13, 127
	ja	.LBB4_15
	mov	byte ptr [rsp + r13 + 32], sil
	inc	r13
.LBB4_15:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB4_10
	mov	rdx, rax
	jmp	.LBB4_2
.LBB4_78:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB4_73
	jmp	.LBB4_79
.LBB4_11:
	cmp	r13, 128
	ja	.LBB4_73
	test	r13, r13
	je	.LBB4_77
.LBB4_79:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.1]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 22
	#APP
	#NO_APP
	cmp	r13, 1
	jne	.LBB4_17
	movzx	eax, byte ptr [rsp + 32]
	cmp	eax, 43
	je	.LBB4_67
	cmp	eax, 45
	jne	.LBB4_18
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	jmp	.LBB4_76
.LBB4_17:
	cmp	r13, 2
	sete	cl
	movzx	eax, word ptr [rsp + 32]
	movzx	edx, ax
	cmp	edx, 11563
	sete	dl
	test	cl, dl
	je	.LBB4_18
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	dword ptr [rsp], 1
	jne	.LBB4_71
	jmp	.LBB4_68
.LBB4_18:
	lea	rcx, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.2]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 19
	#APP
	#NO_APP
	cmp	r13, 2
	jb	.LBB4_33
	cmp	word ptr [rsp + 32], 8234
	jne	.LBB4_33
	mov	rcx, r13
	add	rcx, -2
	je	.LBB4_33
	movzx	edx, byte ptr [rsp + 34]
	cmp	edx, 45
	je	.LBB4_22
	cmp	edx, 43
	jne	.LBB4_24
	xor	edx, edx
	jmp	.LBB4_26
.LBB4_67:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	byte ptr [rsp], 0
	je	.LBB4_77
.LBB4_68:
	mov	rsi, qword ptr [rsp + 8]
	test	rsi, rsi
	jne	.LBB4_69
.LBB4_76:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.5]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.6]
	call	r13
.LBB4_77:
	mov	rdx, qword ptr [rsp + 1192]
	mov	rax, qword ptr [rsp + 1200]
	jmp	.LBB4_1
.LBB4_22:
	mov	dl, 1
.LBB4_26:
	mov	rcx, r13
	lea	rsi, [rsp + 35]
	add	rcx, -3
	jne	.LBB4_27
	jmp	.LBB4_33
.LBB4_24:
	xor	edx, edx
	mov	rsi, rbp
.LBB4_27:
	xor	r8d, r8d
	xor	edi, edi
.LBB4_28:
	cmp	rcx, r8
	je	.LBB4_32
	mov	r9b, byte ptr [rsi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB4_33
	imul	rdi, rdi, 10
	jo	.LBB4_33
	movzx	r9d, r9b
	inc	r8
	add	rdi, r9
	jno	.LBB4_28
	jmp	.LBB4_33
.LBB4_32:
	movzx	ecx, dl
	neg	rcx
	or	rcx, 1
	imul	rdi, rcx
	jno	.LBB4_74
.LBB4_33:
	lea	rcx, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.3]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 27
	#APP
	#NO_APP
	cmp	r13, 3
	jb	.LBB4_48
	mov	ecx, dword ptr [rsp + 32]
	mov	edx, 32298
	xor	ecx, edx
	movzx	edx, byte ptr [rsp + 34]
	xor	edx, 32
	or	dx, cx
	jne	.LBB4_52
	mov	rcx, r13
	add	rcx, -3
	je	.LBB4_52
	movzx	edx, byte ptr [rsp + 35]
	cmp	edx, 45
	je	.LBB4_37
	cmp	edx, 43
	jne	.LBB4_39
	xor	edx, edx
	jmp	.LBB4_41
.LBB4_37:
	mov	dl, 1
.LBB4_41:
	mov	rcx, r13
	lea	rsi, [rsp + 36]
	add	rcx, -4
	jne	.LBB4_42
	jmp	.LBB4_52
.LBB4_39:
	xor	edx, edx
	lea	rsi, [rsp + 35]
.LBB4_42:
	xor	r8d, r8d
	xor	edi, edi
.LBB4_43:
	cmp	rcx, r8
	je	.LBB4_47
	mov	r9b, byte ptr [rsi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB4_48
	imul	rdi, rdi, 10
	jo	.LBB4_48
	movzx	r9d, r9b
	inc	r8
	add	rdi, r9
	jno	.LBB4_43
	jmp	.LBB4_48
.LBB4_47:
	movzx	ecx, dl
	neg	rcx
	or	rcx, 1
	imul	rdi, rcx
	jno	.LBB4_75
.LBB4_48:
	cmp	r13, 1
	jne	.LBB4_51
	cmp	al, 112
	jne	.LBB4_76
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.7]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB4_77
.LBB4_51:
	jbe	.LBB4_76
.LBB4_52:
	cmp	word ptr [rsp + 32], 8307
	jne	.LBB4_76
	mov	rcx, r13
	add	rcx, -2
	je	.LBB4_76
	movzx	eax, byte ptr [rsp + 34]
	cmp	eax, 45
	je	.LBB4_55
	cmp	eax, 43
	jne	.LBB4_57
	xor	eax, eax
	jmp	.LBB4_59
.LBB4_55:
	mov	al, 1
.LBB4_59:
	lea	rdx, [rsp + 35]
	add	r13, -3
	mov	rcx, r13
	je	.LBB4_76
	jmp	.LBB4_60
.LBB4_57:
	xor	eax, eax
	mov	rdx, rbp
.LBB4_60:
	xor	edi, edi
	xor	esi, esi
.LBB4_61:
	cmp	rcx, rdi
	je	.LBB4_65
	mov	r8b, byte ptr [rdx + rdi]
	add	r8b, -48
	cmp	r8b, 9
	ja	.LBB4_76
	imul	rsi, rsi, 10
	jo	.LBB4_76
	movzx	r8d, r8b
	inc	rdi
	add	rsi, r8
	jno	.LBB4_61
	jmp	.LBB4_76
.LBB4_65:
	movzx	eax, al
	neg	rax
	or	rax, 1
	imul	rsi, rax
	jo	.LBB4_76
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB4_77
.LBB4_74:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.9]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	#APP
	#NO_APP
	jmp	.LBB4_76
.LBB4_75:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.10]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 21
	#APP
	#NO_APP
	jmp	.LBB4_76
.LBB4_69:
	mov	rdx, qword ptr [rsp + 16]
	jmp	.LBB4_72
.LBB4_71:
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.11]
	mov	edx, 23
.LBB4_72:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.6]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB4_73:
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

.Lanon.cabb224323f7f456a7965482e4c09287.11:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.99.0-nightly (6f72b5dd5 2026-07-22)"
