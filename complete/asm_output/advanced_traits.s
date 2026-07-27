__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget>>::parse_command:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 16
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 22
	#APP
	#NO_APP
	cmp	rdx, 2
	je	.LBB1_7
	cmp	r15, 1
	jne	.LBB1_8
	movzx	eax, byte ptr [r14]
	cmp	eax, 45
	je	.LBB1_5
	cmp	eax, 43
	jne	.LBB1_8
	mov	word ptr [rbx], 1
	jmp	.LBB1_13
.LBB1_7:
	cmp	word ptr [r14], 11563
	jne	.LBB1_8
	mov	word ptr [rbx], 513
	jmp	.LBB1_13
.LBB1_8:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 19
	#APP
	#NO_APP
	cmp	r15, 2
	jb	.LBB1_14
	cmp	word ptr [r14], 8234
	jne	.LBB1_14
	lea	rsi, [r15 - 2]
	lea	rdi, [r14 + 2]
	call	optional_trait_methods::commands::parse_isize
	cmp	rax, 1
	jne	.LBB1_14
	mov	byte ptr [rbx], 2
	mov	qword ptr [rbx + 8], 0
	jmp	.LBB1_12
.LBB1_14:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 27
	#APP
	#NO_APP
	cmp	r15, 3
	jb	.LBB1_19
	movzx	eax, word ptr [r14]
	xor	eax, 32298
	movzx	ecx, byte ptr [r14 + 2]
	xor	ecx, 32
	or	cx, ax
	jne	.LBB1_23
	lea	rsi, [r15 - 3]
	lea	rdi, [r14 + 3]
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_23
	mov	byte ptr [rbx], 2
	jmp	.LBB1_18
.LBB1_19:
	cmp	r15, 2
	je	.LBB1_23
	cmp	r15, 1
	jne	.LBB1_26
	cmp	byte ptr [r14], 112
	jne	.LBB1_26
	mov	byte ptr [rbx], 0
	mov	qword ptr [rbx + 8], 0
	jmp	.LBB1_13
.LBB1_23:
	cmp	word ptr [r14], 8307
	jne	.LBB1_26
	add	r15, -2
	add	r14, 2
	mov	rdi, r14
	mov	rsi, r15
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_26
	mov	byte ptr [rbx], 0
.LBB1_18:
	mov	qword ptr [rbx + 8], 1
.LBB1_12:
	mov	qword ptr [rbx + 16], rdx
	jmp	.LBB1_13
.LBB1_26:
	mov	byte ptr [rbx], -1
	jmp	.LBB1_13
.LBB1_5:
	mov	word ptr [rbx], 257
.LBB1_13:
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

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end3:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state:
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end4:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec:
	dec	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end5:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc:
	inc	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end6:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul:
	cmp	rsi, 7
	jne	.LBB7_2
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.13]
	jmp	.LBB7_3
.LBB7_2:
	imul	rsi, qword ptr [rdi + 8]
	imul	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	xor	eax, eax
.LBB7_3:
	mov	edx, 28
	ret
.Lfunc_end7:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor:
	mov	qword ptr [rdi + 8], rsi
	xor	eax, eax
	ret
.Lfunc_end8:

main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1240
	lea	rbx, [rsp + 48]
	mov	qword ptr [rbx], 0
	mov	qword ptr [rbx + 8], 1
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
	lea	r12, [rsp + 24]
	mov	rbp, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
	xor	ecx, ecx
.LBB9_1:
	xor	r13d, r13d
.LBB9_2:
	cmp	rcx, rax
	jb	.LBB9_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	rbp
	test	rax, rax
	jle	.LBB9_31
	mov	qword ptr [rsp + 1224], rax
	mov	qword ptr [rsp + 1232], 0
	xor	ecx, ecx
.LBB9_5:
	cmp	rax, rcx
	jb	.LBB9_23
	cmp	rax, 1024
	ja	.LBB9_23
	cmp	rcx, rax
	je	.LBB9_2
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB9_9:
	mov	sil, byte ptr [rsp + rcx + 199]
	mov	qword ptr [rsp + 1232], rcx
	cmp	sil, 10
	je	.LBB9_10
	cmp	r13, 127
	ja	.LBB9_14
	mov	byte ptr [rsp + r13 + 64], sil
	inc	r13
.LBB9_14:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB9_9
	mov	rcx, rax
	jmp	.LBB9_2
.LBB9_31:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB9_23
	jmp	.LBB9_32
.LBB9_10:
	cmp	r13, 128
	ja	.LBB9_23
	test	r13, r13
	je	.LBB9_1
.LBB9_32:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	call	<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget>>::parse_command
	movzx	ecx, byte ptr [rsp + 24]
	cmp	ecx, 255
	je	.LBB9_29
	mov	rax, qword ptr [rsp + 32]
	mov	rsi, qword ptr [rsp + 40]
	test	ecx, ecx
	je	.LBB9_16
	cmp	ecx, 1
	jne	.LBB9_35
	movzx	eax, byte ptr [rsp + 25]
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 16
	lea	rcx, [rsp + 8]
	#APP
	#NO_APP
	mov	rdi, rbx
	cmp	eax, 2
	je	.LBB9_24
	cmp	eax, 1
	je	.LBB9_26
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	jmp	.LBB9_21
.LBB9_29:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	call	r13
	jmp	.LBB9_30
.LBB9_16:
	mov	rdi, rbx
	test	al, 1
	je	.LBB9_17
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state
	jmp	.LBB9_21
.LBB9_35:
	test	al, 1
	je	.LBB9_36
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 28
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor
	jmp	.LBB9_21
.LBB9_17:
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB9_30
.LBB9_36:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul
	jmp	.LBB9_21
.LBB9_24:
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	test	rax, rax
	jne	.LBB9_22
	mov	rdi, rbx
.LBB9_26:
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec
.LBB9_21:
	test	rax, rax
	jne	.LBB9_22
.LBB9_30:
	mov	rax, qword ptr [rsp + 1224]
	mov	rcx, qword ptr [rsp + 1232]
	jmp	.LBB9_1
.LBB9_22:
	mov	edi, 1
	mov	rsi, rax
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB9_23:
	xor	eax, eax
	add	rsp, 1240
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end9:

rust_eh_personality:
	ret
.Lfunc_end10:

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
	.ascii	"ScaleFactor nested extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.13:
	.ascii	"multiplying by 7 is unlucky!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
