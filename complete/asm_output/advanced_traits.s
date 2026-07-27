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

<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget>>::run:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1224
	mov	r14, rdi
	lea	r15, [rsp + 184]
	xor	ebx, ebx
	mov	edx, 1040
	mov	rdi, r15
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	r12, [rsp + 48]
	movaps	xmmword ptr [r12 + 112], xmm0
	movaps	xmmword ptr [r12 + 96], xmm0
	movaps	xmmword ptr [r12 + 80], xmm0
	movaps	xmmword ptr [r12 + 64], xmm0
	movaps	xmmword ptr [r12 + 48], xmm0
	movaps	xmmword ptr [r12 + 32], xmm0
	movaps	xmmword ptr [r12 + 16], xmm0
	movaps	xmmword ptr [r12], xmm0
	mov	r13, qword ptr [rip + read@GOTPCREL]
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
	call	r13
	test	rax, rax
	jle	.LBB2_18
	mov	qword ptr [rsp + 1208], rax
	mov	qword ptr [rsp + 1216], 0
	xor	ecx, ecx
.LBB2_6:
	cmp	rax, rcx
	jb	.LBB2_19
	cmp	rax, 1024
	ja	.LBB2_20
	cmp	rcx, rax
	je	.LBB2_3
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB2_10:
	mov	sil, byte ptr [rsp + rcx + 183]
	mov	qword ptr [rsp + 1216], rcx
	cmp	sil, 10
	je	.LBB2_11
	cmp	rbp, 127
	ja	.LBB2_23
	mov	byte ptr [rsp + rbp + 48], sil
	inc	rbp
.LBB2_23:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB2_10
	mov	rdx, rax
	jmp	.LBB2_2
.LBB2_18:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB2_19
	jmp	.LBB2_13
.LBB2_11:
	cmp	rbp, 128
	ja	.LBB2_19
	test	rbp, rbp
	je	.LBB2_38
.LBB2_13:
	lea	rdi, [rsp + 24]
	mov	rsi, r12
	mov	rdx, rbp
	call	<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget>>::parse_command
	movzx	ecx, byte ptr [rsp + 24]
	cmp	ecx, 255
	je	.LBB2_37
	mov	rax, qword ptr [rsp + 32]
	mov	rsi, qword ptr [rsp + 40]
	test	ecx, ecx
	je	.LBB2_26
	cmp	ecx, 1
	jne	.LBB2_16
	movzx	eax, byte ptr [rsp + 25]
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 16
	lea	rcx, [rsp + 8]
	#APP
	#NO_APP
	mov	rdi, r14
	cmp	eax, 2
	je	.LBB2_33
	cmp	eax, 1
	je	.LBB2_35
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	jmp	.LBB2_31
.LBB2_37:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	call	rbp
	jmp	.LBB2_38
.LBB2_26:
	mov	rdi, r14
	test	al, 1
	je	.LBB2_27
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state
	jmp	.LBB2_31
.LBB2_16:
	test	al, 1
	je	.LBB2_17
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 28
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	mov	rdi, r14
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor
	jmp	.LBB2_31
.LBB2_27:
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_38
.LBB2_17:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	mov	rdi, r14
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul
	jmp	.LBB2_31
.LBB2_33:
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	test	rax, rax
	jne	.LBB2_32
	mov	rdi, r14
.LBB2_35:
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec
.LBB2_31:
	test	rax, rax
	jne	.LBB2_32
.LBB2_38:
	mov	rdx, qword ptr [rsp + 1208]
	mov	rax, qword ptr [rsp + 1216]
	jmp	.LBB2_1
.LBB2_19:
.LBB2_20:
	mov	rax, rbx
	add	rsp, 1224
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB2_32:
	mov	rbx, rax
	jmp	.LBB2_20
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

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end4:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state:
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end5:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec:
	dec	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end6:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc:
	inc	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end7:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul:
	cmp	rsi, 7
	jne	.LBB8_2
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.13]
	jmp	.LBB8_3
.LBB8_2:
	imul	rsi, qword ptr [rdi + 8]
	imul	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	xor	eax, eax
.LBB8_3:
	mov	edx, 28
	ret
.Lfunc_end8:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor:
	mov	qword ptr [rdi + 8], rsi
	xor	eax, eax
	ret
.Lfunc_end9:

main:
	push	rbx
	sub	rsp, 16
	mov	rdi, rsp
	mov	qword ptr [rdi], 0
	mov	qword ptr [rdi + 8], 1
	call	<optional_trait_methods::using_traits::controller::TargetController<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget>>::run
	test	rax, rax
	je	.LBB10_2
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	edi, 1
	mov	rsi, rax
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB10_2:
	xor	eax, eax
	add	rsp, 16
	pop	rbx
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
	.ascii	"ScaleFactor nested extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.13:
	.ascii	"multiplying by 7 is unlucky!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
