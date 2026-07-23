_RNvCs9wFQrvczXsK_7___rustc17rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

_RNvMNtNtCsg5hKHmXDS1K_22optional_trait_methods12using_traits10controllerINtB2_16TargetControllerNtNtNtB4_7targets8advanced14AdvancedTargetE3runB6_:
	test	rdx, rdx
	je	.LBB1_1
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	mov	rbp, rdx
	mov	r14, rsi
	shl	rbp, 4
	mov	r13, qword ptr [rdi]
	lea	rbx, [rip + .LJTI1_0]
	lea	r15, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, rsp
	xor	r12d, r12d
	mov	qword ptr [rsp + 16], rdi
.LBB1_4:
	mov	rax, qword ptr [r14 + r12]
	movsxd	rax, dword ptr [rbx + 4*rax]
	add	rax, rbx
	jmp	rax
.LBB1_5:
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	mov	rsi, r13
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	mov	rsi, rsp
	mov	rdi, qword ptr [rsp + 16]
	jmp	.LBB1_14
.LBB1_9:
	mov	qword ptr [rsp], r15
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	jmp	.LBB1_14
.LBB1_7:
	mov	qword ptr [rsp], r15
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	inc	r13
	jmp	.LBB1_13
.LBB1_8:
	mov	qword ptr [rsp], r15
	mov	qword ptr [rsp + 8], 16
	#APP
	#NO_APP
	dec	r13
	jmp	.LBB1_13
.LBB1_6:
	mov	r13, qword ptr [r14 + r12 + 8]
	jmp	.LBB1_13
.LBB1_10:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	#APP
	#NO_APP
	mov	rax, qword ptr [r14 + r12 + 8]
	cmp	rax, 7
	je	.LBB1_11
	imul	r13, rax
.LBB1_13:
	mov	qword ptr [rdi], r13
.LBB1_14:
	add	r12, 16
	cmp	rbp, r12
	jne	.LBB1_4
	xor	eax, eax
.LBB1_16:
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	.LBB1_2
.LBB1_1:
	xor	eax, eax
.LBB1_2:
	mov	edx, 28
	ret
.LBB1_11:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	jmp	.LBB1_16
.Lfunc_end1:
.LJTI1_0:
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_6-.LJTI1_0
	.long	.LBB1_7-.LJTI1_0
	.long	.LBB1_8-.LJTI1_0
	.long	.LBB1_9-.LJTI1_0
	.long	.LBB1_10-.LJTI1_0

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
	call	_RNvMNtNtCsg5hKHmXDS1K_22optional_trait_methods12using_traits10controllerINtB2_16TargetControllerNtNtNtB4_7targets8advanced14AdvancedTargetE3runB6_
	test	rax, rax
	je	.LBB2_2
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	edi, 1
	mov	rsi, rax
	call	rbx
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
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

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
