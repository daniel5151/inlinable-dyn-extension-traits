__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
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
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
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
	jle	.LBB7_52
	mov	qword ptr [rsp + 1192], rax
	mov	qword ptr [rsp + 1200], 0
	xor	ecx, ecx
.LBB7_5:
	cmp	rax, rcx
	jb	.LBB7_51
	cmp	rax, 1024
	ja	.LBB7_51
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
.LBB7_52:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB7_51
	jmp	.LBB7_53
.LBB7_10:
	cmp	rbp, 128
	ja	.LBB7_51
	test	rbp, rbp
	je	.LBB7_1
.LBB7_53:
	mov	qword ptr [rsp], r13
	mov	qword ptr [rsp + 8], 22
	#APP
	#NO_APP
	cmp	rbp, 1
	jne	.LBB7_16
	movzx	eax, byte ptr [rsp + 16]
	cmp	eax, 43
	je	.LBB7_44
	cmp	eax, 45
	jne	.LBB7_56
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	jmp	.LBB7_46
.LBB7_16:
	cmp	rbp, 2
	sete	cl
	movzx	eax, word ptr [rsp + 16]
	movzx	edx, ax
	cmp	edx, 11563
	sete	dl
	test	cl, dl
	je	.LBB7_56
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc
.LBB7_46:
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::dec
	jmp	.LBB7_49
.LBB7_56:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 19
	#APP
	#NO_APP
	cmp	rbp, 2
	jb	.LBB7_19
	cmp	word ptr [rsp + 16], 8234
	jne	.LBB7_19
	mov	rcx, rbp
	add	rcx, -2
	je	.LBB7_19
	cmp	rcx, 1
	jne	.LBB7_60
.LBB7_19:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 27
	#APP
	#NO_APP
	cmp	rbp, 3
	jb	.LBB7_29
	mov	ecx, dword ptr [rsp + 16]
	mov	edx, 32298
	xor	ecx, edx
	movzx	edx, byte ptr [rsp + 18]
	xor	edx, 32
	or	dx, cx
	jne	.LBB7_33
	mov	rcx, rbp
	add	rcx, -3
	je	.LBB7_33
	cmp	rcx, 1
	je	.LBB7_33
	mov	cl, byte ptr [rsp + 19]
	mov	edx, 4
	xor	esi, esi
.LBB7_24:
	cmp	rbp, rdx
	je	.LBB7_28
	mov	dil, byte ptr [rsp + rdx + 16]
	add	dil, -48
	cmp	dil, 9
	ja	.LBB7_29
	imul	rsi, rsi, 10
	jo	.LBB7_29
	movzx	edi, dil
	inc	rdx
	add	rsi, rdi
	jno	.LBB7_24
	jmp	.LBB7_29
.LBB7_44:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc
	jmp	.LBB7_49
.LBB7_60:
	mov	cl, byte ptr [rsp + 18]
	mov	edx, 3
	xor	esi, esi
.LBB7_61:
	cmp	rbp, rdx
	je	.LBB7_18
	mov	dil, byte ptr [rsp + rdx + 16]
	add	dil, -48
	cmp	dil, 9
	ja	.LBB7_19
	imul	rsi, rsi, 10
	jo	.LBB7_19
	movzx	edi, dil
	inc	rdx
	add	rsi, rdi
	jo	.LBB7_19
	jmp	.LBB7_61
.LBB7_18:
	xor	edx, edx
	cmp	cl, 45
	setne	dl
	lea	rcx, [2*rdx - 1]
	imul	rsi, rcx
	jo	.LBB7_19
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::mul
	test	rax, rax
	jne	.LBB7_50
	jmp	.LBB7_49
.LBB7_28:
	xor	edx, edx
	cmp	cl, 45
	setne	dl
	lea	rcx, [2*rdx - 1]
	imul	rsi, rcx
	jno	.LBB7_47
.LBB7_29:
	cmp	rbp, 1
	jne	.LBB7_32
	cmp	al, 112
	jne	.LBB7_41
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB7_49
.LBB7_32:
	jbe	.LBB7_41
.LBB7_33:
	cmp	word ptr [rsp + 16], 8307
	jne	.LBB7_41
	mov	rax, rbp
	add	rax, -2
	je	.LBB7_41
	cmp	rax, 1
	jne	.LBB7_36
.LBB7_41:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	rbp, qword ptr [rip + write@GOTPCREL]
	call	rbp
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	call	rbp
.LBB7_49:
	mov	rax, qword ptr [rsp + 1192]
	mov	rcx, qword ptr [rsp + 1200]
	jmp	.LBB7_1
.LBB7_36:
	mov	al, byte ptr [rsp + 18]
	mov	ecx, 3
	xor	esi, esi
.LBB7_37:
	cmp	rbp, rcx
	je	.LBB7_42
	mov	dl, byte ptr [rsp + rcx + 16]
	add	dl, -48
	cmp	dl, 9
	ja	.LBB7_41
	imul	rsi, rsi, 10
	jo	.LBB7_41
	movzx	edx, dl
	inc	rcx
	add	rsi, rdx
	jno	.LBB7_37
	jmp	.LBB7_41
.LBB7_42:
	xor	ecx, ecx
	cmp	al, 45
	setne	cl
	lea	rax, [2*rcx - 1]
	imul	rsi, rax
	jo	.LBB7_41
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::set_state
	jmp	.LBB7_49
.LBB7_47:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 21
	#APP
	#NO_APP
	mov	rdi, rbx
	call	<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::scale_factor
	jmp	.LBB7_49
.LBB7_50:
	mov	edx, 28
	mov	edi, 1
	mov	rsi, rax
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB7_51:
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
	.ascii	"ScaleFactor extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11:
	.ascii	"multiplying by 7 is unlucky!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
