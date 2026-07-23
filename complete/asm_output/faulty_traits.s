_RNvCs9wFQrvczXsK_7___rustc17rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

_RNvMNtNtCsi0UPOlhmVa7_22optional_trait_methods12using_traits10controllerINtB2_16TargetControllerNtNtNtB4_7targets6faulty12FaultyTargetE3runB6_:
	test	rdx, rdx
	je	.LBB1_10
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	mov	r15, rdx
	mov	r13, rsi
	mov	r14, rdi
	shl	r15, 4
	mov	r12, qword ptr [rdi]
	lea	rbx, [rip + .LJTI1_0]
	xor	ebp, ebp
.LBB1_2:
	mov	rax, qword ptr [r13 + rbp]
	movsxd	rax, dword ptr [rbx + 4*rax]
	add	rax, rbx
	jmp	rax
.LBB1_3:
	lea	rdi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.2]
	mov	rsi, r12
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB1_8
.LBB1_4:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 16
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	inc	r12
	jmp	.LBB1_6
.LBB1_5:
	mov	r12, qword ptr [r13 + rbp + 8]
.LBB1_6:
	mov	qword ptr [r14], r12
	jmp	.LBB1_8
.LBB1_7:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.0]
	call	qword ptr [rip + write@GOTPCREL]
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.1]
	call	qword ptr [rip + write@GOTPCREL]
.LBB1_8:
	add	rbp, 16
	cmp	r15, rbp
	jne	.LBB1_2
	xor	eax, eax
	jmp	.LBB1_14
.LBB1_10:
	xor	eax, eax
	jmp	.LBB1_15
.LBB1_11:
	lea	rax, [rsp + 8]
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rax + 8], 16
	#APP
	#NO_APP
	jmp	.LBB1_13
.LBB1_12:
	lea	rax, [rsp + 8]
	lea	rcx, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.3]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rax + 8], 16
	#APP
	#NO_APP
	inc	r12
	mov	qword ptr [r14], r12
.LBB1_13:
	lea	rax, [rip + .Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4]
.LBB1_14:
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
.LBB1_15:
	mov	edx, 38
	ret
.Lfunc_end1:
.LJTI1_0:
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_4-.LJTI1_0
	.long	.LBB1_11-.LJTI1_0
	.long	.LBB1_12-.LJTI1_0
	.long	.LBB1_7-.LJTI1_0

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
	call	_RNvMNtNtCsi0UPOlhmVa7_22optional_trait_methods12using_traits10controllerINtB2_16TargetControllerNtNtNtB4_7targets6faulty12FaultyTargetE3runB6_
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
	.ascii	"IncDec extension"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.4:
	.ascii	"`dec` operations are not supported yet"

.Lanon.a2c7e94a5c3f8584a21e05a9c4fcb8c4.5:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.ident	"rustc version 1.97.1 (8bab26f4f 2026-07-14)"
