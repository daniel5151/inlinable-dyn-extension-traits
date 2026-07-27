__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command:
	push	r14
	push	rbx
	sub	rsp, 24
	mov	rbx, rsi
	mov	r14, rdi
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	lea	rcx, [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 22
	#APP
	#NO_APP
	cmp	rsi, 1
	jne	.LBB1_3
	movzx	eax, byte ptr [r14]
	cmp	eax, 43
	je	.LBB1_2
	cmp	eax, 45
	jne	.LBB1_7
	mov	eax, 3
	jmp	.LBB1_16
.LBB1_3:
	cmp	rbx, 2
	jne	.LBB1_7
	cmp	word ptr [r14], 11563
	jne	.LBB1_7
	mov	eax, 4
	jmp	.LBB1_16
.LBB1_7:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 19
	#APP
	#NO_APP
	cmp	rbx, 2
	jb	.LBB1_11
	cmp	word ptr [r14], 8234
	jne	.LBB1_11
	lea	rsi, [rbx - 2]
	lea	rdi, [r14 + 2]
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_11
	mov	eax, 5
	jmp	.LBB1_17
.LBB1_11:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	lea	rcx, [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 27
	#APP
	#NO_APP
	cmp	rbx, 3
	jb	.LBB1_18
	movzx	eax, word ptr [r14]
	xor	eax, 32298
	movzx	ecx, byte ptr [r14 + 2]
	xor	ecx, 32
	or	cx, ax
	jne	.LBB1_22
	lea	rsi, [rbx - 3]
	lea	rdi, [r14 + 3]
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_22
	mov	eax, 6
	jmp	.LBB1_17
.LBB1_18:
	cmp	rbx, 1
	jne	.LBB1_21
	cmp	byte ptr [r14], 112
	jne	.LBB1_23
	xor	eax, eax
	jmp	.LBB1_16
.LBB1_2:
	mov	eax, 2
	jmp	.LBB1_16
.LBB1_21:
	jbe	.LBB1_23
.LBB1_22:
	cmp	word ptr [r14], 8307
	je	.LBB1_24
.LBB1_23:
	mov	rax, -1
.LBB1_16:
.LBB1_17:
	add	rsp, 24
	pop	rbx
	pop	r14
	ret
.LBB1_24:
	add	rbx, -2
	add	r14, 2
	mov	rdi, r14
	mov	rsi, rbx
	call	optional_trait_methods::commands::parse_isize
	and	eax, 1
	dec	rax
	or	rax, 1
	jmp	.LBB1_17
.Lfunc_end1:

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::run:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1208
	mov	qword ptr [rsp + 24], rsi
	mov	rbx, rdi
	lea	r15, [rsp + 168]
	xor	ebp, ebp
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
	mov	r14, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB2_1:
	xor	r13d, r13d
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
	jle	.LBB2_13
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB2_6:
	cmp	rax, rcx
	jb	.LBB2_26
	cmp	rax, 1024
	ja	.LBB2_26
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
	cmp	r13, 127
	ja	.LBB2_18
	mov	byte ptr [rsp + r13 + 32], sil
	inc	r13
.LBB2_18:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB2_10
	mov	rdx, rax
	jmp	.LBB2_2
.LBB2_13:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB2_26
	jmp	.LBB2_14
.LBB2_11:
	cmp	r13, 128
	ja	.LBB2_26
	test	r13, r13
	je	.LBB2_34
.LBB2_14:
	mov	rdi, r12
	mov	rsi, r13
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command
	cmp	rax, -1
	je	.LBB2_33
	lea	rsi, [rip + .LJTI2_0]
	movsxd	rcx, dword ptr [rsi + 4*rax]
	add	rcx, rsi
	jmp	rcx
.LBB2_21:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 16
	mov	rcx, rsp
	#APP
	#NO_APP
	cmp	rax, 2
	je	.LBB2_28
	cmp	rax, 3
	je	.LBB2_33
	mov	rdi, rsp
	mov	rsi, qword ptr [rsp + 24]
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	dword ptr [rsp], 1
	jne	.LBB2_24
	jmp	.LBB2_29
.LBB2_28:
	mov	rdi, rsp
	mov	rsi, qword ptr [rsp + 24]
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	byte ptr [rsp], 0
	je	.LBB2_34
.LBB2_29:
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	jne	.LBB2_30
	jmp	.LBB2_33
.LBB2_20:
	mov	rdi, qword ptr [rsp + 24]
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_34
.LBB2_27:
	mov	rdi, qword ptr [rsp + 24]
	mov	rsi, rdx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB2_34
.LBB2_31:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	mov	rax, rsp
	#APP
	#NO_APP
	jmp	.LBB2_33
.LBB2_32:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 21
	mov	rax, rsp
	#APP
	#NO_APP
.LBB2_33:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	call	r13
.LBB2_34:
	mov	rdx, qword ptr [rsp + 1192]
	mov	rax, qword ptr [rsp + 1200]
	jmp	.LBB2_1
.LBB2_30:
	mov	rcx, qword ptr [rsp + 16]
	jmp	.LBB2_25
.LBB2_24:
	xor	eax, eax
.LBB2_25:
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 16], rcx
	mov	ebp, 1
.LBB2_26:
	mov	qword ptr [rbx], rbp
	mov	rax, rbx
	add	rsp, 1208
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end2:
.LJTI2_0:
	.long	.LBB2_20-.LJTI2_0
	.long	.LBB2_27-.LJTI2_0
	.long	.LBB2_21-.LJTI2_0
	.long	.LBB2_21-.LJTI2_0
	.long	.LBB2_21-.LJTI2_0
	.long	.LBB2_31-.LJTI2_0
	.long	.LBB2_32-.LJTI2_0

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

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc:
	inc	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end4:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end5:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end6:

main:
	push	rbx
	sub	rsp, 32
	mov	rsi, rsp
	mov	qword ptr [rsi], 0
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::run
	cmp	dword ptr [rbx], 1
	jne	.LBB7_5
	mov	rsi, qword ptr [rsp + 16]
	test	rsi, rsi
	je	.LBB7_3
	mov	rdx, qword ptr [rsp + 24]
	jmp	.LBB7_4
.LBB7_3:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.13]
	mov	edx, 23
.LBB7_4:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB7_5:
	xor	eax, eax
	add	rsp, 32
	pop	rbx
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
	.ascii	"Parse Mul extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.ascii	"* "

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.ascii	"Parse ScaleFactor extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.ascii	"*~ "

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.ascii	"s "

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7:
	.ascii	"Unsupported cmd!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9:
	.asciz	"%d\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10:
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11:
	.ascii	"Mul extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12:
	.ascii	"ScaleFactor extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.13:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
