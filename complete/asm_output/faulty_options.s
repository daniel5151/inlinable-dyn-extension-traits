__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 16
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 22
	#APP
	#NO_APP
	cmp	rdx, 1
	jne	.LBB1_4
	movzx	eax, byte ptr [r15]
	cmp	eax, 45
	je	.LBB1_18
	cmp	eax, 43
	jne	.LBB1_7
	mov	word ptr [rbx], 1
	jmp	.LBB1_26
.LBB1_4:
	cmp	r14, 2
	jne	.LBB1_7
	cmp	word ptr [r15], 11563
	jne	.LBB1_7
	mov	word ptr [rbx], 513
	jmp	.LBB1_26
.LBB1_7:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 19
	#APP
	#NO_APP
	cmp	r14, 2
	jb	.LBB1_11
	cmp	word ptr [r15], 8234
	jne	.LBB1_11
	lea	rsi, [r14 - 2]
	lea	rdi, [r15 + 2]
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_11
	mov	byte ptr [rbx], 2
	mov	qword ptr [rbx + 8], 0
	jmp	.LBB1_24
.LBB1_11:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 27
	#APP
	#NO_APP
	cmp	r14, 3
	jb	.LBB1_15
	movzx	eax, word ptr [r15]
	xor	eax, 32298
	movzx	ecx, byte ptr [r15 + 2]
	xor	ecx, 32
	or	cx, ax
	jne	.LBB1_20
	lea	rsi, [r14 - 3]
	lea	rdi, [r15 + 3]
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_20
	mov	byte ptr [rbx], 2
	jmp	.LBB1_23
.LBB1_15:
	cmp	r14, 1
	jne	.LBB1_19
	cmp	byte ptr [r15], 112
	jne	.LBB1_25
	mov	byte ptr [rbx], 0
	mov	qword ptr [rbx + 8], 0
	jmp	.LBB1_26
.LBB1_18:
	mov	word ptr [rbx], 257
	jmp	.LBB1_26
.LBB1_19:
	jbe	.LBB1_25
.LBB1_20:
	cmp	word ptr [r15], 8307
	jne	.LBB1_25
	add	r14, -2
	add	r15, 2
	mov	rdi, r15
	mov	rsi, r14
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_25
	mov	byte ptr [rbx], 0
.LBB1_23:
	mov	qword ptr [rbx + 8], 1
.LBB1_24:
	mov	qword ptr [rbx + 16], rdx
	jmp	.LBB1_26
.LBB1_25:
	mov	byte ptr [rbx], -1
.LBB1_26:
	mov	rax, rbx
	add	rsp, 16
	pop	rbx
	pop	r14
	pop	r15
	ret
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

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc:
	inc	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end3:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end4:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end5:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1240
	lea	rbx, [rsp + 56]
	mov	qword ptr [rbx], 0
	lea	r14, [rsp + 200]
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	r15, [rsp + 64]
	movaps	xmmword ptr [r15 + 112], xmm0
	movaps	xmmword ptr [r15 + 96], xmm0
	movaps	xmmword ptr [r15 + 80], xmm0
	movaps	xmmword ptr [r15 + 64], xmm0
	movaps	xmmword ptr [r15 + 48], xmm0
	movaps	xmmword ptr [r15 + 32], xmm0
	movaps	xmmword ptr [r15 + 16], xmm0
	movaps	xmmword ptr [r15], xmm0
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB6_1:
	xor	r13d, r13d
.LBB6_2:
	mov	rcx, rax
	mov	rax, rdx
.LBB6_3:
	cmp	rcx, rax
	jb	.LBB6_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB6_31
	mov	qword ptr [rsp + 1224], rax
	mov	qword ptr [rsp + 1232], 0
	xor	ecx, ecx
.LBB6_6:
	cmp	rax, rcx
	jb	.LBB6_30
	cmp	rax, 1024
	ja	.LBB6_30
	cmp	rcx, rax
	je	.LBB6_3
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB6_10:
	mov	sil, byte ptr [rsp + rcx + 199]
	mov	qword ptr [rsp + 1232], rcx
	cmp	sil, 10
	je	.LBB6_11
	cmp	r13, 127
	ja	.LBB6_15
	mov	byte ptr [rsp + r13 + 64], sil
	inc	r13
.LBB6_15:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB6_10
	mov	rdx, rax
	jmp	.LBB6_2
.LBB6_31:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB6_30
	jmp	.LBB6_32
.LBB6_11:
	cmp	r13, 128
	ja	.LBB6_30
	test	r13, r13
	je	.LBB6_27
.LBB6_32:
	lea	rdi, [rsp + 32]
	mov	rsi, r15
	mov	rdx, r13
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command
	movzx	ecx, byte ptr [rsp + 32]
	cmp	ecx, 255
	je	.LBB6_26
	mov	rax, qword ptr [rsp + 40]
	test	ecx, ecx
	je	.LBB6_17
	cmp	ecx, 1
	jne	.LBB6_23
	movzx	eax, byte ptr [rsp + 33]
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 16
	lea	rcx, [rsp + 8]
	#APP
	#NO_APP
	test	eax, eax
	je	.LBB6_20
	cmp	eax, 1
	je	.LBB6_26
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	dword ptr [rsp + 8], 1
	jne	.LBB6_28
	jmp	.LBB6_21
.LBB6_17:
	test	al, 1
	je	.LBB6_18
	mov	rsi, qword ptr [rsp + 48]
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB6_27
.LBB6_23:
	test	al, 1
	je	.LBB6_24
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 21
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	jmp	.LBB6_26
.LBB6_18:
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB6_27
.LBB6_24:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	jmp	.LBB6_26
.LBB6_20:
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	byte ptr [rsp + 8], 0
	je	.LBB6_27
.LBB6_21:
	mov	rsi, qword ptr [rsp + 16]
	test	rsi, rsi
	jne	.LBB6_22
.LBB6_26:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	call	rbp
.LBB6_27:
	mov	rdx, qword ptr [rsp + 1224]
	mov	rax, qword ptr [rsp + 1232]
	jmp	.LBB6_1
.LBB6_22:
	mov	rdx, qword ptr [rsp + 24]
	jmp	.LBB6_29
.LBB6_28:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.13]
	mov	edx, 23
.LBB6_29:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB6_30:
	xor	eax, eax
	add	rsp, 1240
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end6:

rust_eh_personality:
	ret
.Lfunc_end7:

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
