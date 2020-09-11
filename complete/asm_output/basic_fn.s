rust_begin_unwind:
.LBB0_1:
	jmp	.LBB0_1
.Lfunc_end0:

main:
	push	rbx
	sub	rsp, 16
	lea	rdi, [rsp + 8]
	mov	qword ptr [rdi], 0
	call	optional_trait_methods::using_fn::controller::TargetController<T>::run::h2eac83673fff83bf
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

optional_trait_methods::using_fn::controller::TargetController<T>::run::h2eac83673fff83bf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rdi
	mov	ebx, 8
	lea	rbp, [rip + .L__unnamed_2]
	lea	r15, [rip + .L__unnamed_3]
	mov	r14, qword ptr [rip + write@GOTPCREL]
	lea	r12, [rip + .L__unnamed_1]
.LBB2_1:
	mov	rax, qword ptr [rbx + rbp - 8]
	test	rax, rax
	je	.LBB2_4
	cmp	eax, 1
	jne	.LBB2_3
	mov	rax, qword ptr [rbx + rbp]
	mov	qword ptr [r13], rax
	jmp	.LBB2_6
.LBB2_4:
	mov	rsi, qword ptr [r13]
	lea	rdi, [rip + .L__unnamed_4]
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_6
.LBB2_3:
	mov	edx, 16
	mov	edi, 1
	mov	rsi, r15
	call	r14
	mov	edx, 1
	mov	edi, 1
	mov	rsi, r12
	call	r14
.LBB2_6:
	add	rbx, 16
	cmp	rbx, 248
	jne	.LBB2_1
	xor	eax, eax
	add	rsp, 8
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

.L__unnamed_3:
	.ascii	"Unsupported cmd!"

.L__unnamed_4:
	.asciz	"%d\n"

