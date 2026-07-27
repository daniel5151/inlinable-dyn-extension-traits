__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::parse_command:
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

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::unsupported_cmd:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	r14, qword ptr [rip + write@GOTPCREL]
	mov	edx, 16
	mov	edi, 1
	call	r14
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
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

<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::handle:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 32
	mov	r14, rsi
	mov	rbx, rdi
	movzx	eax, byte ptr [rdx]
	test	eax, eax
	je	.LBB3_5
	cmp	eax, 1
	jne	.LBB3_7
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	lea	rcx, [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 16
	#APP
	#NO_APP
	movzx	eax, byte ptr [rdx + 1]
	lea	r15, [rsp + 8]
	mov	rdi, r15
	test	eax, eax
	je	.LBB3_11
	cmp	eax, 1
	jne	.LBB3_15
	mov	rsi, r14
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	jmp	.LBB3_12
.LBB3_5:
	cmp	byte ptr [rdx + 8], 0
	je	.LBB3_9
	mov	rsi, qword ptr [rdx + 16]
	mov	rdi, r14
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state
	jmp	.LBB3_26
.LBB3_7:
	cmp	byte ptr [rdx + 8], 0
	je	.LBB3_10
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12]
	lea	rcx, [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 21
	#APP
	#NO_APP
	mov	rdx, qword ptr [rdx + 16]
	lea	r15, [rsp + 8]
	mov	rdi, r15
	mov	rsi, r14
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	jmp	.LBB3_12
.LBB3_9:
	mov	rdi, r14
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	xor	r14d, r14d
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB3_27
.LBB3_10:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	lea	rcx, [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 13
	#APP
	#NO_APP
	mov	rdx, qword ptr [rdx + 16]
	lea	r15, [rsp + 8]
	mov	rdi, r15
	mov	rsi, r14
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul
	jmp	.LBB3_12
.LBB3_11:
	mov	rsi, r14
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
.LBB3_12:
	cmp	byte ptr [r15], 0
	je	.LBB3_26
	mov	rax, qword ptr [rsp + 16]
	test	rax, rax
	je	.LBB3_21
.LBB3_14:
	mov	rcx, qword ptr [rsp + 24]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 16], rcx
.LBB3_25:
	mov	r14d, 1
	jmp	.LBB3_27
.LBB3_15:
	mov	rsi, r14
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
	cmp	dword ptr [r15], 1
	jne	.LBB3_22
	mov	rax, qword ptr [rsp + 16]
	test	rax, rax
	jne	.LBB3_14
	lea	r15, [rsp + 8]
	mov	rdi, r15
	mov	rsi, r14
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	cmp	byte ptr [r15], 0
	je	.LBB3_24
	mov	rax, qword ptr [rsp + 16]
	test	rax, rax
	jne	.LBB3_14
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::unsupported_cmd
	cmp	byte ptr [r14], 0
	je	.LBB3_26
	movups	xmm0, xmmword ptr [rsp + 16]
	movups	xmmword ptr [rbx + 8], xmm0
	jmp	.LBB3_25
.LBB3_21:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	r14, qword ptr [rip + write@GOTPCREL]
	mov	edx, 16
	mov	edi, 1
	call	r14
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	edx, 1
	mov	edi, 1
	call	r14
	jmp	.LBB3_26
.LBB3_22:
	lea	r15, [rsp + 8]
	mov	rdi, r15
	mov	rsi, r14
	call	<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	cmp	byte ptr [r15], 0
	je	.LBB3_26
	mov	rax, qword ptr [rsp + 16]
	test	rax, rax
	jne	.LBB3_14
.LBB3_24:
	mov	qword ptr [rbx + 8], 0
	jmp	.LBB3_25
.LBB3_26:
	xor	r14d, r14d
.LBB3_27:
	mov	qword ptr [rbx], r14
	mov	rax, rbx
	add	rsp, 32
	pop	rbx
	pop	r14
	pop	r15
	ret
.Lfunc_end3:

optional_trait_methods::commands::parse_isize:
	test	rsi, rsi
	je	.LBB4_2
	cmp	rsi, 1
	jne	.LBB4_3
.LBB4_2:
	xor	eax, eax
.LBB4_8:
	ret
.LBB4_3:
	mov	cl, byte ptr [rdi]
	mov	r8d, 1
	xor	eax, eax
	xor	edx, edx
.LBB4_4:
	cmp	rsi, r8
	je	.LBB4_9
	mov	r9b, byte ptr [rdi + r8]
	add	r9b, -48
	cmp	r9b, 9
	ja	.LBB4_8
	imul	rdx, rdx, 10
	jo	.LBB4_8
	movzx	r9d, r9b
	inc	r8
	add	rdx, r9
	jno	.LBB4_4
	jmp	.LBB4_8
.LBB4_9:
	xor	eax, eax
	cmp	cl, 45
	setne	al
	lea	rcx, [2*rax - 1]
	xor	eax, eax
	imul	rdx, rcx
	setno	al
	ret
.Lfunc_end4:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor:
	mov	rax, rdi
	mov	qword ptr [rsi + 8], rdx
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end5:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec:
	dec	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end6:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc:
	inc	qword ptr [rsi]
	mov	rax, rdi
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end7:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul:
	mov	rax, rdi
	cmp	rdx, 7
	jne	.LBB8_2
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.13]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rax + 16], 28
	mov	ecx, 1
	jmp	.LBB8_3
.LBB8_2:
	imul	rdx, qword ptr [rsi + 8]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rsi], rdx
	xor	ecx, ecx
.LBB8_3:
	mov	qword ptr [rax], rcx
	ret
.Lfunc_end8:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end9:

<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state:
	mov	qword ptr [rdi], rsi
	ret
.Lfunc_end10:

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
	mov	r12, qword ptr [rip + read@GOTPCREL]
	xor	eax, eax
.LBB11_1:
	xor	r13d, r13d
.LBB11_2:
	cmp	rax, rbp
	jb	.LBB11_5
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r14
	call	r12
	test	rax, rax
	jle	.LBB11_22
	mov	rbp, rax
	mov	qword ptr [rsp + 1224], rax
	mov	qword ptr [rsp + 1232], 0
	xor	eax, eax
.LBB11_5:
	cmp	rbp, rax
	jb	.LBB11_21
	cmp	rbp, 1024
	ja	.LBB11_21
	cmp	rax, rbp
	je	.LBB11_2
	inc	rax
	mov	rcx, rbp
	neg	rcx
.LBB11_9:
	mov	dl, byte ptr [rsp + rax + 199]
	mov	qword ptr [rsp + 1232], rax
	cmp	dl, 10
	je	.LBB11_10
	cmp	r13, 127
	ja	.LBB11_14
	mov	byte ptr [rsp + r13 + 64], dl
	inc	r13
.LBB11_14:
	lea	rdx, [rcx + rax]
	inc	rdx
	inc	rax
	cmp	rdx, 1
	jne	.LBB11_9
	mov	rax, rbp
	jmp	.LBB11_2
.LBB11_22:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB11_21
	jmp	.LBB11_23
.LBB11_10:
	cmp	r13, 128
	ja	.LBB11_21
	test	r13, r13
	je	.LBB11_1
.LBB11_23:
	lea	rbp, [rsp + 24]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r13
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::parse_command
	cmp	byte ptr [rsp + 24], -1
	je	.LBB11_24
	mov	rdi, rsp
	mov	rsi, rbx
	mov	rdx, rbp
	call	<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::advanced::AdvancedTarget>>::handle
	cmp	dword ptr [rsp], 1
	je	.LBB11_17
	jmp	.LBB11_25
.LBB11_24:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	call	r13
.LBB11_25:
	mov	rbp, qword ptr [rsp + 1224]
	mov	rax, qword ptr [rsp + 1232]
	jmp	.LBB11_1
.LBB11_17:
	mov	rsi, qword ptr [rsp + 8]
	test	rsi, rsi
	je	.LBB11_19
	mov	rdx, qword ptr [rsp + 16]
	jmp	.LBB11_20
.LBB11_19:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.14]
	mov	edx, 23
.LBB11_20:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB11_21:
	xor	eax, eax
	add	rsp, 1240
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end11:

rust_eh_personality:
	ret
.Lfunc_end12:

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

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.14:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
