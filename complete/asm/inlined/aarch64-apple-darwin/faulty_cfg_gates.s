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
LBB1_1:
	cmp	x9, x0
	b.lo	LBB1_4
	mov	w0, #0
	mov	x1, x22
	mov	w2, #1024
	bl	_read
	cmp	x0, #1
	b.lt	LBB1_11
	mov	x9, #0
	str	x0, [x22, #1024]
	str	xzr, [x22, #1032]
LBB1_4:
	mov	x8, #0
	cmp	x0, x9
	b.lo	LBB1_12
	cmp	x0, #1024
	b.hi	LBB1_14
	cmp	x9, x0
	b.eq	LBB1_1
LBB1_7:
	ldrb	w8, [x22, x9]
	add	x9, x9, #1
	str	x9, [x22, #1032]
	cmp	w8, #10
	b.eq	LBB1_13
	cmp	x19, x21
	b.hs	LBB1_10
	strb	w8, [x20, x19]
	add	x19, x19, #1
LBB1_10:
	cmp	x0, x9
	b.eq	LBB1_1
	b	LBB1_7
LBB1_11:
	cmp	x19, x21
	csel	x8, xzr, x20, hi
	cmp	x19, #0
	csel	x19, x8, x19, eq
	csel	x8, xzr, x8, eq
	b	LBB1_14
LBB1_12:
	b	LBB1_14
LBB1_13:
	cmp	x19, x21
	csel	x8, xzr, x20, hi
LBB1_14:
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
	bl	_optional_trait_methods::print_macros::write_all
Lloh0:
	adrp	x0, l_anon.49398fa5a12074ac854baebb69a722bd.4@PAGE
Lloh1:
	add	x0, x0, l_anon.49398fa5a12074ac854baebb69a722bd.4@PAGEOFF
	mov	w1, #1
	ldp	x29, x30, [sp], #16
	b	_optional_trait_methods::print_macros::write_all
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
LBB3_1:
	cmp	x8, #31
	b.hi	LBB3_8
	umulh	x13, x10, x11
	lsr	x13, x13, #3
	msub	w14, w13, w9, w10
	orr	w14, w14, #0x30
	strb	w14, [x12, x8]
	sub	x8, x8, #1
	cmp	x10, #10
	mov	x10, x13
	b.hs	LBB3_1
	tbnz	x0, #63, LBB3_5
	add	x8, x8, #1
	b	LBB3_7
LBB3_5:
	cmp	x8, #31
	b.hi	LBB3_10
	mov	x9, sp
	mov	w10, #45
	strb	w10, [x9, x8]
LBB3_7:
	mov	w9, #32
	sub	x1, x9, x8
	mov	x9, sp
	add	x0, x9, x8
	bl	_optional_trait_methods::print_macros::write_all
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	ret
LBB3_8:
Lloh2:
	adrp	x2, l_anon.49398fa5a12074ac854baebb69a722bd.6@PAGE
Lloh3:
	add	x2, x2, l_anon.49398fa5a12074ac854baebb69a722bd.6@PAGEOFF
LBB3_9:
	mov	x0, #-1
	mov	w1, #32
	bl	_core::panicking::panic_bounds_check
LBB3_10:
Lloh4:
	adrp	x2, l_anon.49398fa5a12074ac854baebb69a722bd.7@PAGE
Lloh5:
	add	x2, x2, l_anon.49398fa5a12074ac854baebb69a722bd.7@PAGEOFF
	b	LBB3_9
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5

	.p2align	2
_optional_trait_methods::print_macros::write_all:
	stp	x20, x19, [sp, #-32]!
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	cbz	x1, LBB4_5
	mov	x19, x1
	mov	x20, x0
LBB4_2:
	mov	w0, #1
	mov	x1, x20
	mov	x2, x19
	bl	_write
	cmp	x0, #1
	b.lt	LBB4_5
	subs	x8, x19, x0
	b.lo	LBB4_6
	add	x20, x20, x0
	mov	x19, x8
	b.ne	LBB4_2
LBB4_5:
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	ret
LBB4_6:
Lloh6:
	adrp	x3, l_anon.49398fa5a12074ac854baebb69a722bd.8@PAGE
Lloh7:
	add	x3, x3, l_anon.49398fa5a12074ac854baebb69a722bd.8@PAGEOFF
	mov	x1, x19
	mov	x2, x19
	bl	_core::slice::index::slice_index_fail
	.loh AdrpAdd	Lloh6, Lloh7

	.globl	_<optional_trait_methods::line_reader::LineReader as core::default::Default>::default
	.p2align	2
_<optional_trait_methods::line_reader::LineReader as core::default::Default>::default:
	mov	x0, x8
	mov	w1, #1040
	b	_bzero

	.globl	_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec:
Lloh8:
	adrp	x0, l_anon.49398fa5a12074ac854baebb69a722bd.9@PAGE
Lloh9:
	add	x0, x0, l_anon.49398fa5a12074ac854baebb69a722bd.9@PAGEOFF
	mov	w1, #38
	ret
	.loh AdrpAdd	Lloh8, Lloh9

	.globl	_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc:
	ldr	x8, [x0]
	add	x8, x8, #1
	str	x8, [x0]
	mov	x0, #0
	ret

	.globl	_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state:
	ldr	x0, [x0]
	ret

	.globl	_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state:
	str	x1, [x0]
	mov	x0, #0
	ret

	.globl	_run_optional_trait_methods
	.p2align	2
_run_optional_trait_methods:
	stp	x28, x27, [sp, #-96]!
	stp	x26, x25, [sp, #16]
	stp	x24, x23, [sp, #32]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	sub	sp, sp, #1200
	str	xzr, [sp]
	sub	x26, x29, #224
	str	xzr, [sp, #8]
	add	x0, sp, #16
	mov	w1, #1040
	bl	_bzero
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x26, #96]
	stp	q0, q0, [x26, #64]
Lloh10:
	adrp	x20, l_anon.49398fa5a12074ac854baebb69a722bd.0@PAGE
Lloh11:
	add	x20, x20, l_anon.49398fa5a12074ac854baebb69a722bd.0@PAGEOFF
	mov	w21, #22
	sub	x22, x29, #96
	stp	q0, q0, [x26, #32]
	mov	w23, #11563
	mov	w24, #8307
Lloh12:
	adrp	x19, l_anon.49398fa5a12074ac854baebb69a722bd.2@PAGE
Lloh13:
	add	x19, x19, l_anon.49398fa5a12074ac854baebb69a722bd.2@PAGEOFF
	mov	w25, #10
	mov	w27, #16
	stp	q0, q0, [x26]
Lloh14:
	adrp	x26, l_anon.49398fa5a12074ac854baebb69a722bd.3@PAGE
Lloh15:
	add	x26, x26, l_anon.49398fa5a12074ac854baebb69a722bd.3@PAGEOFF
LBB10_1:
	add	x0, sp, #16
	sub	x1, x29, #224
	mov	w2, #128
	bl	_<optional_trait_methods::line_reader::LineReader>::read_line
	cbz	x0, LBB10_31
	cbz	x1, LBB10_1
	stp	x20, x21, [x29, #-96]
	; InlineAsm Start
	; InlineAsm End
	subs	x8, x1, #2
	b.eq	LBB10_8
	cmp	x1, #1
	b.ne	LBB10_9
	ldrb	w8, [x0]
	cmp	w8, #43
	b.eq	LBB10_15
	cmp	w8, #112
	b.eq	LBB10_14
	cmp	w8, #45
	b.eq	LBB10_29
	b	LBB10_10
LBB10_8:
	ldrh	w9, [x0]
	cmp	w9, w23
	b.eq	LBB10_28
LBB10_9:
	ldrh	w9, [x0]
	cmp	w9, w24
	ccmp	x8, #0, #4, eq
	b.ne	LBB10_11
LBB10_10:
	mov	x0, x19
	mov	w1, #16
	bl	_optional_trait_methods::print_macros::write_line
	b	LBB10_1
LBB10_11:
	ldrb	w9, [x0, #2]!
	cmp	w9, #45
	b.eq	LBB10_16
	cmp	w9, #43
	b.ne	LBB10_19
	mov	w9, #0
	b	LBB10_17
LBB10_14:
	add	x0, sp, #8
	bl	_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	bl	_optional_trait_methods::print_macros::write_isize_line
	b	LBB10_1
LBB10_15:
	stp	x26, x27, [x29, #-96]
	; InlineAsm Start
	; InlineAsm End
	add	x0, sp, #8
	bl	_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc
	b	LBB10_1
LBB10_16:
	mov	w9, #1
LBB10_17:
	sub	x8, x1, #3
	cbz	x8, LBB10_10
	add	x0, x0, #1
	b	LBB10_20
LBB10_19:
	mov	w9, #0
LBB10_20:
	mov	x1, #0
LBB10_21:
	ldrb	w10, [x0], #1
	sub	w10, w10, #48
	cmp	w10, #9
	b.hi	LBB10_10
	smulh	x12, x1, x25
	add	x11, x1, x1, lsl #2
	lsl	x11, x11, #1
	cmp	x12, x11, asr #63
	b.ne	LBB10_10
	and	x10, x10, #0xff
	tbz	w9, #0, LBB10_25
	subs	x1, x11, x10
	b.vs	LBB10_10
	b	LBB10_26
LBB10_25:
	adds	x1, x11, x10
	b.vs	LBB10_10
LBB10_26:
	subs	x8, x8, #1
	b.ne	LBB10_21
	add	x0, sp, #8
	bl	_<optional_trait_methods::using_cfg_gates::targets::faulty::FaultyTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	b	LBB10_1
LBB10_28:
	mov	w8, #16
	stp	x26, x8, [x29, #-96]
	sub	x8, x29, #96
	; InlineAsm Start
	; InlineAsm End
	b	LBB10_30
LBB10_29:
	mov	w8, #16
	stp	x26, x8, [x29, #-96]
	sub	x8, x29, #96
	; InlineAsm Start
	; InlineAsm End
LBB10_30:
Lloh16:
	adrp	x0, l_anon.49398fa5a12074ac854baebb69a722bd.9@PAGE
Lloh17:
	add	x0, x0, l_anon.49398fa5a12074ac854baebb69a722bd.9@PAGEOFF
	mov	w1, #38
	bl	_optional_trait_methods::print_macros::write_line
	mov	w0, #1
LBB10_31:
	add	sp, sp, #1200
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldp	x28, x27, [sp], #96
	ret
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh16, Lloh17

	.section	__TEXT,__const
l_anon.49398fa5a12074ac854baebb69a722bd.0:
	.ascii	"Parse IncDec extension"

l_anon.49398fa5a12074ac854baebb69a722bd.1:
	.ascii	"s "

	.section	__TEXT,__literal16,16byte_literals
l_anon.49398fa5a12074ac854baebb69a722bd.2:
	.ascii	"Unsupported cmd!"

l_anon.49398fa5a12074ac854baebb69a722bd.3:
	.ascii	"IncDec extension"

	.section	__TEXT,__const
l_anon.49398fa5a12074ac854baebb69a722bd.4:
	.byte	10

	.section	__TEXT,__cstring,cstring_literals
l_anon.49398fa5a12074ac854baebb69a722bd.5:
	.asciz	"src/print_macros.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.49398fa5a12074ac854baebb69a722bd.6:
	.quad	l_anon.49398fa5a12074ac854baebb69a722bd.5
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.49398fa5a12074ac854baebb69a722bd.7:
	.quad	l_anon.49398fa5a12074ac854baebb69a722bd.5
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.49398fa5a12074ac854baebb69a722bd.8:
	.quad	l_anon.49398fa5a12074ac854baebb69a722bd.5
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"

	.section	__TEXT,__const
l_anon.49398fa5a12074ac854baebb69a722bd.9:
	.ascii	"`dec` operations are not supported yet"

.subsections_via_symbols
