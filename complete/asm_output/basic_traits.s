__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::basic::BasicTarget>>::parse_command:
	push	rbx
	mov	rbx, rdi
	test	rdx, rdx
	je	.LBB1_8
	cmp	rdx, 1
	jne	.LBB1_5
	cmp	byte ptr [rsi], 112
	jne	.LBB1_8
	mov	byte ptr [rbx], 0
	mov	qword ptr [rbx + 8], 0
	jmp	.LBB1_4
.LBB1_5:
	cmp	word ptr [rsi], 8307
	jne	.LBB1_8
	add	rdx, -2
	add	rsi, 2
	mov	rdi, rsi
	mov	rsi, rdx
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_8
	mov	byte ptr [rbx], 0
	mov	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 16], rdx
	jmp	.LBB1_4
.LBB1_8:
	mov	byte ptr [rbx], -1
.LBB1_4:
	mov	rax, rbx
	pop	rbx
	ret
.Lfunc_end1:

<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::basic::BasicTarget>>::run:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1208
	mov	qword ptr [rsp], rdi
	lea	r15, [rsp + 168]
	xor	ebx, ebx
	mov	edx, 1040
	mov	rdi, r15
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	r12, [rsp + 32]
	movaps	xmmword ptr [r12 + 112], xmm0
	movaps	xmmword ptr [r12 + 96], xmm0
	movaps	xmmword ptr [r12 + 80], xmm0
	movaps	xmmword ptr [r12 + 64], xmm0
	movaps	xmmword ptr [r12 + 48], xmm0
	movaps	xmmword ptr [r12 + 32], xmm0
	movaps	xmmword ptr [r12 + 16], xmm0
	movaps	xmmword ptr [r12], xmm0
	mov	r13, qword ptr [rip + write@GOTPCREL]
	mov	r14, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB2_1:
	xor	ebp, ebp
.LBB2_2:
	mov	rcx, rax
	mov	rax, rdx
.LBB2_3:
	cmp	rcx, rax
	jb	.LBB2_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r15
	call	r14
	test	rax, rax
	jle	.LBB2_17
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB2_6:
	cmp	rax, rcx
	jb	.LBB2_18
	cmp	rax, 1024
	ja	.LBB2_28
	cmp	rcx, rax
	je	.LBB2_3
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB2_10:
	mov	sil, byte ptr [rsp + rcx + 167]
	mov	qword ptr [rsp + 1200], rcx
	cmp	sil, 10
	je	.LBB2_11
	cmp	rbp, 127
	ja	.LBB2_21
	mov	byte ptr [rsp + rbp + 32], sil
	inc	rbp
.LBB2_21:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB2_10
	mov	rdx, rax
	jmp	.LBB2_2
.LBB2_17:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB2_18
	jmp	.LBB2_13
.LBB2_11:
	cmp	rbp, 128
	ja	.LBB2_18
	test	rbp, rbp
	je	.LBB2_26
.LBB2_13:
	lea	rdi, [rsp + 8]
	mov	rsi, r12
	mov	rdx, rbp
	call	<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::basic::BasicTarget>>::parse_command
	movzx	eax, byte ptr [rsp + 8]
	cmp	eax, 255
	je	.LBB2_16
	test	eax, eax
	je	.LBB2_23
	cmp	eax, 1
.LBB2_16:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	call	r13
.LBB2_26:
	mov	rdx, qword ptr [rsp + 1192]
	mov	rax, qword ptr [rsp + 1200]
	jmp	.LBB2_1
.LBB2_23:
	mov	rax, qword ptr [rsp + 16]
	test	al, 1
	je	.LBB2_24
	mov	rsi, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp]
	call	<optional_trait_methods::using_traits::targets::basic::BasicTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state
	test	rax, rax
	jne	.LBB2_27
	jmp	.LBB2_26
.LBB2_24:
	mov	rdi, qword ptr [rsp]
	call	<optional_trait_methods::using_traits::targets::basic::BasicTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_26
.LBB2_18:
.LBB2_28:
	mov	rax, rbx
	add	rsp, 1208
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB2_27:
	mov	rbx, rax
	jmp	.LBB2_28
.Lfunc_end2:

optional_trait_methods::commands::parse_isize:
	test	rsi, rsi
	je	.LBB3_2
	cmp	rsi, 1
	jne	.LBB3_3
.LBB3_2:
	xor	eax, eax
.LBB3_8:
	ret
.LBB3_3:
	mov	cl, byte ptr [rdi]
	mov	r8d, 1
	xor	eax, eax
	xor	edx, edx
.LBB3_4:
	cmp	rsi, r8
	je	.LBB3_9
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB3_8
	imul	rdx, rdx, 10
	jo	.LBB3_8
	movzx	r9d, r9b
	inc	r8
	add	rdx, r9
	jno	.LBB3_4
	jmp	.LBB3_8
.LBB3_9:
	xor	eax, eax
	cmp	cl, 45
	setne	al
	lea	rcx, [2*rax - 1]
	xor	eax, eax
	imul	rdx, rcx
	setno	al
	ret
.Lfunc_end3:

<optional_trait_methods::using_traits::targets::basic::BasicTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end4:

<optional_trait_methods::using_traits::targets::basic::BasicTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state:
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end5:

main:
	push	rbx
	sub	rsp, 16
	lea	rdi, [rsp + 8]
	mov	qword ptr [rdi], 0
	call	<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::basic::BasicTarget>>::run
	test	rax, rax
	je	.LBB6_2
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	edi, 1
	mov	rsi, rax
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB6_2:
	xor	eax, eax
	add	rsp, 16
	pop	rbx
	ret
.Lfunc_end6:

rust_eh_personality:
	ret
.Lfunc_end7:

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
