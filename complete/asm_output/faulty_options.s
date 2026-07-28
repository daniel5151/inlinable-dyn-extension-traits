__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.0]
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
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.1]
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
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.2]
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
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.4]
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

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::unsupported_cmd:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.7]
	mov	r14, qword ptr [rip + write@GOTPCREL]
	mov	edx, 16
	mov	edi, 1
	call	r14
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	edx, 1
	mov	edi, 1
	call	r14
	mov	qword ptr [rbx], 0
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
.Lfunc_end2:

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::handle:
	push	r14
	push	rbx
	sub	rsp, 24
	mov	rbx, rdi
	movzx	eax, byte ptr [rdx]
	test	eax, eax
	je	.LBB3_8
	cmp	eax, 1
	jne	.LBB3_10
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.10]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 16
	#APP
	#NO_APP
	movzx	eax, byte ptr [rdx + 1]
	test	eax, eax
	je	.LBB3_17
	cmp	eax, 1
	je	.LBB3_14
	mov	r14, rsp
	mov	rdi, r14
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	dword ptr [r14], 1
	jne	.LBB3_20
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	jne	.LBB3_19
	mov	r14, rsp
	mov	rdi, r14
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::unsupported_cmd
	cmp	dword ptr [r14], 1
	jne	.LBB3_15
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rbx + 8], xmm0
	jmp	.LBB3_21
.LBB3_8:
	cmp	byte ptr [rdx + 8], 0
	je	.LBB3_12
	mov	rax, qword ptr [rdx + 16]
	mov	rdi, rsi
	mov	rsi, rax
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB3_15
.LBB3_10:
	cmp	byte ptr [rdx + 8], 0
	je	.LBB3_13
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.12]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 21
	#APP
	#NO_APP
	jmp	.LBB3_14
.LBB3_12:
	mov	rdi, rsi
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.9]
	xor	r14d, r14d
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB3_16
.LBB3_13:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.11]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 13
	#APP
	#NO_APP
.LBB3_14:
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.7]
	mov	r14, qword ptr [rip + write@GOTPCREL]
	mov	edx, 16
	mov	edi, 1
	call	r14
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	edx, 1
	mov	edi, 1
	call	r14
.LBB3_15:
	xor	r14d, r14d
.LBB3_16:
	mov	qword ptr [rbx], r14
	mov	rax, rbx
	add	rsp, 24
	pop	rbx
	pop	r14
	ret
.LBB3_17:
	mov	r14, rsp
	mov	rdi, r14
	call	<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	byte ptr [r14], 0
	je	.LBB3_15
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.LBB3_14
.LBB3_19:
	mov	rcx, qword ptr [rsp + 16]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 16], rcx
	jmp	.LBB3_21
.LBB3_20:
	mov	qword ptr [rbx + 8], 0
.LBB3_21:
	mov	r14d, 1
	jmp	.LBB3_16
.Lfunc_end3:

optional_trait_methods::commands::parse_isize:
	test	rsi, rsi
	je	.LBB4_12
	movzx	eax, byte ptr [rdi]
	cmp	eax, 45
	je	.LBB4_3
	xor	ecx, ecx
	cmp	eax, 43
	je	.LBB4_4
	jmp	.LBB4_6
.LBB4_3:
	mov	cl, 1
.LBB4_4:
	dec	rsi
	je	.LBB4_12
	inc	rdi
.LBB4_6:
	xor	eax, eax
	xor	r8d, r8d
	xor	edx, edx
.LBB4_7:
	cmp	rsi, r8
	je	.LBB4_13
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB4_11
	imul	rdx, rdx, 10
	jo	.LBB4_11
	movzx	r9d, r9b
	inc	r8
	add	rdx, r9
	jno	.LBB4_7
.LBB4_11:
	ret
.LBB4_12:
	xor	eax, eax
	ret
.LBB4_13:
	movzx	ecx, cl
	neg	rcx
	or	rcx, 1
	xor	eax, eax
	imul	rdx, rcx
	setno	al
	ret
.Lfunc_end4:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::inc:
	inc	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end5:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end6:

<optional_trait_methods::using_options::targets::faulty::FaultyTarget as optional_trait_methods::using_options::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end7:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1240
	lea	rax, [rsp + 8]
	mov	qword ptr [rax], 0
	lea	r14, [rsp + 200]
	xor	ebp, ebp
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
	lea	r12, [rsp + 40]
	mov	rbx, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
.LBB8_1:
	xor	r13d, r13d
.LBB8_2:
	cmp	rax, rbp
	jb	.LBB8_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	rbx
	test	rax, rax
	jle	.LBB8_22
	mov	rbp, rax
	mov	qword ptr [rsp + 1224], rax
	mov	qword ptr [rsp + 1232], 0
	xor	eax, eax
.LBB8_5:
	cmp	rbp, rax
	jb	.LBB8_21
	cmp	rbp, 1024
	ja	.LBB8_21
	cmp	rax, rbp
	je	.LBB8_2
	inc	rax
	mov	rcx, rbp
	neg	rcx
.LBB8_9:
	mov	dl, byte ptr [rsp + rax + 199]
	mov	qword ptr [rsp + 1232], rax
	cmp	dl, 10
	je	.LBB8_10
	cmp	r13, 127
	ja	.LBB8_14
	mov	byte ptr [rsp + r13 + 64], dl
	inc	r13
.LBB8_14:
	lea	rdx, [rcx + rax]
	inc	rdx
	inc	rax
	cmp	rdx, 1
	jne	.LBB8_9
	mov	rax, rbp
	jmp	.LBB8_2
.LBB8_22:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB8_21
	jmp	.LBB8_23
.LBB8_10:
	cmp	r13, 128
	ja	.LBB8_21
	test	r13, r13
	je	.LBB8_1
.LBB8_23:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::parse_command
	cmp	byte ptr [rsp + 40], -1
	je	.LBB8_24
	lea	rdi, [rsp + 16]
	lea	rsi, [rsp + 8]
	mov	rdx, r12
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::faulty::FaultyTarget>>::handle
	cmp	dword ptr [rsp + 16], 1
	je	.LBB8_17
	jmp	.LBB8_25
.LBB8_24:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.7]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	call	r13
.LBB8_25:
	mov	rbp, qword ptr [rsp + 1224]
	mov	rax, qword ptr [rsp + 1232]
	jmp	.LBB8_1
.LBB8_17:
	mov	rsi, qword ptr [rsp + 24]
	test	rsi, rsi
	je	.LBB8_19
	mov	rdx, qword ptr [rsp + 32]
	jmp	.LBB8_20
.LBB8_19:
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.13]
	mov	edx, 23
.LBB8_20:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB8_21:
	xor	eax, eax
	add	rsp, 1240
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end8:

rust_eh_personality:
	ret
.Lfunc_end9:

.Lanon.cabb224323f7f456a7965482e4c09287.0:
	.ascii	"panic!\n"

.Lanon.cabb224323f7f456a7965482e4c09287.1:
	.ascii	"Parse IncDec extension"

.Lanon.cabb224323f7f456a7965482e4c09287.2:
	.ascii	"Parse Mul extension"

.Lanon.cabb224323f7f456a7965482e4c09287.3:
	.ascii	"* "

.Lanon.cabb224323f7f456a7965482e4c09287.4:
	.ascii	"Parse ScaleFactor extension"

.Lanon.cabb224323f7f456a7965482e4c09287.5:
	.ascii	"*~ "

.Lanon.cabb224323f7f456a7965482e4c09287.6:
	.ascii	"s "

.Lanon.cabb224323f7f456a7965482e4c09287.7:
	.ascii	"Unsupported cmd!"

.Lanon.cabb224323f7f456a7965482e4c09287.8:
	.byte	10

.Lanon.cabb224323f7f456a7965482e4c09287.9:
	.asciz	"%d\n"

.Lanon.cabb224323f7f456a7965482e4c09287.10:
	.ascii	"IncDec extension"

.Lanon.cabb224323f7f456a7965482e4c09287.11:
	.ascii	"Mul extension"

.Lanon.cabb224323f7f456a7965482e4c09287.12:
	.ascii	"ScaleFactor extension"

.Lanon.cabb224323f7f456a7965482e4c09287.13:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.99.0-nightly (6f72b5dd5 2026-07-22)"
