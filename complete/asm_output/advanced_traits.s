rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

main:
	push	rbx
	sub	rsp, 16
	lea	rdi, [rsp + 8]
	mov	qword ptr [rdi], 0
	call	optional_trait_methods::using_traits::controller::TargetController<T>::run::h63931b2373a27964
	test	rax, rax
	je	.LBB1_2
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	edi, 1
	mov	rsi, rax
	call	rbx
	lea	rsi, [rip + .L__unnamed_1]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB1_2:
	xor	eax, eax
	add	rsp, 16
	pop	rbx
	ret
.Lfunc_end1:

optional_trait_methods::using_traits::controller::TargetController<T>::run::h63931b2373a27964:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	mov	rbx, rdi
	mov	ebp, 8
	lea	r14, [rip + .L__unnamed_2]
	mov	r12, qword ptr [rip + write@GOTPCREL]
	lea	r13, [rip + .LJTI2_0]
	lea	r15, [rip + .L__unnamed_3]
.LBB2_1:
	mov	rax, qword ptr [rbp + r14 - 8]
	cmp	rax, 5
	ja	.LBB2_3
	movsxd	rcx, dword ptr [r13 + 4*rax]
	add	rcx, r13
	jmp	rcx
.LBB2_6:
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 16], 16
	mov	rcx, qword ptr [rsp + 16]
	mov	rcx, qword ptr [rsp + 8]
	cmp	eax, 3
	je	.LBB2_9
	cmp	eax, 2
	jne	.LBB2_14
	inc	qword ptr [rbx]
	jmp	.LBB2_14
.LBB2_4:
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rip + .L__unnamed_4]
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_14
.LBB2_5:
	mov	rax, qword ptr [rbp + r14]
	jmp	.LBB2_13
.LBB2_9:
	dec	qword ptr [rbx]
	jmp	.LBB2_14
.LBB2_3:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .L__unnamed_5]
	call	r12
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .L__unnamed_1]
	call	r12
	jmp	.LBB2_14
.LBB2_10:
	lea	rax, [rip + .L__unnamed_6]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	mov	rax, qword ptr [rsp + 16]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rbp + r14]
	cmp	rax, 7
	je	.LBB2_11
	imul	rax, qword ptr [rbx]
.LBB2_13:
	mov	qword ptr [rbx], rax
.LBB2_14:
	add	rbp, 16
	cmp	rbp, 248
	jne	.LBB2_1
	xor	eax, eax
.LBB2_16:
	mov	edx, 28
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB2_11:
	lea	rax, [rip + .L__unnamed_7]
	jmp	.LBB2_16
.Lfunc_end2:
.LJTI2_0:
	.long	.LBB2_4-.LJTI2_0
	.long	.LBB2_5-.LJTI2_0
	.long	.LBB2_6-.LJTI2_0
	.long	.LBB2_6-.LJTI2_0
	.long	.LBB2_6-.LJTI2_0
	.long	.LBB2_10-.LJTI2_0

.L__unnamed_2:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.L__unnamed_1:
	.byte	10

.L__unnamed_5:
	.ascii	"Unsupported cmd!"

.L__unnamed_6:
	.ascii	"Mul extension"

.L__unnamed_3:
	.ascii	"IncDec extension"

.L__unnamed_4:
	.asciz	"%d\n"

.L__unnamed_7:
	.ascii	"multiplying by 7 is unlucky!"

