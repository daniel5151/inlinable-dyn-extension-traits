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
	call	optional_trait_methods::using_options::controller::TargetController<T>::run::hc0ac4206520af823
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

optional_trait_methods::using_options::controller::TargetController<T>::run::hc0ac4206520af823:
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
	lea	r14, [rip + .L__unnamed_3]
	lea	r15, [rip + .LJTI2_0]
	mov	r12, qword ptr [rip + write@GOTPCREL]
	lea	r13, [rip + .L__unnamed_2]
.LBB2_1:
	mov	rax, qword ptr [rbp + r14 - 8]
	movsxd	rcx, dword ptr [r15 + 4*rax]
	add	rcx, r15
	jmp	rcx
.LBB2_3:
	lea	rcx, [rip + .L__unnamed_4]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], 16
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	cmp	eax, 4
	je	.LBB2_6
	cmp	eax, 3
	je	.LBB2_6
	cmp	eax, 2
	je	.LBB2_6
	jmp	.LBB2_9
.LBB2_8:
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rip + .L__unnamed_5]
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB2_9
.LBB2_2:
	mov	rax, qword ptr [rbp + r14]
	mov	qword ptr [rbx], rax
	jmp	.LBB2_9
.LBB2_7:
	lea	rax, [rip + .L__unnamed_6]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 13
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp]
.LBB2_6:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .L__unnamed_7]
	call	r12
	mov	edx, 1
	mov	edi, 1
	mov	rsi, r13
	call	r12
.LBB2_9:
	add	rbp, 16
	cmp	rbp, 248
	jne	.LBB2_1
	mov	rax, qword ptr [rsp + 16]
	mov	qword ptr [rax], 0
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
	.long	.LBB2_8-.LJTI2_0
	.long	.LBB2_2-.LJTI2_0
	.long	.LBB2_3-.LJTI2_0
	.long	.LBB2_3-.LJTI2_0
	.long	.LBB2_3-.LJTI2_0
	.long	.LBB2_7-.LJTI2_0

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

