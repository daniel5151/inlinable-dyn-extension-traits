__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget>>::parse_command:
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
	cmp	eax, 43
	je	.LBB1_18
	cmp	eax, 45
	jne	.LBB1_7
	mov	word ptr [rbx], 257
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
	mov	word ptr [rbx], 1
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

<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget>>::handle:
	push	rbx
	sub	rsp, 16
	mov	rbx, rdi
	movzx	eax, byte ptr [rsi]
	test	eax, eax
	je	.LBB2_6
	cmp	eax, 1
	jne	.LBB2_8
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 16
	#APP
	#NO_APP
	movzx	eax, byte ptr [rsi + 1]
	test	eax, eax
	je	.LBB2_12
	cmp	eax, 1
	je	.LBB2_5
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc
.LBB2_5:
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::dec
	jmp	.LBB2_13
.LBB2_6:
	cmp	byte ptr [rsi + 8], 0
	je	.LBB2_10
	mov	rsi, qword ptr [rsi + 16]
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::set_state
	jmp	.LBB2_13
.LBB2_8:
	cmp	byte ptr [rsi + 8], 0
	je	.LBB2_11
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 21
	#APP
	#NO_APP
	mov	rsi, qword ptr [rsi + 16]
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::scale_factor
	jmp	.LBB2_13
.LBB2_10:
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	xor	ebx, ebx
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_14
.LBB2_11:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 13
	#APP
	#NO_APP
	mov	rsi, qword ptr [rsi + 16]
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::mul
	mov	rbx, rax
	jmp	.LBB2_14
.LBB2_12:
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc
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

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::scale_factor:
	mov	qword ptr [rdi + 8], rsi
	ret
.Lfunc_end4:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::dec:
	dec	qword ptr [rdi]
	ret
.Lfunc_end5:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc:
	inc	qword ptr [rdi]
	ret
.Lfunc_end6:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::mul:
	cmp	rsi, 7
	jne	.LBB7_2
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.13]
	ret
.LBB7_2:
	imul	rsi, qword ptr [rdi + 8]
	imul	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end7:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end8:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end9:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1224
	lea	rbx, [rsp + 32]
	mov	qword ptr [rbx], 0
	mov	qword ptr [rbx + 8], 1
	lea	r14, [rsp + 184]
	xor	r13d, r13d
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
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
.LBB10_1:
	xor	ebp, ebp
.LBB10_2:
	cmp	rax, r13
	jb	.LBB10_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB10_20
	mov	r13, rax
	mov	qword ptr [rsp + 1208], rax
	mov	qword ptr [rsp + 1216], 0
	xor	eax, eax
.LBB10_5:
	cmp	r13, rax
	jb	.LBB10_19
	cmp	r13, 1024
	ja	.LBB10_19
	cmp	rax, r13
	je	.LBB10_2
	inc	rax
	mov	rcx, r13
	neg	rcx
.LBB10_9:
	mov	dl, byte ptr [rsp + rax + 183]
	mov	qword ptr [rsp + 1216], rax
	cmp	dl, 10
	je	.LBB10_10
	cmp	rbp, 127
	ja	.LBB10_14
	mov	byte ptr [rsp + rbp + 48], dl
	inc	rbp
.LBB10_14:
	lea	rdx, [rcx + rax]
	inc	rdx
	inc	rax
	cmp	rdx, 1
	jne	.LBB10_9
	mov	rax, r13
	jmp	.LBB10_2
.LBB10_20:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB10_19
	jmp	.LBB10_21
.LBB10_10:
	cmp	rbp, 128
	ja	.LBB10_19
	test	rbp, rbp
	je	.LBB10_1
.LBB10_21:
	lea	r13, [rsp + 8]
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget>>::parse_command
	cmp	byte ptr [rsp + 8], -1
	je	.LBB10_22
	mov	rdi, rbx
	mov	rsi, r13
	call	<optional_trait_methods::using_is_supported::controller::TargetController<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget>>::handle
	test	rax, rax
	jne	.LBB10_18
	jmp	.LBB10_17
.LBB10_22:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	call	r13
.LBB10_17:
	mov	r13, qword ptr [rsp + 1208]
	mov	rax, qword ptr [rsp + 1216]
	jmp	.LBB10_1
.LBB10_18:
	mov	edx, 28
	mov	edi, 1
	mov	rsi, rax
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB10_19:
	xor	eax, eax
	add	rsp, 1224
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end10:

rust_eh_personality:
	ret
.Lfunc_end11:

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
	.ascii	"multiplying by 7 is unlucky!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
