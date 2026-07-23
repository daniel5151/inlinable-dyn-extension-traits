_RNvCs9wFQrvczXsK_7___rustc17rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

_RNvMNtNtCsbI8ghqNclSj_22optional_trait_methods13using_options10controllerINtB2_16TargetControllerNtNtNtB4_7targets6faulty12FaultyTargetE3runB6_:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	lea	rax, [rsp + 8]
	mov	qword ptr [rax], rdx
	mov	qword ptr [rax + 8], rcx
	#APP
	#NO_APP
	mov	r12, qword ptr [rax + 8]
	test	r12, r12
	je	.LBB1_13
	mov	r14, rsi
	mov	qword ptr [rsp + 24], rdi
	mov	r13, qword ptr [rax]
	shl	r12, 4
	mov	r15, qword ptr [rsi]
	lea	rbp, [rip + .LJTI1_0]
	xor	ebx, ebx
	mov	qword ptr [rsp + 32], rsi
.LBB1_2:
	mov	rax, qword ptr [r13 + rbx]
	movsxd	rcx, dword ptr [rbp + 4*rax]
	add	rcx, rbp
	jmp	rcx
.LBB1_3:
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 16
	lea	rcx, [rsp + 8]
	#APP
	#NO_APP
	cmp	eax, 2
	je	.LBB1_5
	cmp	eax, 3
	je	.LBB1_10
	jmp	.LBB1_15
.LBB1_5:
	inc	r15
	jmp	.LBB1_6
.LBB1_7:
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, r15
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB1_11
.LBB1_8:
	mov	r15, qword ptr [r13 + rbx + 8]
.LBB1_6:
	mov	qword ptr [r14], r15
	jmp	.LBB1_11
.LBB1_9:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
.LBB1_10:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	mov	r14, qword ptr [rip + write@GOTPCREL]
	call	r14
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	call	r14
	mov	r14, qword ptr [rsp + 32]
.LBB1_11:
	add	rbx, 16
	cmp	r12, rbx
	jne	.LBB1_2
	mov	rdi, qword ptr [rsp + 24]
.LBB1_13:
	xor	eax, eax
.LBB1_14:
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
.LBB1_15:
	inc	r15
	mov	qword ptr [r14], r15
	mov	rdi, qword ptr [rsp + 24]
	mov	qword ptr [rdi + 8], 0
	mov	eax, 1
	jmp	.LBB1_14
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
	call	_RNvMNtNtCsbI8ghqNclSj_22optional_trait_methods13using_options10controllerINtB2_16TargetControllerNtNtNtB4_7targets6faulty12FaultyTargetE3runB6_
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
