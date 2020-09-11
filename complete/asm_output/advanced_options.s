rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

main:
	push	rbx
	sub	rsp, 32
	mov	rsi, rsp
	mov	qword ptr [rsi], 0
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	optional_trait_methods::using_options::controller::TargetController<T>::run::h9fab2da1d8090fca
	cmp	dword ptr [rbx], 1
	jne	.LBB1_5
	mov	rsi, qword ptr [rsp + 16]
	test	rsi, rsi
	je	.LBB1_2
	mov	rdx, qword ptr [rsp + 24]
	jmp	.LBB1_4
.LBB1_2:
	lea	rsi, [rip + .L__unnamed_1]
	mov	edx, 23
.LBB1_4:
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
	lea	rsi, [rip + .L__unnamed_2]
	mov	edx, 1
	mov	edi, 1
	call	qword ptr [rip + write@GOTPCREL]
.LBB1_5:
	xor	eax, eax
	add	rsp, 32
	pop	rbx
	ret
.Lfunc_end1:

optional_trait_methods::using_options::controller::TargetController<T>::run::h9fab2da1d8090fca:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	mov	r13, rsi
	mov	qword ptr [rsp + 16], rdi
	mov	ebx, 8
	lea	rbp, [rip + .L__unnamed_3]
	lea	r12, [rip + .LJTI2_0]
	lea	r15, [rip + .L__unnamed_4]
	lea	r14, [rip + .L__unnamed_5]
.LBB2_1:
	mov	rax, qword ptr [rbx + rbp - 8]
	movsxd	rcx, dword ptr [r12 + 4*rax]
	add	rcx, r12
	jmp	rcx
.LBB2_2:
	mov	qword ptr [rsp], r15
	mov	qword ptr [rsp + 8], 16
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	cmp	eax, 3
	je	.LBB2_10
	cmp	eax, 2
	jne	.LBB2_11
	inc	qword ptr [r13]
	jmp	.LBB2_11
.LBB2_5:
	mov	rsi, qword ptr [r13]
	lea	rdi, [rip + .L__unnamed_6]
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_11
.LBB2_6:
	mov	rax, qword ptr [rbx + rbp]
	jmp	.LBB2_7
.LBB2_8:
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], 13
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rbx + rbp]
	cmp	rax, 7
	je	.LBB2_14
	imul	rax, qword ptr [r13]
.LBB2_7:
	mov	qword ptr [r13], rax
	jmp	.LBB2_11
.LBB2_10:
	dec	qword ptr [r13]
.LBB2_11:
	add	rbx, 16
	cmp	rbx, 248
	jne	.LBB2_1
	mov	rax, qword ptr [rsp + 16]
	xor	ecx, ecx
.LBB2_13:
	mov	qword ptr [rax], rcx
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB2_14:
	lea	rcx, [rip + .L__unnamed_7]
	mov	rax, qword ptr [rsp + 16]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rax + 16], 28
	mov	ecx, 1
	jmp	.LBB2_13
.Lfunc_end2:
.LJTI2_0:
	.long	.LBB2_5-.LJTI2_0
	.long	.LBB2_6-.LJTI2_0
	.long	.LBB2_2-.LJTI2_0
	.long	.LBB2_2-.LJTI2_0
	.long	.LBB2_2-.LJTI2_0
	.long	.LBB2_8-.LJTI2_0

.L__unnamed_3:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.L__unnamed_2:
	.byte	10

.L__unnamed_1:
	.ascii	"Invalid implementation!"

.L__unnamed_5:
	.ascii	"Mul extension"

.L__unnamed_4:
	.ascii	"IncDec extension"

.L__unnamed_6:
	.asciz	"%d\n"

.L__unnamed_7:
	.ascii	"multiplying by 7 is unlucky!"

