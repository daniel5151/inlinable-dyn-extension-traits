core::ops::function::FnOnce::call_once::h11e8d5475b3e8793:
	inc	qword ptr [rdi]
	xor	eax, eax
	ret
.Lfunc_end0:

core::ops::function::FnOnce::call_once::h56e04338d856b53e:
	lea	rax, [rip + .L__unnamed_1]
	mov	edx, 38
	ret
.Lfunc_end1:

rust_begin_unwind:
.LBB2_1:
	jmp	.LBB2_1
.Lfunc_end2:

main:
	push	rbx
	sub	rsp, 16
	lea	rdi, [rsp + 8]
	mov	qword ptr [rdi], 0
	call	optional_trait_methods::using_fn::controller::TargetController<T>::run::h8c5be09ccad90a22
	test	rax, rax
	je	.LBB3_2
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	edi, 1
	mov	rsi, rax
	call	rbx
	lea	rsi, [rip + .L__unnamed_2]
	mov	edx, 1
	mov	edi, 1
	call	rbx
.LBB3_2:
	xor	eax, eax
	add	rsp, 16
	pop	rbx
	ret
.Lfunc_end3:

optional_trait_methods::using_fn::controller::TargetController<T>::run::h8c5be09ccad90a22:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	mov	rbx, rdi
	mov	ebp, 8
	lea	r15, [rip + .L__unnamed_3]
	lea	r12, [rip + .L__unnamed_4]
	lea	r14, [rip + .L__unnamed_5]
	mov	r13, qword ptr [rip + write@GOTPCREL]
.LBB4_1:
	mov	rax, qword ptr [rbp + r15 - 8]
	lea	rcx, [rax - 2]
	cmp	rcx, 3
	jae	.LBB4_2
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp + 16], 16
	mov	rcx, qword ptr [rsp + 16]
	mov	rcx, qword ptr [rsp + 8]
	test	r14, r14
	je	.LBB4_17
	cmp	eax, 2
	je	.LBB4_10
	cmp	eax, 3
	je	.LBB4_9
	cmp	eax, 4
	jne	.LBB4_14
	jmp	.LBB4_12
.LBB4_2:
	test	rax, rax
	je	.LBB4_13
	cmp	eax, 1
	jne	.LBB4_4
	mov	rax, qword ptr [rbp + r15]
	mov	qword ptr [rbx], rax
	jmp	.LBB4_14
.LBB4_10:
	inc	qword ptr [rbx]
	jmp	.LBB4_14
.LBB4_13:
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rip + .L__unnamed_6]
	xor	eax, eax
	call	qword ptr [rip + printf@GOTPCREL]
	jmp	.LBB4_14
.LBB4_4:
	mov	edx, 16
	mov	edi, 1
	lea	rsi, [rip + .L__unnamed_7]
	call	r13
	mov	edx, 1
	mov	edi, 1
	lea	rsi, [rip + .L__unnamed_2]
	call	r13
.LBB4_14:
	add	rbp, 16
	cmp	rbp, 248
	jne	.LBB4_1
	xor	eax, eax
	jmp	.LBB4_16
.LBB4_12:
	inc	qword ptr [rbx]
.LBB4_9:
	lea	rax, [rip + .L__unnamed_1]
.LBB4_16:
	mov	edx, 38
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB4_17:
	lea	rdi, [rip + .L__unnamed_8]
	lea	rdx, [rip + .L__unnamed_9]
	mov	esi, 43
	call	qword ptr [rip + core::panicking::panic::h9a68a32bce6b52cf@GOTPCREL]
	ud2
.Lfunc_end4:

.L__unnamed_8:
	.ascii	"called `Option::unwrap()` on a `None` value"

.L__unnamed_3:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.L__unnamed_2:
	.byte	10

.L__unnamed_7:
	.ascii	"Unsupported cmd!"

.L__unnamed_10:
	.ascii	"src/using_fn/controller.rs"

.L__unnamed_4:
	.ascii	"IncDec extension"

.L__unnamed_9:
	.quad	.L__unnamed_10
	.asciz	"\032\000\000\000\000\000\000\000&\000\000\000\033\000\000"

.L__unnamed_6:
	.asciz	"%d\n"

.L__unnamed_5:
	.quad	core::ops::function::FnOnce::call_once::h11e8d5475b3e8793
	.quad	core::ops::function::FnOnce::call_once::h56e04338d856b53e

.L__unnamed_1:
	.ascii	"`dec` operations are not supported yet"

