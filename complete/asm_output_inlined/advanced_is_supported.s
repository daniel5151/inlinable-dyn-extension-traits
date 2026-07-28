__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::scale_factor:
	mov	qword ptr [rdi + 8], rsi
	ret
.Lfunc_end1:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::dec:
	dec	qword ptr [rdi]
	ret
.Lfunc_end2:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc:
	inc	qword ptr [rdi]
	ret
.Lfunc_end3:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::mul:
	cmp	rsi, 7
	jne	.LBB4_2
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.11]
	ret
.LBB4_2:
	imul	rsi, qword ptr [rdi + 8]
	imul	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end4:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end5:

<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::set_state:
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
	lea	rbx, [rsp + 152]
	mov	qword ptr [rbx], 0
	mov	qword ptr [rbx + 8], 1
	lea	r14, [rsp + 168]
	mov	edx, 1040
	mov	rdi, r14
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	rbp, [rsp + 18]
	movaps	xmmword ptr [rbp + 110], xmm0
	movaps	xmmword ptr [rbp + 94], xmm0
	movaps	xmmword ptr [rbp + 78], xmm0
	movaps	xmmword ptr [rbp + 62], xmm0
	movaps	xmmword ptr [rbp + 46], xmm0
	movaps	xmmword ptr [rbp + 30], xmm0
	movaps	xmmword ptr [rbp + 14], xmm0
	movaps	xmmword ptr [rbp - 2], xmm0
	mov	r12, rsp
	mov	r13, qword ptr [rip + read@GOTPCREL]
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
	call	r13
	test	rax, rax
	jle	.LBB7_71
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB7_5:
	cmp	rax, rcx
	jb	.LBB7_70
	cmp	rax, 1024
	ja	.LBB7_70
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
.LBB7_71:
	lea	rax, [r15 - 129]
	cmp	rax, -128
	jb	.LBB7_70
	jmp	.LBB7_72
.LBB7_10:
	cmp	r15, 128
	ja	.LBB7_70
	test	r15, r15
	je	.LBB7_1
.LBB7_72:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.1]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 22
	#APP
	#NO_APP
	cmp	r15, 1
	jne	.LBB7_25
	movzx	eax, byte ptr [rsp + 16]
	cmp	eax, 43
	je	.LBB7_63
	cmp	eax, 45
	jne	.LBB7_75
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	jmp	.LBB7_65
.LBB7_25:
	cmp	r15, 2
	sete	cl
	movzx	eax, word ptr [rsp + 16]
	movzx	edx, ax
	cmp	edx, 11563
	sete	dl
	test	cl, dl
	je	.LBB7_75
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc
.LBB7_65:
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::dec
	jmp	.LBB7_68
.LBB7_75:
	lea	rcx, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.2]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 19
	#APP
	#NO_APP
	cmp	r15, 2
	jb	.LBB7_28
	cmp	word ptr [rsp + 16], 8234
	jne	.LBB7_28
	mov	rcx, r15
	add	rcx, -2
	je	.LBB7_28
	movzx	edx, byte ptr [rsp + 18]
	cmp	edx, 45
	je	.LBB7_79
	cmp	edx, 43
	jne	.LBB7_17
	xor	edx, edx
	jmp	.LBB7_19
.LBB7_63:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc
	jmp	.LBB7_68
.LBB7_79:
	mov	dl, 1
.LBB7_19:
	mov	rcx, r15
	lea	rdi, [rsp + 19]
	add	rcx, -3
	jne	.LBB7_20
	jmp	.LBB7_28
.LBB7_17:
	xor	edx, edx
	mov	rdi, rbp
.LBB7_20:
	xor	r8d, r8d
	xor	esi, esi
.LBB7_21:
	cmp	rcx, r8
	je	.LBB7_27
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB7_28
	imul	rsi, rsi, 10
	jo	.LBB7_28
	movzx	r9d, r9b
	inc	r8
	add	rsi, r9
	jno	.LBB7_21
	jmp	.LBB7_28
.LBB7_27:
	movzx	ecx, dl
	neg	rcx
	or	rcx, 1
	imul	rsi, rcx
	jno	.LBB7_67
.LBB7_28:
	lea	rcx, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.3]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 27
	#APP
	#NO_APP
	cmp	r15, 3
	jb	.LBB7_43
	mov	ecx, dword ptr [rsp + 16]
	mov	edx, 32298
	xor	ecx, edx
	movzx	edx, byte ptr [rsp + 18]
	xor	edx, 32
	or	dx, cx
	jne	.LBB7_47
	mov	rcx, r15
	add	rcx, -3
	je	.LBB7_47
	movzx	edx, byte ptr [rsp + 19]
	cmp	edx, 45
	je	.LBB7_32
	cmp	edx, 43
	jne	.LBB7_34
	xor	edx, edx
	jmp	.LBB7_36
.LBB7_32:
	mov	dl, 1
.LBB7_36:
	mov	rcx, r15
	lea	rdi, [rsp + 20]
	add	rcx, -4
	jne	.LBB7_37
	jmp	.LBB7_47
.LBB7_34:
	xor	edx, edx
	lea	rdi, [rsp + 19]
.LBB7_37:
	xor	r8d, r8d
	xor	esi, esi
.LBB7_38:
	cmp	rcx, r8
	je	.LBB7_42
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB7_43
	imul	rsi, rsi, 10
	jo	.LBB7_43
	movzx	r9d, r9b
	inc	r8
	add	rsi, r9
	jno	.LBB7_38
	jmp	.LBB7_43
.LBB7_42:
	movzx	ecx, dl
	neg	rcx
	or	rcx, 1
	imul	rsi, rcx
	jno	.LBB7_66
.LBB7_43:
	cmp	r15, 1
	jne	.LBB7_46
	cmp	al, 112
	jne	.LBB7_60
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::get_state
	lea	rdi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.7]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB7_68
.LBB7_46:
	jbe	.LBB7_60
.LBB7_47:
	cmp	word ptr [rsp + 16], 8307
	jne	.LBB7_60
	mov	rcx, r15
	add	rcx, -2
	je	.LBB7_60
	movzx	eax, byte ptr [rsp + 18]
	cmp	eax, 45
	je	.LBB7_50
	cmp	eax, 43
	jne	.LBB7_52
	xor	eax, eax
	jmp	.LBB7_54
.LBB7_50:
	mov	al, 1
.LBB7_54:
	lea	rdx, [rsp + 19]
	add	r15, -3
	mov	rcx, r15
	jne	.LBB7_55
	jmp	.LBB7_60
.LBB7_52:
	xor	eax, eax
	mov	rdx, rbp
.LBB7_55:
	xor	edi, edi
	xor	esi, esi
.LBB7_56:
	cmp	rcx, rdi
	je	.LBB7_61
	mov	r8b, byte ptr [rdx + rdi]
	add	r8b, -48
	cmp	r8b, 9
	ja	.LBB7_60
	imul	rsi, rsi, 10
	jo	.LBB7_60
	movzx	r8d, r8b
	inc	rdi
	add	rsi, r8
	jno	.LBB7_56
	jmp	.LBB7_60
.LBB7_61:
	movzx	eax, al
	neg	rax
	or	rax, 1
	imul	rsi, rax
	jno	.LBB7_62
.LBB7_60:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.5]
	mov	r15, qword ptr [rip + write@GOTPCREL]
	call	r15
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.6]
	call	r15
.LBB7_68:
	mov	rax, qword ptr [rsp + 1192]
	mov	rcx, qword ptr [rsp + 1200]
	jmp	.LBB7_1
.LBB7_67:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.9]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::mul
	test	rax, rax
	jne	.LBB7_69
	jmp	.LBB7_68
.LBB7_66:
	lea	rax, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.10]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 21
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::scale_factor
	jmp	.LBB7_68
.LBB7_62:
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::set_state
	jmp	.LBB7_68
.LBB7_69:
	mov	edx, 28
	mov	edi, 1
	mov	rsi, rax
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	call	rbx
	lea	rsi, [rip + .Lanon.cabb224323f7f456a7965482e4c09287.6]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB7_70:
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
	.ascii	"Parse Mul extension"

.Lanon.cabb224323f7f456a7965482e4c09287.3:
	.ascii	"Parse ScaleFactor extension"

.Lanon.cabb224323f7f456a7965482e4c09287.4:
	.ascii	"*~ "

.Lanon.cabb224323f7f456a7965482e4c09287.5:
	.ascii	"Unsupported cmd!"

.Lanon.cabb224323f7f456a7965482e4c09287.6:
	.byte	10

.Lanon.cabb224323f7f456a7965482e4c09287.7:
	.asciz	"%d\n"

.Lanon.cabb224323f7f456a7965482e4c09287.8:
	.ascii	"IncDec extension"

.Lanon.cabb224323f7f456a7965482e4c09287.9:
	.ascii	"Mul extension"

.Lanon.cabb224323f7f456a7965482e4c09287.10:
	.ascii	"ScaleFactor extension"

.Lanon.cabb224323f7f456a7965482e4c09287.11:
	.ascii	"multiplying by 7 is unlucky!"

	.ident	"rustc version 1.99.0-nightly (6f72b5dd5 2026-07-22)"
