_RNvCs9wFQrvczXsK_7___rustc17rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

_RNvMNtNtCs1nhCNF4ZdXQ_22optional_trait_methods13using_options10controllerINtB2_16TargetControllerNtNtNtB4_7targets8advanced14AdvancedTargetE3runB6_:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	lea	rax, [rsp + 16]
	mov	qword ptr [rax], rdx
	mov	qword ptr [rax + 8], rcx
	#APP
	#NO_APP
	mov	rbp, qword ptr [rax + 8]
	test	rbp, rbp
	je	.LBB1_14
	mov	qword ptr [rsp + 8], rdi
	lea	r14, [rsp + 16]
	mov	r13, qword ptr [r14]
	shl	rbp, 4
	mov	r15, qword ptr [rsi]
	lea	rdi, [rip + .LJTI1_0]
	lea	rbx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	xor	r12d, r12d
	mov	qword ptr [rsp + 32], rsi
.LBB1_2:
	mov	rax, qword ptr [r13 + r12]
	movsxd	rcx, dword ptr [rdi + 4*rax]
	add	rcx, rdi
	jmp	rcx
.LBB1_3:
	mov	qword ptr [rsp + 16], rbx
	mov	qword ptr [rsp + 24], 16
	#APP
	#NO_APP
	cmp	eax, 2
	je	.LBB1_6
	cmp	eax, 3
	jne	.LBB1_12
	dec	r15
	jmp	.LBB1_11
.LBB1_6:
	inc	r15
	jmp	.LBB1_11
.LBB1_7:
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	rsi, r15
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	lea	rdi, [rip + .LJTI1_0]
	mov	rsi, qword ptr [rsp + 32]
	jmp	.LBB1_12
.LBB1_8:
	mov	r15, qword ptr [r13 + r12 + 8]
	jmp	.LBB1_11
.LBB1_9:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 16], rax
	mov	qword ptr [rsp + 24], 13
	#APP
	#NO_APP
	mov	rax, qword ptr [r13 + r12 + 8]
	cmp	rax, 7
	je	.LBB1_16
	imul	r15, rax
.LBB1_11:
	mov	qword ptr [rsi], r15
.LBB1_12:
	add	r12, 16
	cmp	rbp, r12
	jne	.LBB1_2
	mov	rdi, qword ptr [rsp + 8]
.LBB1_14:
	xor	eax, eax
.LBB1_15:
	mov	qword ptr [rdi], rax
	mov	rax, rdi
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB1_16:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rdi + 16], 28
	mov	eax, 1
	jmp	.LBB1_15
.Lfunc_end1:
.LJTI1_0:
	.long	.LBB1_7-.LJTI1_0
	.long	.LBB1_8-.LJTI1_0
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_9-.LJTI1_0

main:
	push	rbx
	sub	rsp, 32
	lea	rsi, [rsp + 24]
	mov	qword ptr [rsi], 0
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	mov	rcx, rsp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 15
	#APP
	#NO_APP
	mov	rdx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbx, rsp
	mov	rdi, rbx
	call	_RNvMNtNtCs1nhCNF4ZdXQ_22optional_trait_methods13using_options10controllerINtB2_16TargetControllerNtNtNtB4_7targets8advanced14AdvancedTargetE3runB6_
	cmp	dword ptr [rbx], 1
	jne	.LBB2_5
	mov	rsi, qword ptr [rsp + 8]
	test	rsi, rsi
	je	.LBB2_3
	mov	rdx, qword ptr [rsp + 16]
	jmp	.LBB2_4
.LBB2_3:
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6]
	mov	edx, 23
.LBB2_4:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB2_5:
	xor	eax, eax
	add	rsp, 32
	pop	rbx
	ret
.Lfunc_end2:

rust_eh_personality:
	ret
.Lfunc_end3:

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1:
	.asciz	"%d\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2:
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.ascii	"Mul extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.ascii	"multiplying by 7 is unlucky!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
