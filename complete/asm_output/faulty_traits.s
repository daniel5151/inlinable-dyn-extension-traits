rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

main:
	push	rbx
	sub	rsp, 16
	lea	rdi, [rsp + 8]
	mov	qword ptr [rdi], 0
	call	optional_trait_methods::using_traits::controller::TargetController<T>::run::h10e32065ca349408
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

optional_trait_methods::using_traits::controller::TargetController<T>::run::h10e32065ca349408:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	mov	rbx, rdi
	mov	ebp, 8
	lea	r15, [rip + .L__unnamed_2]
	lea	r14, [rip + .L__unnamed_3]
	mov	r12, qword ptr [rip + write@GOTPCREL]
	lea	r13, [rip + .L__unnamed_1]
.LBB2_1:
	mov	rax, qword ptr [rbp + r15 - 8]
	lea	rcx, [rax - 2]
	cmp	rcx, 3
	jae	.LBB2_2
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 16], 16
	mov	rcx, qword ptr [rsp + 16]
	mov	rcx, qword ptr [rsp + 8]
	cmp	eax, 2
	je	.LBB2_9
	cmp	eax, 3
	je	.LBB2_8
	cmp	eax, 4
	jne	.LBB2_13
	jmp	.LBB2_11
.LBB2_2:
	test	rax, rax
	je	.LBB2_12
	cmp	eax, 1
	jne	.LBB2_4
	mov	rax, qword ptr [rbp + r15]
	mov	qword ptr [rbx], rax
	jmp	.LBB2_13
.LBB2_9:
	inc	qword ptr [rbx]
	jmp	.LBB2_13
.LBB2_12:
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rip + .L__unnamed_4]
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_13
.LBB2_4:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .L__unnamed_5]
	call	r12
	mov	edx, 1
	mov	edi, 1
	mov	rsi, r13
	call	r12
.LBB2_13:
	add	rbp, 16
	cmp	rbp, 248
	jne	.LBB2_1
	xor	eax, eax
	jmp	.LBB2_15
.LBB2_11:
	inc	qword ptr [rbx]
.LBB2_8:
	lea	rax, [rip + .L__unnamed_6]
.LBB2_15:
	mov	edx, 38
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end2:

.L__unnamed_2:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.L__unnamed_1:
	.byte	10

.L__unnamed_5:
	.ascii	"Unsupported cmd!"

.L__unnamed_3:
	.ascii	"IncDec extension"

.L__unnamed_4:
	.asciz	"%d\n"

.L__unnamed_6:
	.ascii	"`dec` operations are not supported yet"

