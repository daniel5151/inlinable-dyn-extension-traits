core::ops::function::FnOnce::call_once::h37a8be1f76e9bfad:
	inc	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end0:

core::ops::function::FnOnce::call_once::ha84bbc97b57668ac:
	cmp	rsi, 7
	jne	.LBB1_2
	lea	rax, [rip + .L__unnamed_1]
	jmp	.LBB1_3
.LBB1_2:
	imul	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	xor	eax, eax
.LBB1_3:
	mov	edx, 28
	ret
.Lfunc_end1:

core::ops::function::FnOnce::call_once::hc8783bc5b4940f48:
	dec	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end2:

rust_begin_unwind:
.LBB3_1:
	jmp	.LBB3_1
.Lfunc_end3:

main:
	push	rbx
	sub	rsp, 16
	lea	rdi, [rsp + 8]
	mov	qword ptr [rdi], 0
	call	optional_trait_methods::using_fn::controller::TargetController<T>::run::h9b33a4e991d7506c
	test	rax, rax
	je	.LBB4_2
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	edi, 1
	mov	rsi, rax
	call	rbx
	lea	rsi, [rip + .L__unnamed_2]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB4_2:
	xor	eax, eax
	add	rsp, 16
	pop	rbx
	ret
.Lfunc_end4:

optional_trait_methods::using_fn::controller::TargetController<T>::run::h9b33a4e991d7506c:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	mov	rbx, rdi
	mov	ebp, 8
	lea	r14, [rip + .L__unnamed_3]
	lea	r13, [rip + .LJTI5_0]
	lea	r15, [rip + .L__unnamed_4]
.LBB5_1:
	mov	rax, qword ptr [rbp + r14 - 8]
	cmp	rax, 5
	ja	.LBB5_3
	movsxd	rcx, dword ptr [r13 + 4*rax]
	add	rcx, r13
	jmp	rcx
.LBB5_6:
	lea	rcx, [rip + .L__unnamed_5]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 16
	mov	rcx, qword ptr [rsp + 16]
	mov	rcx, qword ptr [rsp + 8]
	test	r15, r15
	je	.LBB5_7
	cmp	eax, 3
	je	.LBB5_12
	cmp	eax, 2
	jne	.LBB5_19
	inc	qword ptr [rbx]
	jmp	.LBB5_19
.LBB5_12:
	dec	qword ptr [rbx]
	jmp	.LBB5_19
.LBB5_4:
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rip + .L__unnamed_6]
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB5_19
.LBB5_5:
	mov	rax, qword ptr [rbp + r14]
	jmp	.LBB5_18
.LBB5_13:
	lea	rax, [rip + .L__unnamed_7]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 13
	mov	rax, qword ptr [rsp + 16]
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rip + .L__unnamed_8]
	test	rax, rax
	je	.LBB5_14
	mov	rax, qword ptr [rbp + r14]
	cmp	rax, 7
	je	.LBB5_16
	imul	rax, qword ptr [rbx]
.LBB5_18:
	mov	qword ptr [rbx], rax
	jmp	.LBB5_19
.LBB5_3:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .L__unnamed_9]
	mov	r12, qword ptr [rip + write@GOTPCREL]
	call	r12
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .L__unnamed_2]
	call	r12
.LBB5_19:
	add	rbp, 16
	cmp	rbp, 248
	jne	.LBB5_1
	xor	eax, eax
.LBB5_21:
	mov	edx, 28
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB5_16:
	lea	rax, [rip + .L__unnamed_1]
	jmp	.LBB5_21
.LBB5_7:
	lea	rdi, [rip + .L__unnamed_10]
	lea	rdx, [rip + .L__unnamed_11]
	jmp	.LBB5_8
.LBB5_14:
	lea	rdi, [rip + .L__unnamed_10]
	lea	rdx, [rip + .L__unnamed_12]
.LBB5_8:
	mov	esi, 43
	call	qword ptr [rip + core::panicking::panic::h9a68a32bce6b52cf@GOTPCREL]
	ud2
.Lfunc_end5:
.LJTI5_0:
	.long	.LBB5_4-.LJTI5_0
	.long	.LBB5_5-.LJTI5_0
	.long	.LBB5_6-.LJTI5_0
	.long	.LBB5_6-.LJTI5_0
	.long	.LBB5_6-.LJTI5_0
	.long	.LBB5_13-.LJTI5_0

.L__unnamed_10:
	.ascii	"called `Option::unwrap()` on a `None` value"

.L__unnamed_3:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.L__unnamed_2:
	.byte	10

.L__unnamed_9:
	.ascii	"Unsupported cmd!"

.L__unnamed_7:
	.ascii	"Mul extension"

.L__unnamed_13:
	.ascii	"src/using_fn/controller.rs"

.L__unnamed_12:
	.quad	.L__unnamed_13
	.asciz	"\032\000\000\000\000\000\000\0006\000\000\000\033\000\000"

.L__unnamed_5:
	.ascii	"IncDec extension"

.L__unnamed_11:
	.quad	.L__unnamed_13
	.asciz	"\032\000\000\000\000\000\000\000&\000\000\000\033\000\000"

.L__unnamed_6:
	.asciz	"%d\n"

.L__unnamed_4:
	.quad	core::ops::function::FnOnce::call_once::h37a8be1f76e9bfad
	.quad	core::ops::function::FnOnce::call_once::hc8783bc5b4940f48

.L__unnamed_8:
	.quad	core::ops::function::FnOnce::call_once::ha84bbc97b57668ac

.L__unnamed_1:
	.ascii	"multiplying by 7 is unlucky!"

