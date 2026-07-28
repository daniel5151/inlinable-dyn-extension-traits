__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget>>::parse_command:
	push	rbx
	sub	rsp, 16
	mov	rbx, rdi
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.1]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 22
	#APP
	#NO_APP
	test	rdx, rdx
	je	.LBB1_15
	cmp	rdx, 2
	je	.LBB1_11
	cmp	rdx, 1
	jne	.LBB1_12
	movzx	eax, byte ptr [rsi]
	cmp	eax, 43
	je	.LBB1_7
	cmp	eax, 45
	jne	.LBB1_5
	mov	word ptr [rbx], 257
	jmp	.LBB1_10
.LBB1_11:
	cmp	word ptr [rsi], 11563
	jne	.LBB1_12
	mov	word ptr [rbx], 513
	jmp	.LBB1_10
.LBB1_12:
	cmp	word ptr [rsi], 8307
	jne	.LBB1_15
	add	rdx, -2
	add	rsi, 2
	mov	rdi, rsi
	mov	rsi, rdx
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_15
	mov	byte ptr [rbx], 0
	mov	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 16], rdx
	jmp	.LBB1_10
.LBB1_7:
	mov	word ptr [rbx], 1
	jmp	.LBB1_10
.LBB1_5:
	cmp	byte ptr [rsi], 112
	jne	.LBB1_15
	mov	byte ptr [rbx], 0
	mov	qword ptr [rbx + 8], 0
	jmp	.LBB1_10
.LBB1_15:
	mov	byte ptr [rbx], -1
.LBB1_10:
	mov	rax, rbx
	add	rsp, 16
	pop	rbx
	ret
.Lfunc_end1:

<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget>>::handle:
	push	rbx
	sub	rsp, 16
	movzx	eax, byte ptr [rsi]
	test	eax, eax
	je	.LBB2_5
	cmp	eax, 1
	jne	.LBB2_7
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.6]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 16
	#APP
	#NO_APP
	movzx	eax, byte ptr [rsi + 1]
	test	eax, eax
	je	.LBB2_12
	lea	rbx, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.9]
	cmp	eax, 1
	je	.LBB2_14
	call	<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::inc
	jmp	.LBB2_14
.LBB2_5:
	cmp	byte ptr [rsi + 8], 0
	je	.LBB2_9
	mov	rsi, qword ptr [rsi + 16]
	call	<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::set_state
	jmp	.LBB2_13
.LBB2_7:
	cmp	byte ptr [rsi + 8], 0
	je	.LBB2_10
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 21
	#APP
	#NO_APP
	jmp	.LBB2_11
.LBB2_9:
	call	<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::get_state
	lea	rdi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.5]
	xor	ebx, ebx
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_14
.LBB2_10:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.7]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 13
	#APP
	#NO_APP
.LBB2_11:
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.3]
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	edx, 16
	mov	edi, 1
	call	rbx
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.4]
	mov	edx, 1
	mov	edi, 1
	call	rbx
	jmp	.LBB2_13
.LBB2_12:
	call	<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::inc
.LBB2_13:
	xor	ebx, ebx
.LBB2_14:
	mov	rax, rbx
	add	rsp, 16
	pop	rbx
	ret
.Lfunc_end2:

optional_trait_methods::commands::parse_isize:
	test	rsi, rsi
	je	.LBB3_12
	movzx	eax, byte ptr [rdi]
	cmp	eax, 45
	je	.LBB3_3
	xor	ecx, ecx
	cmp	eax, 43
	je	.LBB3_4
	jmp	.LBB3_6
.LBB3_3:
	mov	cl, 1
.LBB3_4:
	dec	rsi
	je	.LBB3_12
	inc	rdi
.LBB3_6:
	xor	eax, eax
	xor	r8d, r8d
	xor	edx, edx
.LBB3_7:
	cmp	rsi, r8
	je	.LBB3_13
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB3_11
	imul	rdx, rdx, 10
	jo	.LBB3_11
	movzx	r9d, r9b
	inc	r8
	add	rdx, r9
	jno	.LBB3_7
.LBB3_11:
	ret
.LBB3_12:
	xor	eax, eax
	ret
.LBB3_13:
	movzx	ecx, cl
	neg	rcx
	or	rcx, 1
	xor	eax, eax
	imul	rdx, rcx
	setno	al
	ret
.Lfunc_end3:

<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::inc:
	inc	qword ptr [rdi]
	ret
.Lfunc_end4:

<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end5:

<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end6:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1208
	mov	rax, rsp
	mov	qword ptr [rax], 0
	lea	r14, [rsp + 168]
	xor	r13d, r13d
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	r15, [rsp + 32]
	movaps	xmmword ptr [r15 + 112], xmm0
	movaps	xmmword ptr [r15 + 96], xmm0
	movaps	xmmword ptr [r15 + 80], xmm0
	movaps	xmmword ptr [r15 + 64], xmm0
	movaps	xmmword ptr [r15 + 48], xmm0
	movaps	xmmword ptr [r15 + 32], xmm0
	movaps	xmmword ptr [r15 + 16], xmm0
	movaps	xmmword ptr [r15], xmm0
	lea	r12, [rsp + 8]
	mov	rbx, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
.LBB7_1:
	xor	ebp, ebp
.LBB7_2:
	cmp	rax, r13
	jb	.LBB7_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	rbx
	test	rax, rax
	jle	.LBB7_20
	mov	r13, rax
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	eax, eax
.LBB7_5:
	cmp	r13, rax
	jb	.LBB7_19
	cmp	r13, 1024
	ja	.LBB7_19
	cmp	rax, r13
	je	.LBB7_2
	inc	rax
	mov	rcx, r13
	neg	rcx
.LBB7_9:
	mov	dl, byte ptr [rsp + rax + 167]
	mov	qword ptr [rsp + 1200], rax
	cmp	dl, 10
	je	.LBB7_10
	cmp	rbp, 127
	ja	.LBB7_14
	mov	byte ptr [rsp + rbp + 32], dl
	inc	rbp
.LBB7_14:
	lea	rdx, [rcx + rax]
	inc	rdx
	inc	rax
	cmp	rdx, 1
	jne	.LBB7_9
	mov	rax, r13
	jmp	.LBB7_2
.LBB7_20:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB7_19
	jmp	.LBB7_21
.LBB7_10:
	cmp	rbp, 128
	ja	.LBB7_19
	test	rbp, rbp
	je	.LBB7_1
.LBB7_21:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbp
	call	<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget>>::parse_command
	cmp	byte ptr [rsp + 8], -1
	je	.LBB7_22
	mov	rdi, rsp
	mov	rsi, r12
	call	<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget>>::handle
	test	rax, rax
	jne	.LBB7_18
	jmp	.LBB7_17
.LBB7_22:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.3]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.4]
	call	r13
.LBB7_17:
	mov	r13, qword ptr [rsp + 1192]
	mov	rax, qword ptr [rsp + 1200]
	jmp	.LBB7_1
.LBB7_18:
	mov	edx, 38
	mov	edi, 1
	mov	rsi, rax
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	call	rbx
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.4]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB7_19:
	xor	eax, eax
	add	rsp, 1208
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

.Lanon.cabb224323f7f456a7965482e4c09287.0:
	.ascii	"panic!\n"

.Lanon.cabb224323f7f456a7965482e4c09287.1:
	.ascii	"Parse IncDec extension"

.Lanon.cabb224323f7f456a7965482e4c09287.2:
	.ascii	"s "

.Lanon.cabb224323f7f456a7965482e4c09287.3:
	.ascii	"Unsupported cmd!"

.Lanon.cabb224323f7f456a7965482e4c09287.4:
	.byte	10

.Lanon.cabb224323f7f456a7965482e4c09287.5:
	.asciz	"%d\n"

.Lanon.cabb224323f7f456a7965482e4c09287.6:
	.ascii	"IncDec extension"

.Lanon.cabb224323f7f456a7965482e4c09287.7:
	.ascii	"Mul extension"

.Lanon.cabb224323f7f456a7965482e4c09287.8:
	.ascii	"ScaleFactor extension"

.Lanon.cabb224323f7f456a7965482e4c09287.9:
	.ascii	"`dec` operations are not supported yet"

	.ident	"rustc version 1.99.0-nightly (6f72b5dd5 2026-07-22)"
