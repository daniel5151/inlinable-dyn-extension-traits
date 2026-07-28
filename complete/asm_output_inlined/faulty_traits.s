__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end1:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state:
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end2:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.6]
	mov	edx, 38
	ret
.Lfunc_end3:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc:
	inc	qword ptr [rdi]
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
	lea	r13, [rsp + 34]
	movaps	xmmword ptr [r13 + 110], xmm0
	movaps	xmmword ptr [r13 + 94], xmm0
	movaps	xmmword ptr [r13 + 78], xmm0
	movaps	xmmword ptr [r13 + 62], xmm0
	movaps	xmmword ptr [r13 + 46], xmm0
	movaps	xmmword ptr [r13 + 30], xmm0
	movaps	xmmword ptr [r13 + 14], xmm0
	movaps	xmmword ptr [r13 - 2], xmm0
	lea	r12, [rsp + 8]
	mov	rbp, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
	xor	ecx, ecx
.LBB5_1:
	xor	r15d, r15d
.LBB5_2:
	cmp	rcx, rax
	jb	.LBB5_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	rbp
	test	rax, rax
	jle	.LBB5_40
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB5_5:
	cmp	rax, rcx
	jb	.LBB5_33
	cmp	rax, 1024
	ja	.LBB5_33
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
	cmp	r15, 127
	ja	.LBB5_14
	mov	byte ptr [rsp + r15 + 32], sil
	inc	r15
.LBB5_14:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB5_9
	mov	rcx, rax
	jmp	.LBB5_2
.LBB5_40:
	lea	rax, [r15 - 129]
	cmp	rax, -128
	jb	.LBB5_33
	jmp	.LBB5_41
.LBB5_10:
	cmp	r15, 128
	ja	.LBB5_33
	test	r15, r15
	je	.LBB5_1
.LBB5_41:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.1]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 22
	#APP
	#NO_APP
	cmp	r15, 2
	je	.LBB5_16
	cmp	r15, 1
	jne	.LBB5_17
	movzx	eax, byte ptr [rsp + 32]
	cmp	eax, 43
	je	.LBB5_30
	cmp	eax, 45
	je	.LBB5_34
	cmp	eax, 112
	jne	.LBB5_38
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state
	lea	rdi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.4]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB5_39
.LBB5_16:
	cmp	word ptr [rsp + 32], 11563
	jne	.LBB5_17
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.5]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	test	rax, rax
	jne	.LBB5_32
	jmp	.LBB5_36
.LBB5_17:
	cmp	word ptr [rsp + 32], 8307
	jne	.LBB5_38
	mov	rcx, r15
	add	rcx, -2
	je	.LBB5_38
	movzx	eax, byte ptr [rsp + 34]
	cmp	eax, 45
	je	.LBB5_20
	cmp	eax, 43
	jne	.LBB5_22
	xor	eax, eax
	jmp	.LBB5_24
.LBB5_34:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.5]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
.LBB5_36:
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec
	jmp	.LBB5_31
.LBB5_30:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.5]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	jmp	.LBB5_31
.LBB5_20:
	mov	al, 1
.LBB5_24:
	lea	rdx, [rsp + 35]
	add	r15, -3
	mov	rcx, r15
	jne	.LBB5_25
	jmp	.LBB5_38
.LBB5_22:
	xor	eax, eax
	mov	rdx, r13
.LBB5_25:
	xor	edi, edi
	xor	esi, esi
.LBB5_26:
	cmp	rcx, rdi
	je	.LBB5_37
	mov	r8b, byte ptr [rdx + rdi]
	add	r8b, -48
	cmp	r8b, 9
	ja	.LBB5_38
	imul	rsi, rsi, 10
	jo	.LBB5_38
	movzx	r8d, r8b
	inc	rdi
	add	rsi, r8
	jno	.LBB5_26
	jmp	.LBB5_38
.LBB5_37:
	movzx	eax, al
	neg	rax
	or	rax, 1
	imul	rsi, rax
	jno	.LBB5_47
.LBB5_38:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.2]
	mov	r15, qword ptr [rip + write@GOTPCREL]
	call	r15
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.3]
	call	r15
	jmp	.LBB5_39
.LBB5_47:
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state
.LBB5_31:
	test	rax, rax
	jne	.LBB5_32
.LBB5_39:
	mov	rax, qword ptr [rsp + 1192]
	mov	rcx, qword ptr [rsp + 1200]
	jmp	.LBB5_1
.LBB5_32:
	mov	edi, 1
	mov	rsi, rax
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	call	rbx
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.3]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB5_33:
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

.Lanon.cabb224323f7f456a7965482e4c09287.0:
	.ascii	"panic!\n"

.Lanon.cabb224323f7f456a7965482e4c09287.1:
	.ascii	"Parse IncDec extension"

.Lanon.cabb224323f7f456a7965482e4c09287.2:
	.ascii	"Unsupported cmd!"

.Lanon.cabb224323f7f456a7965482e4c09287.3:
	.byte	10

.Lanon.cabb224323f7f456a7965482e4c09287.4:
	.asciz	"%d\n"

.Lanon.cabb224323f7f456a7965482e4c09287.5:
	.ascii	"IncDec extension"

.Lanon.cabb224323f7f456a7965482e4c09287.6:
	.ascii	"`dec` operations are not supported yet"

	.ident	"rustc version 1.99.0-nightly (6f72b5dd5 2026-07-22)"
