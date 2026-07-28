	.build_version macos, 11, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_<[u8]>::strip_prefix::<[u8; 2]>
	.p2align	2
_<[u8]>::strip_prefix::<[u8; 2]>:
	subs	x1, x1, #2
	b.lo	LBB0_2
	ldrh	w8, [x0], #2
	ldrh	w9, [x2]
	cmp	w8, w9
	csel	x0, xzr, x0, ne
	ret
LBB0_2:
	mov	x0, #0
	ret

	.p2align	2
_<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::parse_command:
	cbz	x1, LBB1_5
	cmp	x1, #1
	b.ne	LBB1_4
	ldrb	w8, [x0]
	cmp	w8, #112
	b.ne	LBB1_5
	mov	x0, #0
	ret
LBB1_4:
	ldrh	w8, [x0], #2
	mov	w9, #8307
	cmp	w8, w9
	b.eq	LBB1_6
LBB1_5:
	mov	w0, #2
	ret
LBB1_6:
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	sub	x1, x1, #2
	bl	_optional_trait_methods::commands::parse_isize
	and	x8, x0, #0x1
	mov	w9, #2
	sub	x0, x9, x8
	ldp	x29, x30, [sp], #16
	ret

	.p2align	2
_<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::handle:
	ldr	x8, [x1]
	cmp	x8, #1
	b.ne	LBB2_2
	ldr	x1, [x1, #8]
	b	_<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
LBB2_2:
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	bl	_<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	ldp	x29, x30, [sp], #16
	b	_optional_trait_methods::print_macros::write_isize_line

	.globl	_<optional_trait_methods::line_reader::LineReader>::read_line
	.p2align	2
_<optional_trait_methods::line_reader::LineReader>::read_line:
	stp	x22, x21, [sp, #-48]!
	stp	x20, x19, [sp, #16]
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	mov	x21, x2
	mov	x20, x1
	mov	x22, x0
	mov	x19, #0
	ldr	x9, [x0, #1032]
	ldr	x0, [x0, #1024]
LBB3_1:
	cmp	x9, x0
	b.lo	LBB3_4
	mov	w0, #0
	mov	x1, x22
	mov	w2, #1024
	bl	_read
	cmp	x0, #1
	b.lt	LBB3_11
	mov	x9, #0
	str	x0, [x22, #1024]
	str	xzr, [x22, #1032]
LBB3_4:
	mov	x8, #0
	cmp	x0, x9
	b.lo	LBB3_12
	cmp	x0, #1024
	b.hi	LBB3_14
	cmp	x9, x0
	b.eq	LBB3_1
LBB3_7:
	ldrb	w8, [x22, x9]
	add	x9, x9, #1
	str	x9, [x22, #1032]
	cmp	w8, #10
	b.eq	LBB3_13
	cmp	x19, x21
	b.hs	LBB3_10
	strb	w8, [x20, x19]
	add	x19, x19, #1
LBB3_10:
	cmp	x0, x9
	b.eq	LBB3_1
	b	LBB3_7
LBB3_11:
	cmp	x19, x21
	csel	x8, xzr, x20, hi
	cmp	x19, #0
	csel	x19, x8, x19, eq
	csel	x8, xzr, x8, eq
	b	LBB3_14
LBB3_12:
	b	LBB3_14
LBB3_13:
	cmp	x19, x21
	csel	x8, xzr, x20, hi
LBB3_14:
	mov	x0, x8
	mov	x1, x19
	ldp	x29, x30, [sp, #32]
	ldp	x20, x19, [sp, #16]
	ldp	x22, x21, [sp], #48
	ret

	.p2align	2
_optional_trait_methods::print_macros::write_line:
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
Lloh0:
	adrp	x0, l_anon.b6a311002f4fd450500fba56d12dc14e.1@PAGE
Lloh1:
	add	x0, x0, l_anon.b6a311002f4fd450500fba56d12dc14e.1@PAGEOFF
	mov	w1, #16
	bl	_optional_trait_methods::print_macros::write_all
Lloh2:
	adrp	x0, l_anon.b6a311002f4fd450500fba56d12dc14e.2@PAGE
Lloh3:
	add	x0, x0, l_anon.b6a311002f4fd450500fba56d12dc14e.2@PAGEOFF
	mov	w1, #1
	ldp	x29, x30, [sp], #16
	b	_optional_trait_methods::print_macros::write_all
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1

	.p2align	2
_optional_trait_methods::print_macros::write_isize_line:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	stp	xzr, xzr, [sp]
	stur	xzr, [sp, #23]
	str	xzr, [sp, #16]
	cmp	x0, #0
	cneg	x10, x0, mi
	mov	w9, #10
	strb	w9, [sp, #31]
	mov	w8, #30
	mov	x11, #-3689348814741910324
	movk	x11, #52429
	mov	x12, sp
LBB5_1:
	cmp	x8, #31
	b.hi	LBB5_8
	umulh	x13, x10, x11
	lsr	x13, x13, #3
	msub	w14, w13, w9, w10
	orr	w14, w14, #0x30
	strb	w14, [x12, x8]
	sub	x8, x8, #1
	cmp	x10, #10
	mov	x10, x13
	b.hs	LBB5_1
	tbnz	x0, #63, LBB5_5
	add	x8, x8, #1
	b	LBB5_7
LBB5_5:
	cmp	x8, #31
	b.hi	LBB5_10
	mov	x9, sp
	mov	w10, #45
	strb	w10, [x9, x8]
LBB5_7:
	mov	w9, #32
	sub	x1, x9, x8
	mov	x9, sp
	add	x0, x9, x8
	bl	_optional_trait_methods::print_macros::write_all
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	ret
LBB5_8:
Lloh4:
	adrp	x2, l_anon.b6a311002f4fd450500fba56d12dc14e.4@PAGE
Lloh5:
	add	x2, x2, l_anon.b6a311002f4fd450500fba56d12dc14e.4@PAGEOFF
LBB5_9:
	mov	x0, #-1
	mov	w1, #32
	bl	_core::panicking::panic_bounds_check
LBB5_10:
Lloh6:
	adrp	x2, l_anon.b6a311002f4fd450500fba56d12dc14e.5@PAGE
Lloh7:
	add	x2, x2, l_anon.b6a311002f4fd450500fba56d12dc14e.5@PAGEOFF
	b	LBB5_9
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh6, Lloh7

	.p2align	2
_optional_trait_methods::print_macros::write_all:
	stp	x20, x19, [sp, #-32]!
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	cbz	x1, LBB6_5
	mov	x19, x1
	mov	x20, x0
LBB6_2:
	mov	w0, #1
	mov	x1, x20
	mov	x2, x19
	bl	_write
	cmp	x0, #1
	b.lt	LBB6_5
	subs	x8, x19, x0
	b.lo	LBB6_6
	add	x20, x20, x0
	mov	x19, x8
	b.ne	LBB6_2
LBB6_5:
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	ret
LBB6_6:
Lloh8:
	adrp	x3, l_anon.b6a311002f4fd450500fba56d12dc14e.6@PAGE
Lloh9:
	add	x3, x3, l_anon.b6a311002f4fd450500fba56d12dc14e.6@PAGEOFF
	mov	x1, x19
	mov	x2, x19
	bl	_core::slice::index::slice_index_fail
	.loh AdrpAdd	Lloh8, Lloh9

	.p2align	2
_optional_trait_methods::commands::parse_isize:
	cbz	x1, LBB7_6
	mov	x8, x0
	mov	x9, x0
	ldrb	w10, [x9], #1
	cmp	w10, #45
	b.eq	LBB7_4
	cmp	w10, #43
	b.ne	LBB7_8
	mov	w10, #0
	b	LBB7_5
LBB7_4:
	mov	w10, #1
LBB7_5:
	mov	x8, x9
	sub	x1, x1, #1
	cbnz	x1, LBB7_9
LBB7_6:
	mov	x0, #0
LBB7_7:
	mov	x1, x9
	ret
LBB7_8:
	mov	w10, #0
LBB7_9:
	mov	x9, #0
	mov	w11, #10
	mov	w0, #1
LBB7_10:
	ldrb	w12, [x8], #1
	sub	w12, w12, #48
	cmp	w12, #10
	b.hs	LBB7_6
	smulh	x13, x9, x11
	add	x9, x9, x9, lsl #2
	lsl	x9, x9, #1
	cmp	x13, x9, asr #63
	b.ne	LBB7_6
	and	x12, x12, #0xff
	tbz	w10, #0, LBB7_14
	subs	x9, x9, x12
	b.vs	LBB7_6
	b	LBB7_15
LBB7_14:
	adds	x9, x9, x12
	b.vs	LBB7_6
LBB7_15:
	subs	x1, x1, #1
	b.eq	LBB7_7
	b	LBB7_10

	.globl	_<optional_trait_methods::line_reader::LineReader as core::default::Default>::default
	.p2align	2
_<optional_trait_methods::line_reader::LineReader as core::default::Default>::default:
	mov	x0, x8
	mov	w1, #1040
	b	_bzero

	.globl	_<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state:
	ldr	x0, [x0]
	ret

	.globl	_<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state:
	str	x1, [x0]
	mov	x0, #0
	ret

	.globl	_run_optional_trait_methods
	.p2align	2
_run_optional_trait_methods:
	stp	x20, x19, [sp, #-32]!
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	sub	sp, sp, #1200
	str	xzr, [sp]
	sub	x19, x29, #160
	str	xzr, [sp, #8]
	add	x0, sp, #16
	mov	w1, #1040
	bl	_bzero
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19, #96]
	stp	q0, q0, [x19, #64]
	stp	q0, q0, [x19, #32]
	stp	q0, q0, [x19]
LBB11_1:
	add	x0, sp, #16
	sub	x1, x29, #160
	mov	w2, #128
	bl	_<optional_trait_methods::line_reader::LineReader>::read_line
	cbz	x0, LBB11_6
	cbz	x1, LBB11_1
	bl	_<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::parse_command
	cmp	x0, #2
	b.ne	LBB11_5
	bl	_optional_trait_methods::print_macros::write_line
	b	LBB11_1
LBB11_5:
	stp	x0, x1, [x29, #-32]
	add	x0, sp, #8
	sub	x1, x29, #32
	bl	_<optional_trait_methods::using_cfg_gates::controller::TargetController<optional_trait_methods::using_cfg_gates::targets::basic::BasicTarget>>::handle
	b	LBB11_1
LBB11_6:
	mov	w0, #0
	add	sp, sp, #1200
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	ret

	.section	__TEXT,__const
l_anon.b6a311002f4fd450500fba56d12dc14e.0:
	.ascii	"s "

	.section	__TEXT,__literal16,16byte_literals
l_anon.b6a311002f4fd450500fba56d12dc14e.1:
	.ascii	"Unsupported cmd!"

	.section	__TEXT,__const
l_anon.b6a311002f4fd450500fba56d12dc14e.2:
	.byte	10

	.section	__TEXT,__cstring,cstring_literals
l_anon.b6a311002f4fd450500fba56d12dc14e.3:
	.asciz	"src/print_macros.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.b6a311002f4fd450500fba56d12dc14e.4:
	.quad	l_anon.b6a311002f4fd450500fba56d12dc14e.3
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.b6a311002f4fd450500fba56d12dc14e.5:
	.quad	l_anon.b6a311002f4fd450500fba56d12dc14e.3
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.b6a311002f4fd450500fba56d12dc14e.6:
	.quad	l_anon.b6a311002f4fd450500fba56d12dc14e.3
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"

.subsections_via_symbols
