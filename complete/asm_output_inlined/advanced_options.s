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
	movaps	xmmword ptr [rsp + 144], xmm0
	movaps	xmmword ptr [rsp + 128], xmm0
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	lea	r15, [rsp + 8]
	mov	r12, qword ptr [rip + write@GOTPCREL]
	mov	r13, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB7_1:
	xor	ebp, ebp
.LBB7_2:
	mov	rcx, rax
	mov	rax, rdx
.LBB7_3:
	cmp	rcx, rax
	jb	.LBB7_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r13
	test	rax, rax
	jle	.LBB7_68
	mov	qword ptr [rsp + 1208], rax
	mov	qword ptr [rsp + 1216], 0
	xor	ecx, ecx
.LBB7_6:
	cmp	rax, rcx
	jb	.LBB7_62
	cmp	rax, 1024
	ja	.LBB7_62
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
	cmp	rbp, 127
	ja	.LBB7_15
	mov	byte ptr [rsp + rbp + 32], sil
	inc	rbp
.LBB7_15:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB7_10
	mov	rdx, rax
	jmp	.LBB7_2
.LBB7_68:
	lea	rax, [rbp - 129]
	cmp	rax, -128
	jb	.LBB7_62
	jmp	.LBB7_69
.LBB7_11:
	cmp	rbp, 128
	ja	.LBB7_62
	test	rbp, rbp
	je	.LBB7_67
.LBB7_69:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 22
	#APP
	#NO_APP
	cmp	rbp, 1
	jne	.LBB7_17
	movzx	eax, byte ptr [rsp + 32]
	cmp	eax, 43
	je	.LBB7_51
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
	jmp	.LBB7_52
.LBB7_17:
	cmp	rbp, 2
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
	jne	.LBB7_58
	mov	rsi, qword ptr [rsp + 16]
	test	rsi, rsi
	jne	.LBB7_54
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	cmp	byte ptr [rsp + 8], 0
	je	.LBB7_60
	jmp	.LBB7_53
.LBB7_18:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 19
	#APP
	#NO_APP
	cmp	rbp, 2
	jb	.LBB7_28
	cmp	word ptr [rsp + 32], 8234
	jne	.LBB7_28
	mov	rcx, rbp
	add	rcx, -2
	je	.LBB7_28
	cmp	rcx, 1
	jne	.LBB7_22
.LBB7_28:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 27
	#APP
	#NO_APP
	cmp	rbp, 3
	jb	.LBB7_38
	mov	ecx, dword ptr [rsp + 32]
	mov	edx, 32298
	xor	ecx, edx
	movzx	edx, byte ptr [rsp + 34]
	xor	edx, 32
	or	dx, cx
	jne	.LBB7_42
	mov	rcx, rbp
	add	rcx, -3
	je	.LBB7_42
	cmp	rcx, 1
	je	.LBB7_42
	mov	cl, byte ptr [rsp + 35]
	mov	esi, 4
	xor	edx, edx
.LBB7_33:
	cmp	rbp, rsi
	je	.LBB7_37
	mov	dil, byte ptr [rsp + rsi + 32]
	add	dil, -48
	cmp	dil, 9
	ja	.LBB7_38
	imul	rdx, rdx, 10
	jo	.LBB7_38
	movzx	edi, dil
	inc	rsi
	add	rdx, rdi
	jno	.LBB7_33
	jmp	.LBB7_38
.LBB7_51:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
.LBB7_52:
	cmp	byte ptr [rsp + 8], 0
	je	.LBB7_67
.LBB7_53:
	mov	rsi, qword ptr [rsp + 16]
	test	rsi, rsi
	jne	.LBB7_54
.LBB7_66:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	call	r12
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	call	r12
.LBB7_67:
	mov	rdx, qword ptr [rsp + 1208]
	mov	rax, qword ptr [rsp + 1216]
	jmp	.LBB7_1
.LBB7_58:
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	cmp	byte ptr [rsp + 8], 0
	jne	.LBB7_59
	jmp	.LBB7_67
.LBB7_22:
	mov	cl, byte ptr [rsp + 34]
	mov	esi, 3
	xor	edx, edx
.LBB7_23:
	cmp	rbp, rsi
	je	.LBB7_27
	mov	dil, byte ptr [rsp + rsi + 32]
	add	dil, -48
	cmp	dil, 9
	ja	.LBB7_28
	imul	rdx, rdx, 10
	jo	.LBB7_28
	movzx	edi, dil
	inc	rsi
	add	rdx, rdi
	jno	.LBB7_23
	jmp	.LBB7_28
.LBB7_27:
	xor	esi, esi
	cmp	cl, 45
	setne	sil
	lea	rcx, [2*rsi - 1]
	imul	rdx, rcx
	jo	.LBB7_28
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul
	jmp	.LBB7_52
.LBB7_37:
	xor	esi, esi
	cmp	cl, 45
	setne	sil
	lea	rcx, [2*rsi - 1]
	imul	rdx, rcx
	jno	.LBB7_63
.LBB7_38:
	cmp	rbp, 1
	jne	.LBB7_41
	cmp	al, 112
	jne	.LBB7_66
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB7_67
.LBB7_41:
	jbe	.LBB7_66
.LBB7_42:
	cmp	word ptr [rsp + 32], 8307
	jne	.LBB7_66
	mov	rax, rbp
	add	rax, -2
	je	.LBB7_66
	cmp	rax, 1
	je	.LBB7_66
	mov	al, byte ptr [rsp + 34]
	mov	ecx, 3
	xor	esi, esi
.LBB7_46:
	cmp	rbp, rcx
	je	.LBB7_65
	mov	dl, byte ptr [rsp + rcx + 32]
	add	dl, -48
	cmp	dl, 9
	ja	.LBB7_66
	imul	rsi, rsi, 10
	jo	.LBB7_66
	movzx	edx, dl
	inc	rcx
	add	rsi, rdx
	jno	.LBB7_46
	jmp	.LBB7_66
.LBB7_65:
	xor	ecx, ecx
	cmp	al, 45
	setne	cl
	lea	rax, [2*rcx - 1]
	imul	rsi, rax
	jo	.LBB7_66
	mov	rdi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB7_67
.LBB7_63:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 21
	#APP
	#NO_APP
	mov	rdi, r15
	mov	rsi, rbx
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	jmp	.LBB7_52
.LBB7_59:
	mov	rsi, qword ptr [rsp + 16]
	test	rsi, rsi
	je	.LBB7_60
.LBB7_54:
	mov	rdx, qword ptr [rsp + 24]
	jmp	.LBB7_61
.LBB7_60:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12]
	mov	edx, 23
.LBB7_61:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB7_62:
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
