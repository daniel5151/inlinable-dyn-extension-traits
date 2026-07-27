__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
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
	lea	rbx, [rsp + 160]
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
	mov	r12, qword ptr [rip + write@GOTPCREL]
	mov	r13, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB4_1:
	xor	ebp, ebp
.LBB4_2:
	mov	rcx, rax
	mov	rax, rdx
.LBB4_3:
	cmp	rcx, rax
	jb	.LBB4_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r13
	test	rax, rax
	jle	.LBB4_63
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB4_6:
	cmp	rax, rcx
	jb	.LBB4_58
	cmp	rax, 1024
	ja	.LBB4_58
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
	cmp	rbp, 127
	ja	.LBB4_15
	mov	byte ptr [rsp + rbp + 32], sil
	inc	rbp
.LBB4_15:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB4_10
	mov	rdx, rax
	jmp	.LBB4_2
.LBB4_63:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB4_58
	jmp	.LBB4_64
.LBB4_11:
	cmp	rbp, 128
	ja	.LBB4_58
	test	rbp, rbp
	je	.LBB4_62
.LBB4_64:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 22
	#APP
	#NO_APP
	cmp	rbp, 1
	jne	.LBB4_17
	movzx	eax, byte ptr [rsp + 32]
	cmp	eax, 43
	je	.LBB4_52
	cmp	eax, 45
	jne	.LBB4_18
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	jmp	.LBB4_61
.LBB4_17:
	cmp	rbp, 2
	sete	cl
	movzx	eax, word ptr [rsp + 32]
	movzx	edx, ax
	cmp	edx, 11563
	sete	dl
	test	cl, dl
	je	.LBB4_18
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	dword ptr [rsp + 8], 1
	jne	.LBB4_56
	jmp	.LBB4_53
.LBB4_18:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 19
	#APP
	#NO_APP
	cmp	rbp, 2
	jb	.LBB4_28
	cmp	word ptr [rsp + 32], 8234
	jne	.LBB4_28
	mov	rcx, rbp
	add	rcx, -2
	je	.LBB4_28
	cmp	rcx, 1
	jne	.LBB4_22
.LBB4_28:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 27
	#APP
	#NO_APP
	cmp	rbp, 3
	jb	.LBB4_38
	mov	ecx, dword ptr [rsp + 32]
	mov	edx, 32298
	xor	ecx, edx
	movzx	edx, byte ptr [rsp + 34]
	xor	edx, 32
	or	dx, cx
	jne	.LBB4_42
	mov	rcx, rbp
	add	rcx, -3
	je	.LBB4_42
	cmp	rcx, 1
	je	.LBB4_42
	mov	dl, byte ptr [rsp + 35]
	mov	esi, 4
	xor	ecx, ecx
.LBB4_33:
	cmp	rbp, rsi
	je	.LBB4_37
	mov	dil, byte ptr [rsp + rsi + 32]
	add	dil, -48
	cmp	dil, 9
	ja	.LBB4_38
	imul	rcx, rcx, 10
	jo	.LBB4_38
	movzx	edi, dil
	inc	rsi
	add	rcx, rdi
	jno	.LBB4_33
	jmp	.LBB4_38
.LBB4_52:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	byte ptr [rsp + 8], 0
	je	.LBB4_62
.LBB4_53:
	mov	rsi, qword ptr [rsp + 16]
	test	rsi, rsi
	jne	.LBB4_54
.LBB4_61:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	call	r12
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	call	r12
.LBB4_62:
	mov	rdx, qword ptr [rsp + 1192]
	mov	rax, qword ptr [rsp + 1200]
	jmp	.LBB4_1
.LBB4_22:
	mov	dl, byte ptr [rsp + 34]
	mov	esi, 3
	xor	ecx, ecx
.LBB4_23:
	cmp	rbp, rsi
	je	.LBB4_27
	mov	dil, byte ptr [rsp + rsi + 32]
	add	dil, -48
	cmp	dil, 9
	ja	.LBB4_28
	imul	rcx, rcx, 10
	jo	.LBB4_28
	movzx	edi, dil
	inc	rsi
	add	rcx, rdi
	jno	.LBB4_23
	jmp	.LBB4_28
.LBB4_27:
	xor	esi, esi
	cmp	dl, 45
	setne	sil
	lea	rdx, [2*rsi - 1]
	imul	rcx, rdx
	jo	.LBB4_28
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	#APP
	#NO_APP
	jmp	.LBB4_61
.LBB4_37:
	xor	esi, esi
	cmp	dl, 45
	setne	sil
	lea	rdx, [2*rsi - 1]
	imul	rcx, rdx
	jno	.LBB4_60
.LBB4_38:
	cmp	rbp, 1
	jne	.LBB4_41
	cmp	al, 112
	jne	.LBB4_61
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB4_62
.LBB4_41:
	jbe	.LBB4_61
.LBB4_42:
	cmp	word ptr [rsp + 32], 8307
	jne	.LBB4_61
	mov	rax, rbp
	add	rax, -2
	je	.LBB4_61
	cmp	rax, 1
	je	.LBB4_61
	mov	al, byte ptr [rsp + 34]
	mov	ecx, 3
	xor	esi, esi
.LBB4_46:
	cmp	rbp, rcx
	je	.LBB4_50
	mov	dl, byte ptr [rsp + rcx + 32]
	add	dl, -48
	cmp	dl, 9
	ja	.LBB4_61
	imul	rsi, rsi, 10
	jo	.LBB4_61
	movzx	edx, dl
	inc	rcx
	add	rsi, rdx
	jno	.LBB4_46
	jmp	.LBB4_61
.LBB4_50:
	xor	ecx, ecx
	cmp	al, 45
	setne	cl
	lea	rax, [2*rcx - 1]
	imul	rsi, rax
	jo	.LBB4_61
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB4_62
.LBB4_60:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 21
	#APP
	#NO_APP
	jmp	.LBB4_61
.LBB4_54:
	mov	rdx, qword ptr [rsp + 24]
	jmp	.LBB4_57
.LBB4_56:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	mov	edx, 23
.LBB4_57:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB4_58:
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

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
