_RNvCs9wFQrvczXsK_7___rustc17rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

_RNvMNtNtCsarKxz5JwsHb_22optional_trait_methods8using_fn10controllerINtB2_16TargetControllerNtNtNtB4_7targets8advanced14AdvancedTargetE3runB6_:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	lea	rax, [rsp + 8]
	mov	qword ptr [rax], rsi
	mov	qword ptr [rax + 8], rdx
	#APP
	#NO_APP
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.LBB1_13
	lea	rbx, [rsp + 8]
	mov	r12, qword ptr [rbx]
	shl	rsi, 4
	mov	r15, qword ptr [rdi]
	lea	r13, [rip + .LJTI1_0]
	lea	r14, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	xor	ebp, ebp
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
.LBB1_2:
	mov	rax, qword ptr [r12 + rbp]
	movsxd	rax, dword ptr [r13 + 4*rax]
	add	rax, r13
	jmp	rax
.LBB1_3:
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, r15
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	mov	rsi, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 32]
	jmp	.LBB1_12
.LBB1_7:
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	jmp	.LBB1_12
.LBB1_5:
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	inc	r15
	jmp	.LBB1_11
.LBB1_6:
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 16], 16
	#APP
	#NO_APP
	dec	r15
	jmp	.LBB1_11
.LBB1_4:
	mov	r15, qword ptr [r12 + rbp + 8]
	jmp	.LBB1_11
.LBB1_8:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	#APP
	#NO_APP
	mov	rax, qword ptr [r12 + rbp + 8]
	cmp	rax, 7
	je	.LBB1_9
	imul	r15, rax
.LBB1_11:
	mov	qword ptr [rdi], r15
.LBB1_12:
	add	rbp, 16
	cmp	rsi, rbp
	jne	.LBB1_2
.LBB1_13:
	xor	eax, eax
.LBB1_14:
	mov	edx, 28
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB1_9:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	jmp	.LBB1_14
.Lfunc_end1:
.LJTI1_0:
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_4-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_6-.LJTI1_0
	.long	.LBB1_7-.LJTI1_0
	.long	.LBB1_8-.LJTI1_0

main:
	push	rbx
	sub	rsp, 32
	lea	rdi, [rsp + 8]
	mov	qword ptr [rdi], 0
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5]
	lea	rcx, [rsp + 16]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 15
	#APP
	#NO_APP
	mov	rsi, qword ptr [rcx]
	mov	rdx, qword ptr [rcx + 8]
	call	_RNvMNtNtCsarKxz5JwsHb_22optional_trait_methods8using_fn10controllerINtB2_16TargetControllerNtNtNtB4_7targets8advanced14AdvancedTargetE3runB6_
	test	rax, rax
	je	.LBB2_2
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	edi, 1
	mov	rsi, rax
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB2_2:
	xor	eax, eax
	add	rsp, 32
	pop	rbx
	ret
.Lfunc_end2:

rust_eh_personality:
	ret
.Lfunc_end3:

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0:
	.ascii	"multiplying by 7 is unlucky!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2:
	.asciz	"%d\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.ascii	"Mul extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
