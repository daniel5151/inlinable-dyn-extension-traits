__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor:
	mov	rax, rdi
	mov	qword ptr [rsi + 8], rdx
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end1:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec:
	dec	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end2:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc:
	inc	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end3:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul:
	mov	rax, rdi
	cmp	rdx, 7
	jne	.LBB4_2
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rax + 16], 28
	mov	ecx, 1
	jmp	.LBB4_3
.LBB4_2:
	imul	rdx, qword ptr [rsi + 8]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rsi], rdx
	xor	ecx, ecx
.LBB4_3:
	mov	qword ptr [rax], rcx
	ret
.Lfunc_end4:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end5:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state:
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
	sub	rsp, 1224
	lea	rbx, [rsp + 168]
	mov	qword ptr [rbx], 0
	mov	qword ptr [rbx + 8], 1
	lea	r14, [rsp + 184]
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	rbp, [rsp + 34]
	movaps	xmmword ptr [rbp + 110], xmm0
	movaps	xmmword ptr [rbp + 94], xmm0
	movaps	xmmword ptr [rbp + 78], xmm0
	movaps	xmmword ptr [rbp + 62], xmm0
	movaps	xmmword ptr [rbp + 46], xmm0
	movaps	xmmword ptr [rbp + 30], xmm0
	movaps	xmmword ptr [rbp + 14], xmm0
	movaps	xmmword ptr [rbp - 2], xmm0
	lea	r15, [rsp + 8]
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB7_1:
	xor	r13d, r13d
.LBB7_2:
	mov	rcx, rax
	mov	rax, rdx
.LBB7_3:
	cmp	rcx, rax
	jb	.LBB7_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB7_81
	mov	qword ptr [rsp + 1208], rax
	mov	qword ptr [rsp + 1216], 0
	xor	ecx, ecx
.LBB7_6:
	cmp	rax, rcx
	jb	.LBB7_75
	cmp	rax, 1024
	ja	.LBB7_75
	cmp	rcx, rax
	je	.LBB7_3
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB7_10:
	mov	sil, byte ptr [rsp + rcx + 183]
	mov	qword ptr [rsp + 1216], rcx
	cmp	sil, 10
	je	.LBB7_11
	cmp	r13, 127
	ja	.LBB7_15
	mov	byte ptr [rsp + r13 + 32], sil
	inc	r13
.LBB7_15:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB7_10
	mov	rdx, rax
	jmp	.LBB7_2
.LBB7_81:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB7_75
	jmp	.LBB7_82
.LBB7_11:
	cmp	r13, 128
	ja	.LBB7_75
	test	r13, r13
	je	.LBB7_80
.LBB7_82:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 22
	#APP
	#NO_APP
	cmp	r13, 1
	jne	.LBB7_17
	movzx	eax, byte ptr [rsp + 32]
	cmp	eax, 43
	je	.LBB7_64
	cmp	eax, 45
	jne	.LBB7_18
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	jmp	.LBB7_65
.LBB7_17:
	cmp	r13, 2
	sete	cl
	movzx	eax, word ptr [rsp + 32]
	movzx	edx, ax
	cmp	edx, 11563
	sete	dl
	test	cl, dl
	je	.LBB7_18
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	dword ptr [rsp + 8], 1
	jne	.LBB7_71
	mov	rsi, qword ptr [rsp + 16]
	test	rsi, rsi
	jne	.LBB7_67
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	cmp	byte ptr [rsp + 8], 0
	je	.LBB7_73
	jmp	.LBB7_66
.LBB7_18:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 19
	#APP
	#NO_APP
	cmp	r13, 2
	jb	.LBB7_32
	cmp	word ptr [rsp + 32], 8234
	jne	.LBB7_32
	mov	rcx, r13
	add	rcx, -2
	je	.LBB7_32
	movzx	edx, byte ptr [rsp + 34]
	cmp	edx, 45
	je	.LBB7_22
	xor	esi, esi
	cmp	edx, 43
	je	.LBB7_23
	mov	rdi, rbp
	jmp	.LBB7_26
.LBB7_64:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
.LBB7_65:
	cmp	byte ptr [rsp + 8], 0
	je	.LBB7_80
.LBB7_66:
	mov	rsi, qword ptr [rsp + 16]
	test	rsi, rsi
	jne	.LBB7_67
.LBB7_79:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	call	r13
.LBB7_80:
	mov	rdx, qword ptr [rsp + 1208]
	mov	rax, qword ptr [rsp + 1216]
	jmp	.LBB7_1
.LBB7_71:
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	cmp	byte ptr [rsp + 8], 0
	jne	.LBB7_72
	jmp	.LBB7_80
.LBB7_22:
	mov	sil, 1
.LBB7_23:
	mov	rcx, r13
	lea	rdi, [rsp + 35]
	add	rcx, -3
	je	.LBB7_32
.LBB7_26:
	xor	r8d, r8d
	xor	edx, edx
.LBB7_27:
	cmp	rcx, r8
	je	.LBB7_31
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB7_32
	imul	rdx, rdx, 10
	jo	.LBB7_32
	movzx	r9d, r9b
	inc	r8
	add	rdx, r9
	jno	.LBB7_27
	jmp	.LBB7_32
.LBB7_31:
	movzx	ecx, sil
	neg	rcx
	or	rcx, 1
	imul	rdx, rcx
	jno	.LBB7_77
.LBB7_32:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 27
	#APP
	#NO_APP
	cmp	r13, 3
	jb	.LBB7_46
	mov	ecx, dword ptr [rsp + 32]
	mov	edx, 32298
	xor	ecx, edx
	movzx	edx, byte ptr [rsp + 34]
	xor	edx, 32
	or	dx, cx
	jne	.LBB7_50
	mov	rcx, r13
	add	rcx, -3
	je	.LBB7_50
	movzx	edx, byte ptr [rsp + 35]
	cmp	edx, 45
	je	.LBB7_36
	xor	esi, esi
	cmp	edx, 43
	je	.LBB7_37
	lea	rdi, [rsp + 35]
	jmp	.LBB7_40
.LBB7_36:
	mov	sil, 1
.LBB7_37:
	mov	rcx, r13
	lea	rdi, [rsp + 36]
	add	rcx, -4
	je	.LBB7_50
.LBB7_40:
	xor	r8d, r8d
	xor	edx, edx
.LBB7_41:
	cmp	rcx, r8
	je	.LBB7_45
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB7_46
	imul	rdx, rdx, 10
	jo	.LBB7_46
	movzx	r9d, r9b
	inc	r8
	add	rdx, r9
	jno	.LBB7_41
	jmp	.LBB7_46
.LBB7_45:
	movzx	ecx, sil
	neg	rcx
	or	rcx, 1
	imul	rdx, rcx
	jno	.LBB7_76
.LBB7_46:
	cmp	r13, 1
	jne	.LBB7_49
	cmp	al, 112
	jne	.LBB7_79
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB7_80
.LBB7_49:
	jbe	.LBB7_79
.LBB7_50:
	cmp	word ptr [rsp + 32], 8307
	jne	.LBB7_79
	mov	rcx, r13
	add	rcx, -2
	je	.LBB7_79
	movzx	eax, byte ptr [rsp + 34]
	cmp	eax, 45
	je	.LBB7_53
	cmp	eax, 43
	jne	.LBB7_55
	xor	eax, eax
	jmp	.LBB7_57
.LBB7_53:
	mov	al, 1
.LBB7_57:
	lea	rdx, [rsp + 35]
	add	r13, -3
	mov	rcx, r13
	je	.LBB7_79
	jmp	.LBB7_58
.LBB7_55:
	xor	eax, eax
	mov	rdx, rbp
.LBB7_58:
	xor	edi, edi
	xor	esi, esi
.LBB7_59:
	cmp	rcx, rdi
	je	.LBB7_78
	mov	r8b, byte ptr [rdx + rdi]
	add	r8b, -48
	cmp	r8b, 9
	ja	.LBB7_79
	imul	rsi, rsi, 10
	jo	.LBB7_79
	movzx	r8d, r8b
	inc	rdi
	add	rsi, r8
	jno	.LBB7_59
	jmp	.LBB7_79
.LBB7_78:
	movzx	eax, al
	neg	rax
	or	rax, 1
	imul	rsi, rax
	jo	.LBB7_79
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB7_80
.LBB7_77:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul
	jmp	.LBB7_65
.LBB7_76:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 21
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	jmp	.LBB7_65
.LBB7_72:
	mov	rsi, qword ptr [rsp + 16]
	test	rsi, rsi
	je	.LBB7_73
.LBB7_67:
	mov	rdx, qword ptr [rsp + 24]
	jmp	.LBB7_74
.LBB7_73:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12]
	mov	edx, 23
.LBB7_74:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB7_75:
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
	.ascii	"ScaleFactor extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11:
	.ascii	"multiplying by 7 is unlucky!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
