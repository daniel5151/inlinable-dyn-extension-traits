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
	movaps	xmmword ptr [rsp + 128], xmm0
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	movaps	xmmword ptr [rsp + 16], xmm0
	lea	r13, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	r15, rsp
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
	xor	ecx, ecx
.LBB7_1:
	xor	ebp, ebp
.LBB7_2:
	cmp	rcx, rax
	jb	.LBB7_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB7_61
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB7_5:
	cmp	rax, rcx
	jb	.LBB7_56
	cmp	rax, 1024
	ja	.LBB7_56
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
	cmp	rbp, 127
	ja	.LBB7_14
	mov	byte ptr [rsp + rbp + 16], sil
	inc	rbp
.LBB7_14:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB7_9
	mov	rcx, rax
	jmp	.LBB7_2
.LBB7_61:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB7_56
	jmp	.LBB7_62
.LBB7_10:
	cmp	rbp, 128
	ja	.LBB7_56
	test	rbp, rbp
	je	.LBB7_1
.LBB7_62:
	mov	qword ptr [rsp], r13
	mov	qword ptr [rsp + 8], 22
	#APP
	#NO_APP
	cmp	rbp, 2
	je	.LBB7_16
	cmp	rbp, 1
	jne	.LBB7_17
	movzx	eax, byte ptr [rsp + 16]
	cmp	eax, 43
	je	.LBB7_53
	cmp	eax, 45
	jne	.LBB7_17
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	jmp	.LBB7_58
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
	jne	.LBB7_55
.LBB7_58:
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::dec
	jmp	.LBB7_54
.LBB7_17:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 19
	#APP
	#NO_APP
	cmp	rbp, 2
	jb	.LBB7_27
	cmp	word ptr [rsp + 16], 8234
	jne	.LBB7_27
	mov	rax, rbp
	add	rax, -2
	je	.LBB7_27
	cmp	rax, 1
	jne	.LBB7_21
.LBB7_27:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 27
	#APP
	#NO_APP
	cmp	rbp, 3
	jb	.LBB7_37
	mov	eax, dword ptr [rsp + 16]
	mov	ecx, 32298
	xor	eax, ecx
	movzx	ecx, byte ptr [rsp + 18]
	xor	ecx, 32
	or	cx, ax
	jne	.LBB7_42
	mov	rax, rbp
	add	rax, -3
	je	.LBB7_42
	cmp	rax, 1
	je	.LBB7_42
	mov	al, byte ptr [rsp + 19]
	mov	ecx, 4
	xor	esi, esi
.LBB7_32:
	cmp	rbp, rcx
	je	.LBB7_36
	mov	dl, byte ptr [rsp + rcx + 16]
	add	dl, -48
	cmp	dl, 9
	ja	.LBB7_37
	imul	rsi, rsi, 10
	jo	.LBB7_37
	movzx	edx, dl
	inc	rcx
	add	rsi, rdx
	jno	.LBB7_32
	jmp	.LBB7_37
.LBB7_53:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtIncDec>::inc
.LBB7_54:
	test	rax, rax
	jne	.LBB7_55
	jmp	.LBB7_41
.LBB7_21:
	mov	al, byte ptr [rsp + 18]
	mov	ecx, 3
	xor	esi, esi
.LBB7_22:
	cmp	rbp, rcx
	je	.LBB7_26
	mov	dl, byte ptr [rsp + rcx + 16]
	add	dl, -48
	cmp	dl, 9
	ja	.LBB7_27
	imul	rsi, rsi, 10
	jo	.LBB7_27
	movzx	edx, dl
	inc	rcx
	add	rsi, rdx
	jno	.LBB7_22
	jmp	.LBB7_27
.LBB7_26:
	xor	ecx, ecx
	cmp	al, 45
	setne	cl
	lea	rax, [2*rcx - 1]
	imul	rsi, rax
	jo	.LBB7_27
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtMul>::mul
	jmp	.LBB7_54
.LBB7_36:
	xor	ecx, ecx
	cmp	al, 45
	setne	cl
	lea	rax, [2*rcx - 1]
	imul	rsi, rax
	jno	.LBB7_59
.LBB7_37:
	test	rbp, rbp
	je	.LBB7_50
	cmp	rbp, 1
	jne	.LBB7_42
	cmp	byte ptr [rsp + 16], 112
	jne	.LBB7_50
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB7_41
.LBB7_42:
	cmp	word ptr [rsp + 16], 8307
	jne	.LBB7_50
	mov	rax, rbp
	add	rax, -2
	je	.LBB7_50
	cmp	rax, 1
	jne	.LBB7_45
.LBB7_50:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	call	rbp
.LBB7_41:
	mov	rax, qword ptr [rsp + 1192]
	mov	rcx, qword ptr [rsp + 1200]
	jmp	.LBB7_1
.LBB7_45:
	mov	al, byte ptr [rsp + 18]
	mov	ecx, 3
	xor	esi, esi
.LBB7_46:
	cmp	rbp, rcx
	je	.LBB7_51
	mov	dl, byte ptr [rsp + rcx + 16]
	add	dl, -48
	cmp	dl, 9
	ja	.LBB7_50
	imul	rsi, rsi, 10
	jo	.LBB7_50
	movzx	edx, dl
	inc	rcx
	add	rsi, rdx
	jno	.LBB7_46
	jmp	.LBB7_50
.LBB7_51:
	xor	ecx, ecx
	cmp	al, 45
	setne	cl
	lea	rax, [2*rcx - 1]
	imul	rsi, rax
	jo	.LBB7_50
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetBase>::set_state
	jmp	.LBB7_54
.LBB7_59:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 28
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_traits::targets::advanced::AdvancedTarget as optional_trait_methods::using_traits::target::TargetExtScaleFactor>::scale_factor
	jmp	.LBB7_54
.LBB7_55:
	mov	edi, 1
	mov	rsi, rax
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB7_56:
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
