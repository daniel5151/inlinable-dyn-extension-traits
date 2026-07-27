__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end1:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state:
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end2:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec:
	dec	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end3:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc:
	inc	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end4:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul:
	cmp	rsi, 7
	jne	.LBB5_2
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	jmp	.LBB5_3
.LBB5_2:
	imul	rsi, qword ptr [rdi + 8]
	imul	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	xor	eax, eax
.LBB5_3:
	mov	edx, 28
	ret
.Lfunc_end5:

<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor:
	mov	qword ptr [rdi + 8], rsi
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
	sub	rsp, 1208
	lea	rbx, [rsp + 152]
	mov	qword ptr [rbx], 0
	mov	qword ptr [rbx + 8], 1
	lea	r14, [rsp + 168]
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	r13, [rsp + 18]
	movaps	xmmword ptr [r13 + 110], xmm0
	movaps	xmmword ptr [r13 + 94], xmm0
	movaps	xmmword ptr [r13 + 78], xmm0
	movaps	xmmword ptr [r13 + 62], xmm0
	movaps	xmmword ptr [r13 + 46], xmm0
	movaps	xmmword ptr [r13 + 30], xmm0
	movaps	xmmword ptr [r13 + 14], xmm0
	movaps	xmmword ptr [r13 - 2], xmm0
	mov	r12, rsp
	mov	rbp, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
	xor	ecx, ecx
.LBB7_1:
	xor	r15d, r15d
.LBB7_2:
	cmp	rcx, rax
	jb	.LBB7_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	rbp
	test	rax, rax
	jle	.LBB7_76
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB7_5:
	cmp	rax, rcx
	jb	.LBB7_71
	cmp	rax, 1024
	ja	.LBB7_71
	cmp	rcx, rax
	je	.LBB7_2
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB7_9:
	mov	sil, byte ptr [rsp + rcx + 167]
	mov	qword ptr [rsp + 1200], rcx
	cmp	sil, 10
	je	.LBB7_10
	cmp	r15, 127
	ja	.LBB7_14
	mov	byte ptr [rsp + r15 + 16], sil
	inc	r15
.LBB7_14:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB7_9
	mov	rcx, rax
	jmp	.LBB7_2
.LBB7_76:
	lea	rax, [r15 - 129]
	cmp	rax, -128
	jb	.LBB7_71
	jmp	.LBB7_77
.LBB7_10:
	cmp	r15, 128
	ja	.LBB7_71
	test	r15, r15
	je	.LBB7_1
.LBB7_77:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 22
	#APP
	#NO_APP
	cmp	r15, 2
	je	.LBB7_16
	cmp	r15, 1
	jne	.LBB7_17
	movzx	eax, byte ptr [rsp + 16]
	cmp	eax, 43
	je	.LBB7_68
	cmp	eax, 45
	jne	.LBB7_17
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	jmp	.LBB7_73
.LBB7_16:
	cmp	word ptr [rsp + 16], 11563
	jne	.LBB7_17
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
	test	rax, rax
	jne	.LBB7_70
.LBB7_73:
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec
	jmp	.LBB7_69
.LBB7_17:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 19
	#APP
	#NO_APP
	cmp	r15, 2
	jb	.LBB7_32
	cmp	word ptr [rsp + 16], 8234
	jne	.LBB7_32
	mov	rax, r15
	add	rax, -2
	je	.LBB7_32
	movzx	ecx, byte ptr [rsp + 18]
	cmp	ecx, 45
	je	.LBB7_21
	cmp	ecx, 43
	jne	.LBB7_23
	xor	ecx, ecx
	jmp	.LBB7_25
.LBB7_68:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
.LBB7_69:
	test	rax, rax
	jne	.LBB7_70
	jmp	.LBB7_51
.LBB7_21:
	mov	cl, 1
.LBB7_25:
	mov	rax, r15
	lea	rdx, [rsp + 19]
	add	rax, -3
	jne	.LBB7_26
	jmp	.LBB7_32
.LBB7_23:
	xor	ecx, ecx
	mov	rdx, r13
.LBB7_26:
	xor	edi, edi
	xor	esi, esi
.LBB7_27:
	cmp	rax, rdi
	je	.LBB7_31
	mov	r8b, byte ptr [rdx + rdi]
	add	r8b, -48
	cmp	r8b, 9
	ja	.LBB7_32
	imul	rsi, rsi, 10
	jo	.LBB7_32
	movzx	r8d, r8b
	inc	rdi
	add	rsi, r8
	jno	.LBB7_27
	jmp	.LBB7_32
.LBB7_31:
	movzx	eax, cl
	neg	rax
	or	rax, 1
	imul	rsi, rax
	jno	.LBB7_75
.LBB7_32:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 27
	#APP
	#NO_APP
	cmp	r15, 3
	jb	.LBB7_47
	mov	eax, dword ptr [rsp + 16]
	mov	ecx, 32298
	xor	eax, ecx
	movzx	ecx, byte ptr [rsp + 18]
	xor	ecx, 32
	or	cx, ax
	jne	.LBB7_52
	mov	rax, r15
	add	rax, -3
	je	.LBB7_52
	movzx	ecx, byte ptr [rsp + 19]
	cmp	ecx, 45
	je	.LBB7_36
	cmp	ecx, 43
	jne	.LBB7_38
	xor	ecx, ecx
	jmp	.LBB7_40
.LBB7_36:
	mov	cl, 1
.LBB7_40:
	mov	rax, r15
	lea	rdx, [rsp + 20]
	add	rax, -4
	jne	.LBB7_41
	jmp	.LBB7_52
.LBB7_38:
	xor	ecx, ecx
	lea	rdx, [rsp + 19]
.LBB7_41:
	xor	edi, edi
	xor	esi, esi
.LBB7_42:
	cmp	rax, rdi
	je	.LBB7_46
	mov	r8b, byte ptr [rdx + rdi]
	add	r8b, -48
	cmp	r8b, 9
	ja	.LBB7_47
	imul	rsi, rsi, 10
	jo	.LBB7_47
	movzx	r8d, r8b
	inc	rdi
	add	rsi, r8
	jno	.LBB7_42
	jmp	.LBB7_47
.LBB7_46:
	movzx	eax, cl
	neg	rax
	or	rax, 1
	imul	rsi, rax
	jno	.LBB7_74
.LBB7_47:
	test	r15, r15
	je	.LBB7_65
	cmp	r15, 1
	jne	.LBB7_52
	cmp	byte ptr [rsp + 16], 112
	jne	.LBB7_65
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB7_51
.LBB7_52:
	cmp	word ptr [rsp + 16], 8307
	jne	.LBB7_65
	mov	rcx, r15
	add	rcx, -2
	je	.LBB7_65
	movzx	eax, byte ptr [rsp + 18]
	cmp	eax, 45
	je	.LBB7_55
	cmp	eax, 43
	jne	.LBB7_57
	xor	eax, eax
	jmp	.LBB7_59
.LBB7_55:
	mov	al, 1
.LBB7_59:
	lea	rdx, [rsp + 19]
	add	r15, -3
	mov	rcx, r15
	jne	.LBB7_60
	jmp	.LBB7_65
.LBB7_57:
	xor	eax, eax
	mov	rdx, r13
.LBB7_60:
	xor	edi, edi
	xor	esi, esi
.LBB7_61:
	cmp	rcx, rdi
	je	.LBB7_66
	mov	r8b, byte ptr [rdx + rdi]
	add	r8b, -48
	cmp	r8b, 9
	ja	.LBB7_65
	imul	rsi, rsi, 10
	jo	.LBB7_65
	movzx	r8d, r8b
	inc	rdi
	add	rsi, r8
	jno	.LBB7_61
	jmp	.LBB7_65
.LBB7_66:
	movzx	eax, al
	neg	rax
	or	rax, 1
	imul	rsi, rax
	jno	.LBB7_67
.LBB7_65:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	r15, qword ptr [rip + write@GOTPCREL]
	call	r15
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	call	r15
.LBB7_51:
	mov	rax, qword ptr [rsp + 1192]
	mov	rcx, qword ptr [rsp + 1200]
	jmp	.LBB7_1
.LBB7_67:
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state
	jmp	.LBB7_69
.LBB7_75:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul
	jmp	.LBB7_69
.LBB7_74:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 28
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor
	jmp	.LBB7_69
.LBB7_70:
	mov	edi, 1
	mov	rsi, rax
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB7_71:
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

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0:
	.ascii	"panic!\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1:
	.ascii	"Parse IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2:
	.ascii	"Parse Mul extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.ascii	"Parse ScaleFactor extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.ascii	"*~ "

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.ascii	"Unsupported cmd!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7:
	.asciz	"%d\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8:
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9:
	.ascii	"Mul extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10:
	.ascii	"ScaleFactor nested extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11:
	.ascii	"multiplying by 7 is unlucky!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
