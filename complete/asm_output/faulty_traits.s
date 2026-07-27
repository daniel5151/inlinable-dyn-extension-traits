__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::faulty::FaultyTarget>>::parse_command:
	push	rbx
	sub	rsp, 16
	mov	rbx, rdi
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 22
	#APP
	#NO_APP
	test	rdx, rdx
	je	.LBB1_14
	cmp	rdx, 2
	je	.LBB1_10
	cmp	rdx, 1
	jne	.LBB1_11
	movzx	eax, byte ptr [rsi]
	cmp	eax, 112
	je	.LBB1_15
	cmp	eax, 45
	je	.LBB1_7
	cmp	eax, 43
	jne	.LBB1_14
	mov	word ptr [rbx], 1
	jmp	.LBB1_9
.LBB1_10:
	cmp	word ptr [rsi], 11563
	jne	.LBB1_11
	mov	word ptr [rbx], 513
	jmp	.LBB1_9
.LBB1_11:
	cmp	word ptr [rsi], 8307
	jne	.LBB1_14
	add	rdx, -2
	add	rsi, 2
	mov	rdi, rsi
	mov	rsi, rdx
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_14
	mov	byte ptr [rbx], 0
	mov	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 16], rdx
	jmp	.LBB1_9
.LBB1_14:
	mov	byte ptr [rbx], -1
.LBB1_9:
	mov	rax, rbx
	add	rsp, 16
	pop	rbx
	ret
.LBB1_7:
	mov	word ptr [rbx], 257
	jmp	.LBB1_9
.LBB1_15:
	mov	byte ptr [rbx], 0
	mov	qword ptr [rbx + 8], 0
	jmp	.LBB1_9
.Lfunc_end1:

optional_trait_methods::commands::parse_isize:
	test	rsi, rsi
	je	.LBB2_2
	cmp	rsi, 1
	jne	.LBB2_3
.LBB2_2:
	xor	eax, eax
.LBB2_8:
	ret
.LBB2_3:
	mov	cl, byte ptr [rdi]
	mov	r8d, 1
	xor	eax, eax
	xor	edx, edx
.LBB2_4:
	cmp	rsi, r8
	je	.LBB2_9
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB2_8
	imul	rdx, rdx, 10
	jo	.LBB2_8
	movzx	r9d, r9b
	inc	r8
	add	rdx, r9
	jno	.LBB2_4
	jmp	.LBB2_8
.LBB2_9:
	xor	eax, eax
	cmp	cl, 45
	setne	al
	lea	rcx, [2*rax - 1]
	xor	eax, eax
	imul	rdx, rcx
	setno	al
	ret
.Lfunc_end2:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end3:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state:
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end4:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	edx, 38
	ret
.Lfunc_end5:

<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc:
	inc	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end6:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1224
	lea	rbx, [rsp + 40]
	mov	qword ptr [rbx], 0
	lea	r14, [rsp + 184]
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	r15, [rsp + 48]
	movaps	xmmword ptr [r15 + 112], xmm0
	movaps	xmmword ptr [r15 + 96], xmm0
	movaps	xmmword ptr [r15 + 80], xmm0
	movaps	xmmword ptr [r15 + 64], xmm0
	movaps	xmmword ptr [r15 + 48], xmm0
	movaps	xmmword ptr [r15 + 32], xmm0
	movaps	xmmword ptr [r15 + 16], xmm0
	movaps	xmmword ptr [r15], xmm0
	mov	r12, rsp
	mov	rbp, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
	xor	ecx, ecx
.LBB7_1:
	xor	r13d, r13d
.LBB7_2:
	cmp	rcx, rax
	jb	.LBB7_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	rbp
	test	rax, rax
	jle	.LBB7_24
	mov	qword ptr [rsp + 1208], rax
	mov	qword ptr [rsp + 1216], 0
	xor	ecx, ecx
.LBB7_5:
	cmp	rax, rcx
	jb	.LBB7_32
	cmp	rax, 1024
	ja	.LBB7_32
	cmp	rcx, rax
	je	.LBB7_2
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB7_9:
	mov	sil, byte ptr [rsp + rcx + 183]
	mov	qword ptr [rsp + 1216], rcx
	cmp	sil, 10
	je	.LBB7_10
	cmp	r13, 127
	ja	.LBB7_14
	mov	byte ptr [rsp + r13 + 48], sil
	inc	r13
.LBB7_14:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB7_9
	mov	rcx, rax
	jmp	.LBB7_2
.LBB7_24:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB7_32
	jmp	.LBB7_25
.LBB7_10:
	cmp	r13, 128
	ja	.LBB7_32
	test	r13, r13
	je	.LBB7_1
.LBB7_25:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	call	<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::faulty::FaultyTarget>>::parse_command
	movzx	eax, byte ptr [rsp]
	cmp	eax, 255
	je	.LBB7_20
	test	eax, eax
	je	.LBB7_16
	cmp	eax, 1
	jne	.LBB7_20
	movzx	eax, byte ptr [rsp + 1]
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	qword ptr [rsp + 24], rcx
	mov	qword ptr [rsp + 32], 16
	lea	rcx, [rsp + 24]
	#APP
	#NO_APP
	cmp	eax, 2
	je	.LBB7_18
	cmp	eax, 1
	je	.LBB7_19
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	jmp	.LBB7_22
.LBB7_20:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	call	r13
	jmp	.LBB7_23
.LBB7_16:
	mov	rax, qword ptr [rsp + 8]
	test	al, 1
	je	.LBB7_17
	mov	rsi, qword ptr [rsp + 16]
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state
	jmp	.LBB7_22
.LBB7_17:
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB7_23
.LBB7_18:
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	test	rax, rax
	jne	.LBB7_31
.LBB7_19:
	call	<optional_trait_methods::using_traits::targets::faulty::FaultyTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec
.LBB7_22:
	test	rax, rax
	jne	.LBB7_31
.LBB7_23:
	mov	rax, qword ptr [rsp + 1208]
	mov	rcx, qword ptr [rsp + 1216]
	jmp	.LBB7_1
.LBB7_31:
	mov	edi, 1
	mov	rsi, rax
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB7_32:
	xor	eax, eax
	add	rsp, 1224
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end7:

rust_eh_personality:
	ret
.Lfunc_end8:

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0:
	.ascii	"panic!\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1:
	.ascii	"Parse IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2:
	.ascii	"s "

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.ascii	"Unsupported cmd!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.asciz	"%d\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7:
	.ascii	"`dec` operations are not supported yet"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
