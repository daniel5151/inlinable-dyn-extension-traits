__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end1:

<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state:
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
	lea	rbx, [rsp + 8]
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
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	lea	r13, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	r15, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB3_1:
	xor	r12d, r12d
.LBB3_2:
	mov	rcx, rax
	mov	rax, rdx
.LBB3_3:
	cmp	rcx, rax
	jb	.LBB3_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r15
	test	rax, rax
	jle	.LBB3_32
	mov	qword ptr [rsp + 1176], rax
	mov	qword ptr [rsp + 1184], 0
	xor	ecx, ecx
.LBB3_6:
	cmp	rax, rcx
	jb	.LBB3_33
	cmp	rax, 1024
	ja	.LBB3_33
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
	cmp	r12, 127
	ja	.LBB3_18
	mov	byte ptr [rsp + r12 + 16], sil
	inc	r12
.LBB3_18:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB3_10
	mov	rdx, rax
	jmp	.LBB3_2
.LBB3_32:
	lea	rax, [r12 - 129]
	cmp	rax, -128
	jb	.LBB3_33
	jmp	.LBB3_13
.LBB3_11:
	cmp	r12, 128
	ja	.LBB3_33
	test	r12, r12
	je	.LBB3_31
.LBB3_13:
	cmp	r12, 1
	jne	.LBB3_20
	cmp	byte ptr [rsp + 16], 112
	jne	.LBB3_28
	mov	rdi, rbx
	call	<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB3_31
.LBB3_20:
	cmp	word ptr [rsp + 16], 8307
	jne	.LBB3_28
	mov	rax, r12
	add	rax, -2
	je	.LBB3_28
	cmp	rax, 1
	jne	.LBB3_23
.LBB3_28:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	mov	rsi, r13
	call	rbp
.LBB3_31:
	mov	rdx, qword ptr [rsp + 1176]
	mov	rax, qword ptr [rsp + 1184]
	jmp	.LBB3_1
.LBB3_23:
	mov	al, byte ptr [rsp + 18]
	mov	ecx, 3
	xor	esi, esi
.LBB3_24:
	cmp	r12, rcx
	je	.LBB3_29
	mov	dl, byte ptr [rsp + rcx + 16]
	add	dl, -48
	cmp	dl, 9
	ja	.LBB3_28
	imul	rsi, rsi, 10
	jo	.LBB3_28
	movzx	edx, dl
	inc	rcx
	add	rsi, rdx
	jno	.LBB3_24
	jmp	.LBB3_28
.LBB3_29:
	xor	ecx, ecx
	cmp	al, 45
	setne	cl
	lea	rax, [2*rcx - 1]
	imul	rsi, rax
	jo	.LBB3_28
	mov	rdi, rbx
	call	<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	jmp	.LBB3_31
.LBB3_33:
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
