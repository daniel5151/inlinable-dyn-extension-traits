_RNvCs9wFQrvczXsK_7___rustc17rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

_RNvMNtNtCsbEEEejYiEJN_22optional_trait_methods13using_options10controllerINtB2_16TargetControllerNtNtNtB4_7targets5basic11BasicTargetE3runB6_:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 32], rdi
	lea	rax, [rsp + 8]
	mov	qword ptr [rax], rdx
	mov	qword ptr [rax + 8], rcx
	#APP
	#NO_APP
	mov	r12, qword ptr [rax + 8]
	test	r12, r12
	je	.LBB1_9
	mov	r14, qword ptr [rax]
	shl	r12, 4
	mov	rax, qword ptr [rsp + 24]
	mov	r15, qword ptr [rax]
	lea	rbx, [rip + .LJTI1_0]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	xor	ebp, ebp
.LBB1_2:
	mov	rax, qword ptr [r14 + rbp]
	movsxd	rax, dword ptr [rbx + 4*rax]
	add	rax, rbx
	jmp	rax
.LBB1_3:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	jmp	.LBB1_4
.LBB1_7:
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, r15
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB1_8
.LBB1_5:
	mov	r15, qword ptr [r14 + rbp + 8]
	mov	rax, qword ptr [rsp + 24]
	mov	qword ptr [rax], r15
	jmp	.LBB1_8
.LBB1_6:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
.LBB1_4:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	call	r13
.LBB1_8:
	add	rbp, 16
	cmp	r12, rbp
	jne	.LBB1_2
.LBB1_9:
	mov	rax, qword ptr [rsp + 32]
	mov	qword ptr [rax], 0
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end1:
.LJTI1_0:
	.long	.LBB1_7-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_6-.LJTI1_0

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
	call	_RNvMNtNtCsbEEEejYiEJN_22optional_trait_methods13using_options10controllerINtB2_16TargetControllerNtNtNtB4_7targets5basic11BasicTargetE3runB6_
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
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
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
	.ascii	"Unsupported cmd!"

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

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.6:
	.ascii	"Invalid implementation!"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
