_RNvCs9wFQrvczXsK_7___rustc17rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

_RNvMNtNtCsbxDiAlNSvPv_22optional_trait_methods12using_traits10controllerINtB2_16TargetControllerNtNtNtB4_7targets5basic11BasicTargetE3runB6_:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdi
	test	rdx, rdx
	je	.LBB1_8
	mov	rbx, rdx
	mov	r14, rsi
	shl	rbx, 4
	mov	rax, qword ptr [rsp]
	mov	r12, qword ptr [rax]
	mov	r15, qword ptr [rip + write@GOTPCREL]
	lea	rbp, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	xor	r13d, r13d
.LBB1_2:
	mov	rax, qword ptr [r14 + r13]
	lea	ecx, [rax - 2]
	cmp	ecx, 4
	jae	.LBB1_3
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	call	r15
	mov	edx, 1
	mov	edi, 1
	mov	rsi, rbp
	call	r15
	jmp	.LBB1_7
.LBB1_3:
	test	rax, rax
	jne	.LBB1_5
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, r12
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB1_7
.LBB1_5:
	mov	r12, qword ptr [r14 + r13 + 8]
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], r12
.LBB1_7:
	add	r13, 16
	cmp	rbx, r13
	jne	.LBB1_2
.LBB1_8:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end1:

main:
	push	rbx
	sub	rsp, 32
	lea	rdi, [rsp + 8]
	mov	qword ptr [rdi], 0
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	lea	rcx, [rsp + 16]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 8], 15
	#APP
	#NO_APP
	mov	rsi, qword ptr [rcx]
	mov	rdx, qword ptr [rcx + 8]
	call	_RNvMNtNtCsbxDiAlNSvPv_22optional_trait_methods12using_traits10controllerINtB2_16TargetControllerNtNtNtB4_7targets5basic11BasicTargetE3runB6_
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
	.ascii	"Unsupported cmd!"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1:
	.byte	10

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2:
	.asciz	"%d\n"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
