__rustc::rust_begin_unwind:
	push	rax
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 7
	mov	edi, 2
	call	qword ptr [rip + write@GOTPCREL]
	call	qword ptr [rip + abort@GOTPCREL]
.Lfunc_end0:

<optional_trait_methods::using_fn::controller::TargetController<optional_trait_methods::using_fn::targets::advanced::AdvancedTarget>>::parse_command:
	push	r14
	push	rbx
	sub	rsp, 24
	mov	r14, rsi
	mov	rbx, rdi
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	lea	rcx, [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 22
	#APP
	#NO_APP
	cmp	rsi, 2
	je	.LBB1_4
	cmp	r14, 1
	jne	.LBB1_7
	movzx	eax, byte ptr [rbx]
	cmp	eax, 43
	je	.LBB1_3
	cmp	eax, 45
	jne	.LBB1_7
	mov	eax, 3
	jmp	.LBB1_12
.LBB1_4:
	cmp	word ptr [rbx], 11563
	jne	.LBB1_7
	mov	eax, 4
	jmp	.LBB1_12
.LBB1_7:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 19
	#APP
	#NO_APP
	cmp	r14, 2
	jb	.LBB1_14
	cmp	word ptr [rbx], 8234
	jne	.LBB1_14
	lea	rsi, [r14 - 2]
	lea	rdi, [rbx + 2]
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_14
	mov	eax, 5
	jmp	.LBB1_13
.LBB1_14:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	lea	rcx, [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 27
	#APP
	#NO_APP
	cmp	r14, 3
	jb	.LBB1_18
	movzx	eax, word ptr [rbx]
	xor	eax, 32298
	movzx	ecx, byte ptr [rbx + 2]
	xor	ecx, 32
	or	cx, ax
	jne	.LBB1_22
	lea	rsi, [r14 - 3]
	lea	rdi, [rbx + 3]
	call	optional_trait_methods::commands::parse_isize
	test	al, 1
	je	.LBB1_22
	mov	eax, 6
	jmp	.LBB1_13
.LBB1_18:
	cmp	r14, 2
	je	.LBB1_22
	cmp	r14, 1
	jne	.LBB1_23
	cmp	byte ptr [rbx], 112
	jne	.LBB1_23
	xor	eax, eax
	jmp	.LBB1_12
.LBB1_22:
	cmp	word ptr [rbx], 8307
	je	.LBB1_24
.LBB1_23:
	mov	rax, -1
	jmp	.LBB1_12
.LBB1_24:
	add	r14, -2
	add	rbx, 2
	mov	rdi, rbx
	mov	rsi, r14
	call	optional_trait_methods::commands::parse_isize
	and	eax, 1
	dec	rax
	or	rax, 1
	jmp	.LBB1_13
.LBB1_3:
	mov	eax, 2
.LBB1_12:
.LBB1_13:
	add	rsp, 24
	pop	rbx
	pop	r14
	ret
.Lfunc_end1:

<optional_trait_methods::using_fn::controller::TargetController<optional_trait_methods::using_fn::targets::advanced::AdvancedTarget>>::run:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 1192
	mov	r14, rdi
	lea	r15, [rsp + 152]
	xor	ebx, ebx
	mov	edx, 1040
	mov	rdi, r15
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	xorps	xmm0, xmm0
	lea	r12, [rsp + 16]
	movaps	xmmword ptr [r12 + 112], xmm0
	movaps	xmmword ptr [r12 + 96], xmm0
	movaps	xmmword ptr [r12 + 80], xmm0
	movaps	xmmword ptr [r12 + 64], xmm0
	movaps	xmmword ptr [r12 + 48], xmm0
	movaps	xmmword ptr [r12 + 32], xmm0
	movaps	xmmword ptr [r12 + 16], xmm0
	movaps	xmmword ptr [r12], xmm0
	mov	rbp, qword ptr [rip + read@GOTPCREL]
	xor	edx, edx
	xor	eax, eax
.LBB2_1:
	xor	r13d, r13d
.LBB2_2:
	mov	rcx, rax
	mov	rax, rdx
.LBB2_3:
	cmp	rcx, rax
	jb	.LBB2_6
	mov	edx, 1024
	xor	edi, edi
	mov	rsi, r15
	call	rbp
	test	rax, rax
	jle	.LBB2_15
	mov	qword ptr [rsp + 1176], rax
	mov	qword ptr [rsp + 1184], 0
	xor	ecx, ecx
.LBB2_6:
	cmp	rax, rcx
	jb	.LBB2_16
	cmp	rax, 1024
	ja	.LBB2_33
	cmp	rcx, rax
	je	.LBB2_3
	inc	rcx
	mov	rdx, rax
	neg	rdx
.LBB2_10:
	mov	sil, byte ptr [rsp + rcx + 151]
	mov	qword ptr [rsp + 1184], rcx
	cmp	sil, 10
	je	.LBB2_11
	cmp	r13, 127
	ja	.LBB2_19
	mov	byte ptr [rsp + r13 + 16], sil
	inc	r13
.LBB2_19:
	lea	rsi, [rdx + rcx]
	inc	rsi
	inc	rcx
	cmp	rsi, 1
	jne	.LBB2_10
	mov	rdx, rax
	jmp	.LBB2_2
.LBB2_15:
	lea	rax, [r13 - 129]
	cmp	rax, -128
	jb	.LBB2_16
	jmp	.LBB2_13
.LBB2_11:
	cmp	r13, 128
	ja	.LBB2_16
	test	r13, r13
	je	.LBB2_35
.LBB2_13:
	mov	rdi, r12
	mov	rsi, r13
	call	<optional_trait_methods::using_fn::controller::TargetController<optional_trait_methods::using_fn::targets::advanced::AdvancedTarget>>::parse_command
	cmp	rax, -1
	je	.LBB2_34
	lea	rsi, [rip + .LJTI2_0]
	movsxd	rcx, dword ptr [rsi + 4*rax]
	add	rcx, rsi
	jmp	rcx
.LBB2_23:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.10]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 16
	mov	rcx, rsp
	#APP
	#NO_APP
	mov	rdi, r14
	cmp	rax, 2
	je	.LBB2_27
	cmp	rax, 3
	je	.LBB2_25
	call	optional_trait_methods::using_fn::targets::advanced::inc
	test	rax, rax
	jne	.LBB2_32
	mov	rdi, r14
.LBB2_25:
	call	optional_trait_methods::using_fn::targets::advanced::dec
	jmp	.LBB2_31
.LBB2_34:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.7]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.8]
	call	r13
	jmp	.LBB2_35
.LBB2_27:
	call	optional_trait_methods::using_fn::targets::advanced::inc
	jmp	.LBB2_31
.LBB2_21:
	mov	rdi, r14
	call	optional_trait_methods::using_fn::targets::advanced::get_state
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.9]
	mov	rsi, rax
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_35
.LBB2_22:
	mov	rdi, r14
	mov	rsi, rdx
	call	optional_trait_methods::using_fn::targets::advanced::set_state
	jmp	.LBB2_31
.LBB2_26:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.11]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	mov	rax, rsp
	#APP
	#NO_APP
	mov	rdi, r14
	mov	rsi, rdx
	call	optional_trait_methods::using_fn::targets::advanced::mul
	jmp	.LBB2_31
.LBB2_30:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.12]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 28
	mov	rax, rsp
	#APP
	#NO_APP
	mov	rdi, r14
	mov	rsi, rdx
	call	optional_trait_methods::using_fn::targets::advanced::scale_factor
.LBB2_31:
	test	rax, rax
	jne	.LBB2_32
.LBB2_35:
	mov	rdx, qword ptr [rsp + 1176]
	mov	rax, qword ptr [rsp + 1184]
	jmp	.LBB2_1
.LBB2_16:
.LBB2_33:
	mov	rax, rbx
	add	rsp, 1192
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB2_32:
	mov	rbx, rax
	jmp	.LBB2_33
.Lfunc_end2:
.LJTI2_0:
	.long	.LBB2_21-.LJTI2_0
	.long	.LBB2_22-.LJTI2_0
	.long	.LBB2_23-.LJTI2_0
	.long	.LBB2_23-.LJTI2_0
	.long	.LBB2_23-.LJTI2_0
	.long	.LBB2_26-.LJTI2_0
	.long	.LBB2_30-.LJTI2_0

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

optional_trait_methods::using_fn::targets::advanced::scale_factor:
	mov	qword ptr [rdi + 8], rsi
	xor	eax, eax
	ret
.Lfunc_end4:

optional_trait_methods::using_fn::targets::advanced::dec:
	dec	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end5:

optional_trait_methods::using_fn::targets::advanced::inc:
	inc	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end6:

optional_trait_methods::using_fn::targets::advanced::mul:
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

optional_trait_methods::using_fn::targets::advanced::get_state:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end8:

optional_trait_methods::using_fn::targets::advanced::set_state:
	mov	qword ptr [rdi], rsi
	xor	eax, eax
	ret
.Lfunc_end9:

main:
	push	rbx
	sub	rsp, 16
	mov	rdi, rsp
	mov	qword ptr [rdi], 0
	mov	qword ptr [rdi + 8], 1
	call	<optional_trait_methods::using_fn::controller::TargetController<optional_trait_methods::using_fn::targets::advanced::AdvancedTarget>>::run
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
