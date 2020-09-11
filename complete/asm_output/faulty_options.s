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
	call	optional_trait_methods::using_options::controller::TargetController<T>::run::hd8c1030220f2f580
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

optional_trait_methods::using_options::controller::TargetController<T>::run::hd8c1030220f2f580:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	mov	rbx, rsi
	mov	qword ptr [rsp + 16], rdi
	mov	ebp, 8
	lea	r15, [rip + .L__unnamed_3]
	lea	r14, [rip + .LJTI2_0]
	lea	r12, [rip + .L__unnamed_4]
	mov	r13, qword ptr [rip + write@GOTPCREL]
.LBB2_1:
	mov	rax, qword ptr [rbp + r15 - 8]
	movsxd	rcx, dword ptr [r14 + 4*rax]
	add	rcx, r14
	jmp	rcx
.LBB2_3:
	mov	qword ptr [rsp], r12
	mov	qword ptr [rsp + 8], 16
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	cmp	eax, 2
	je	.LBB2_8
	cmp	eax, 3
	je	.LBB2_10
	cmp	eax, 4
	jne	.LBB2_12
	jmp	.LBB2_6
.LBB2_11:
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rip + .L__unnamed_5]
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_12
.LBB2_2:
	mov	rax, qword ptr [rbp + r15]
	mov	qword ptr [rbx], rax
	jmp	.LBB2_12
.LBB2_9:
	lea	rax, [rip + .L__unnamed_6]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp]
.LBB2_10:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .L__unnamed_7]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .L__unnamed_2]
	call	r13
	jmp	.LBB2_12
.LBB2_8:
	inc	qword ptr [rbx]
.LBB2_12:
	add	rbp, 16
	cmp	rbp, 248
	jne	.LBB2_1
	mov	rax, qword ptr [rsp + 16]
	xor	ecx, ecx
	jmp	.LBB2_7
.LBB2_6:
	inc	qword ptr [rbx]
	mov	rax, qword ptr [rsp + 16]
	mov	qword ptr [rax + 8], 0
	mov	ecx, 1
.LBB2_7:
	mov	qword ptr [rax], rcx
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end2:
.LJTI2_0:
	.long	.LBB2_11-.LJTI2_0
	.long	.LBB2_2-.LJTI2_0
	.long	.LBB2_3-.LJTI2_0
	.long	.LBB2_3-.LJTI2_0
	.long	.LBB2_3-.LJTI2_0
	.long	.LBB2_9-.LJTI2_0

.L__unnamed_3:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.L__unnamed_2:
	.byte	10

.L__unnamed_1:
	.ascii	"Invalid implementation!"

.L__unnamed_7:
	.ascii	"Unsupported cmd!"

.L__unnamed_6:
	.ascii	"Mul extension"

.L__unnamed_4:
	.ascii	"IncDec extension"

.L__unnamed_5:
	.asciz	"%d\n"

