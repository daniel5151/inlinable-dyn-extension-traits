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

	.globl	_<[u8]>::strip_prefix::<[u8; 3]>
	.p2align	2
_<[u8]>::strip_prefix::<[u8; 3]>:
	subs	x1, x1, #3
	b.lo	LBB1_2
	add	x8, x0, #3
	ldrh	w9, [x0]
	ldrh	w10, [x2]
	eor	w9, w9, w10
	ldrb	w10, [x0, #2]
	ldrb	w11, [x2, #2]
	eor	w10, w10, w11
	orr	w9, w9, w10
	cmp	w9, #0
	csel	x0, xzr, x8, ne
	ret
LBB1_2:
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
LBB2_1:
	cmp	x9, x0
	b.lo	LBB2_4
	mov	w0, #0
	mov	x1, x22
	mov	w2, #1024
	bl	_read
	cmp	x0, #1
	b.lt	LBB2_11
	mov	x9, #0
	str	x0, [x22, #1024]
	str	xzr, [x22, #1032]
LBB2_4:
	mov	x8, #0
	cmp	x0, x9
	b.lo	LBB2_12
	cmp	x0, #1024
	b.hi	LBB2_14
	cmp	x9, x0
	b.eq	LBB2_1
LBB2_7:
	ldrb	w8, [x22, x9]
	add	x9, x9, #1
	str	x9, [x22, #1032]
	cmp	w8, #10
	b.eq	LBB2_13
	cmp	x19, x21
	b.hs	LBB2_10
	strb	w8, [x20, x19]
	add	x19, x19, #1
LBB2_10:
	cmp	x0, x9
	b.eq	LBB2_1
	b	LBB2_7
LBB2_11:
	cmp	x19, x21
	csel	x8, xzr, x20, hi
	cmp	x19, #0
	csel	x19, x8, x19, eq
	csel	x8, xzr, x8, eq
	b	LBB2_14
LBB2_12:
	b	LBB2_14
LBB2_13:
	cmp	x19, x21
	csel	x8, xzr, x20, hi
LBB2_14:
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
	adrp	x0, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.4@PAGE
Lloh1:
	add	x0, x0, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.4@PAGEOFF
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
LBB4_1:
	cmp	x8, #31
	b.hi	LBB4_8
	umulh	x13, x10, x11
	lsr	x13, x13, #3
	msub	w14, w13, w9, w10
	orr	w14, w14, #0x30
	strb	w14, [x12, x8]
	sub	x8, x8, #1
	cmp	x10, #10
	mov	x10, x13
	b.hs	LBB4_1
	tbnz	x0, #63, LBB4_5
	add	x8, x8, #1
	b	LBB4_7
LBB4_5:
	cmp	x8, #31
	b.hi	LBB4_10
	mov	x9, sp
	mov	w10, #45
	strb	w10, [x9, x8]
LBB4_7:
	mov	w9, #32
	sub	x1, x9, x8
	mov	x9, sp
	add	x0, x9, x8
	bl	_optional_trait_methods::print_macros::write_all
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	ret
LBB4_8:
Lloh2:
	adrp	x2, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.6@PAGE
Lloh3:
	add	x2, x2, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.6@PAGEOFF
LBB4_9:
	mov	x0, #-1
	mov	w1, #32
	bl	_core::panicking::panic_bounds_check
LBB4_10:
Lloh4:
	adrp	x2, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.7@PAGE
Lloh5:
	add	x2, x2, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.7@PAGEOFF
	b	LBB4_9
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5

	.p2align	2
_optional_trait_methods::print_macros::write_all:
	stp	x20, x19, [sp, #-32]!
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	cbz	x1, LBB5_5
	mov	x19, x1
	mov	x20, x0
LBB5_2:
	mov	w0, #1
	mov	x1, x20
	mov	x2, x19
	bl	_write
	cmp	x0, #1
	b.lt	LBB5_5
	subs	x8, x19, x0
	b.lo	LBB5_6
	add	x20, x20, x0
	mov	x19, x8
	b.ne	LBB5_2
LBB5_5:
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	ret
LBB5_6:
Lloh6:
	adrp	x3, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.8@PAGE
Lloh7:
	add	x3, x3, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.8@PAGEOFF
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

	.globl	_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::dec
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::dec:
Lloh8:
	adrp	x0, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.9@PAGE
Lloh9:
	add	x0, x0, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.9@PAGEOFF
	mov	w1, #38
	ret
	.loh AdrpAdd	Lloh8, Lloh9

	.globl	_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::inc
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::inc:
	ldr	x8, [x0]
	add	x8, x8, #1
	str	x8, [x0]
	mov	x0, #0
	ret

	.globl	_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::get_state
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::get_state:
	ldr	x0, [x0]
	ret

	.globl	_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::set_state
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::set_state:
	str	x1, [x0]
	mov	x0, #0
	ret

	.globl	_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::scale_factor
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::scale_factor:
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
Lloh10:
	adrp	x0, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.10@PAGE
Lloh11:
	add	x0, x0, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.10@PAGEOFF
Lloh12:
	adrp	x2, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.12@PAGE
Lloh13:
	add	x2, x2, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.12@PAGEOFF
	mov	w1, #15
	bl	_core::panicking::panic
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11

	.globl	_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::mul
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::mul:
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
Lloh14:
	adrp	x0, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.10@PAGE
Lloh15:
	add	x0, x0, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.10@PAGEOFF
Lloh16:
	adrp	x2, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.13@PAGE
Lloh17:
	add	x2, x2, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.13@PAGEOFF
	mov	w1, #15
	bl	_core::panicking::panic
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15

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
	sub	x19, x29, #224
	str	xzr, [sp, #8]
	add	x0, sp, #16
	mov	w1, #1040
	bl	_bzero
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19, #96]
	stp	q0, q0, [x19, #64]
	stp	q0, q0, [x19, #32]
	stp	q0, q0, [x19]
	add	x0, sp, #16
	sub	x1, x29, #224
	mov	w2, #128
	bl	_<optional_trait_methods::line_reader::LineReader>::read_line
	cbz	x0, LBB13_32
Lloh18:
	adrp	x20, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.0@PAGE
Lloh19:
	add	x20, x20, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.0@PAGEOFF
	mov	w21, #22
	sub	x22, x29, #96
	mov	w23, #11563
	mov	w24, #8307
	mov	w25, #10
Lloh20:
	adrp	x19, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.2@PAGE
Lloh21:
	add	x19, x19, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.2@PAGEOFF
	mov	w27, #16
Lloh22:
	adrp	x26, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.3@PAGE
Lloh23:
	add	x26, x26, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.3@PAGEOFF
LBB13_2:
	cbz	x1, LBB13_11
	stp	x20, x21, [x29, #-96]
	; InlineAsm Start
	; InlineAsm End
	subs	x8, x1, #2
	b.eq	LBB13_8
	cmp	x1, #1
	b.ne	LBB13_9
	ldrb	w8, [x0]
	cmp	w8, #43
	b.eq	LBB13_16
	cmp	w8, #112
	b.eq	LBB13_15
	cmp	w8, #45
	b.eq	LBB13_30
	b	LBB13_10
LBB13_8:
	ldrh	w9, [x0]
	cmp	w9, w23
	b.eq	LBB13_29
LBB13_9:
	ldrh	w9, [x0]
	cmp	w9, w24
	ccmp	x8, #0, #4, eq
	b.ne	LBB13_12
LBB13_10:
	mov	x0, x19
	mov	w1, #16
	bl	_optional_trait_methods::print_macros::write_line
LBB13_11:
	add	x0, sp, #16
	sub	x1, x29, #224
	mov	w2, #128
	bl	_<optional_trait_methods::line_reader::LineReader>::read_line
	cbnz	x0, LBB13_2
	b	LBB13_32
LBB13_12:
	ldrb	w9, [x0, #2]!
	cmp	w9, #45
	b.eq	LBB13_17
	cmp	w9, #43
	b.ne	LBB13_20
	mov	w9, #0
	b	LBB13_18
LBB13_15:
	add	x0, sp, #8
	bl	_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::get_state
	bl	_optional_trait_methods::print_macros::write_isize_line
	b	LBB13_11
LBB13_16:
	stp	x26, x27, [x29, #-96]
	; InlineAsm Start
	; InlineAsm End
	add	x0, sp, #8
	bl	_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::inc
	b	LBB13_11
LBB13_17:
	mov	w9, #1
LBB13_18:
	sub	x8, x1, #3
	cbz	x8, LBB13_10
	add	x0, x0, #1
	b	LBB13_21
LBB13_20:
	mov	w9, #0
LBB13_21:
	mov	x1, #0
LBB13_22:
	ldrb	w10, [x0], #1
	sub	w10, w10, #48
	cmp	w10, #9
	b.hi	LBB13_10
	smulh	x12, x1, x25
	add	x11, x1, x1, lsl #2
	lsl	x11, x11, #1
	cmp	x12, x11, asr #63
	b.ne	LBB13_10
	and	x10, x10, #0xff
	tbz	w9, #0, LBB13_26
	subs	x1, x11, x10
	b.vs	LBB13_10
	b	LBB13_27
LBB13_26:
	adds	x1, x11, x10
	b.vs	LBB13_10
LBB13_27:
	subs	x8, x8, #1
	b.ne	LBB13_22
	add	x0, sp, #8
	bl	_<optional_trait_methods::using_is_supported::targets::faulty::FaultyTarget as optional_trait_methods::using_is_supported::target::Target>::set_state
	b	LBB13_11
LBB13_29:
	mov	w8, #16
	stp	x26, x8, [x29, #-96]
	sub	x8, x29, #96
	; InlineAsm Start
	; InlineAsm End
	b	LBB13_31
LBB13_30:
	mov	w8, #16
	stp	x26, x8, [x29, #-96]
	sub	x8, x29, #96
	; InlineAsm Start
	; InlineAsm End
LBB13_31:
Lloh24:
	adrp	x0, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.9@PAGE
Lloh25:
	add	x0, x0, l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.9@PAGEOFF
	mov	w1, #38
	bl	_optional_trait_methods::print_macros::write_line
	mov	w0, #1
LBB13_32:
	add	sp, sp, #1200
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldp	x28, x27, [sp], #96
	ret
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh24, Lloh25

	.section	__TEXT,__const
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.0:
	.ascii	"Parse IncDec extension"

l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.1:
	.ascii	"s "

	.section	__TEXT,__literal16,16byte_literals
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.2:
	.ascii	"Unsupported cmd!"

l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.3:
	.ascii	"IncDec extension"

	.section	__TEXT,__const
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.4:
	.byte	10

	.section	__TEXT,__cstring,cstring_literals
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.5:
	.asciz	"src/print_macros.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.6:
	.quad	l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.5
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.7:
	.quad	l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.5
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.8:
	.quad	l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.5
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"

	.section	__TEXT,__const
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.9:
	.ascii	"`dec` operations are not supported yet"

l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.10:
	.ascii	"not implemented"

	.section	__TEXT,__cstring,cstring_literals
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.11:
	.asciz	"src/using_is_supported/target.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.12:
	.quad	l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.11
	.asciz	" \000\000\000\000\000\000\000\"\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.13:
	.quad	l_anon.7cbdb8a643882e910ba4dcd9c7e93ff2.11
	.asciz	" \000\000\000\000\000\000\000\031\000\000\000\t\000\000"

.subsections_via_symbols
