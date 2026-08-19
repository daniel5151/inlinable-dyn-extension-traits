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
	adrp	x0, l_anon.ed1c54180e385999bb2d987dad54a100.4@PAGE
Lloh1:
	add	x0, x0, l_anon.ed1c54180e385999bb2d987dad54a100.4@PAGEOFF
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
	adrp	x2, l_anon.ed1c54180e385999bb2d987dad54a100.6@PAGE
Lloh3:
	add	x2, x2, l_anon.ed1c54180e385999bb2d987dad54a100.6@PAGEOFF
LBB4_9:
	mov	x0, #-1
	mov	w1, #32
	bl	_core::panicking::panic_bounds_check
LBB4_10:
Lloh4:
	adrp	x2, l_anon.ed1c54180e385999bb2d987dad54a100.7@PAGE
Lloh5:
	add	x2, x2, l_anon.ed1c54180e385999bb2d987dad54a100.7@PAGEOFF
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
	adrp	x3, l_anon.ed1c54180e385999bb2d987dad54a100.8@PAGE
Lloh7:
	add	x3, x3, l_anon.ed1c54180e385999bb2d987dad54a100.8@PAGEOFF
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

	.globl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::scale_factor
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::scale_factor:
	str	x1, [x0, #8]
	mov	x0, #0
	ret

	.globl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec:
	ldr	x8, [x0]
	sub	x8, x8, #1
	str	x8, [x0]
	mov	x0, #0
	ret

	.globl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc:
	ldr	x8, [x0]
	add	x8, x8, #1
	str	x8, [x0]
	mov	x0, #0
	ret

	.globl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::mul
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::mul:
	cmp	x1, #7
	b.ne	LBB10_2
Lloh8:
	adrp	x0, l_anon.ed1c54180e385999bb2d987dad54a100.9@PAGE
Lloh9:
	add	x0, x0, l_anon.ed1c54180e385999bb2d987dad54a100.9@PAGEOFF
	b	LBB10_3
LBB10_2:
	mov	x8, x0
	mov	x0, #0
	ldp	x10, x9, [x8]
	mul	x9, x9, x1
	mul	x9, x9, x10
	str	x9, [x8]
LBB10_3:
	mov	w1, #28
	ret
	.loh AdrpAdd	Lloh8, Lloh9

	.globl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state:
	ldr	x0, [x0]
	ret

	.globl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	.p2align	2
_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state:
	str	x1, [x0]
	mov	x0, #0
	ret

	.globl	_run_optional_trait_methods
	.p2align	2
_run_optional_trait_methods:
	stp	x26, x25, [sp, #-80]!
	stp	x24, x23, [sp, #16]
	stp	x22, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	sub	sp, sp, #1184
	str	xzr, [sp]
	mov	w8, #1
	stp	xzr, x8, [sp]
	add	x0, sp, #16
	mov	w1, #1040
	bl	_bzero
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x29, #-96]
	stp	q0, q0, [x29, #-128]
	stp	q0, q0, [x29, #-160]
	mov	w21, #11563
	mov	w22, #8234
	mov	w23, #32298
	mov	w24, #10
	mov	w25, #8307
Lloh10:
	adrp	x19, l_anon.ed1c54180e385999bb2d987dad54a100.3@PAGE
Lloh11:
	add	x19, x19, l_anon.ed1c54180e385999bb2d987dad54a100.3@PAGEOFF
	stp	q0, q0, [x29, #-192]
LBB13_1:
	add	x0, sp, #16
	sub	x1, x29, #192
	mov	w2, #128
	bl	_<optional_trait_methods::line_reader::LineReader>::read_line
	cbz	x0, LBB13_80
	cbz	x1, LBB13_1
	subs	x8, x1, #2
	b.eq	LBB13_9
	cmp	x1, #1
	b.ne	LBB13_11
	ldrb	w8, [x0]
	cmp	w8, #112
	b.eq	LBB13_29
	cmp	w8, #45
	b.eq	LBB13_16
	cmp	w8, #43
	b.ne	LBB13_46
	and	x20, x20, #0xffffffffffffff00
	b	LBB13_17
LBB13_9:
	ldrh	w9, [x0]
	cmp	w9, w21
	b.ne	LBB13_11
	and	x8, x20, #0xffffffffffffff00
	orr	x20, x8, #0x2
	b	LBB13_17
LBB13_11:
	ldrh	w9, [x0]
	cmp	w9, w22
	ccmp	x8, #0, #4, eq
	b.ne	LBB13_13
LBB13_12:
	subs	x9, x1, #3
	b.hs	LBB13_44
	b	LBB13_45
LBB13_13:
	mov	x9, x0
	ldrb	w10, [x9, #2]!
	cmp	w10, #45
	b.eq	LBB13_30
	cmp	w10, #43
	b.ne	LBB13_33
	mov	w10, #0
	b	LBB13_31
LBB13_16:
	and	x8, x20, #0xffffffffffffff00
	orr	x20, x8, #0x1
LBB13_17:
	mov	w8, #2
LBB13_18:
	cmp	x8, #0
	cset	w9, ne
	sub	x9, x8, x9
	cmp	x9, #1
	b.gt	LBB13_22
	cbnz	x9, LBB13_24
	mov	x0, sp
	tbz	w8, #0, LBB13_42
	mov	x1, x20
	bl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::set_state
	b	LBB13_47
LBB13_22:
	mov	x0, sp
	mov	x1, x20
	cmp	x9, #2
	b.ne	LBB13_28
	bl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::mul
	cbz	x0, LBB13_1
	b	LBB13_79
LBB13_24:
	ands	w8, w20, #0xff
	b.eq	LBB13_66
	cmp	w8, #1
	b.eq	LBB13_27
	mov	x0, sp
	bl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc
LBB13_27:
	mov	x0, sp
	bl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::dec
	b	LBB13_47
LBB13_28:
	bl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::scale_factor
	b	LBB13_47
LBB13_29:
	mov	x8, #0
	b	LBB13_18
LBB13_30:
	mov	w10, #1
LBB13_31:
	sub	x11, x1, #3
	cbz	x11, LBB13_43
	add	x9, x9, #1
	b	LBB13_34
LBB13_33:
	mov	w10, #0
	mov	x11, x8
LBB13_34:
	mov	x12, #0
LBB13_35:
	ldrb	w13, [x9], #1
	sub	w13, w13, #48
	cmp	w13, #9
	b.hi	LBB13_12
	smulh	x14, x12, x24
	add	x12, x12, x12, lsl #2
	lsl	x12, x12, #1
	cmp	x14, x12, asr #63
	b.ne	LBB13_12
	and	x13, x13, #0xff
	tbz	w10, #0, LBB13_39
	subs	x12, x12, x13
	b.vs	LBB13_12
	b	LBB13_40
LBB13_39:
	adds	x12, x12, x13
	b.vs	LBB13_12
LBB13_40:
	subs	x11, x11, #1
	b.ne	LBB13_35
	mov	x20, x12
	mov	w8, #3
	b	LBB13_18
LBB13_42:
	bl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::get_state
	bl	_optional_trait_methods::print_macros::write_isize_line
	b	LBB13_47
LBB13_43:
	mov	x9, #0
LBB13_44:
	ldrh	w10, [x0]
	eor	w10, w10, w23
	ldrb	w11, [x0, #2]
	eor	w11, w11, #0x20
	orr	w10, w10, w11
	cmp	w10, #0
	ccmp	x9, #0, #4, eq
	b.ne	LBB13_51
LBB13_45:
	ldrh	w9, [x0]
	cmp	w9, w25
	ccmp	x8, #0, #4, eq
	b.ne	LBB13_48
LBB13_46:
	mov	x0, x19
	mov	w1, #16
	bl	_optional_trait_methods::print_macros::write_line
LBB13_47:
	mov	x0, #0
	cbz	x0, LBB13_1
	b	LBB13_79
LBB13_48:
	ldrb	w9, [x0, #2]!
	cmp	w9, #45
	b.eq	LBB13_54
	cmp	w9, #43
	b.ne	LBB13_57
	mov	w9, #0
	b	LBB13_55
LBB13_51:
	mov	x10, x0
	ldrb	w11, [x10, #3]!
	cmp	w11, #45
	b.eq	LBB13_67
	cmp	w11, #43
	b.ne	LBB13_70
	mov	w11, #0
	b	LBB13_68
LBB13_54:
	mov	w9, #1
LBB13_55:
	sub	x8, x1, #3
	cbz	x8, LBB13_46
	add	x0, x0, #1
	b	LBB13_58
LBB13_57:
	mov	w9, #0
LBB13_58:
	mov	x10, #0
LBB13_59:
	ldrb	w11, [x0], #1
	sub	w11, w11, #48
	cmp	w11, #9
	b.hi	LBB13_46
	smulh	x12, x10, x24
	add	x10, x10, x10, lsl #2
	lsl	x10, x10, #1
	cmp	x12, x10, asr #63
	b.ne	LBB13_46
	and	x11, x11, #0xff
	tbz	w9, #0, LBB13_63
	subs	x10, x10, x11
	b.vs	LBB13_46
	b	LBB13_64
LBB13_63:
	adds	x10, x10, x11
	b.vs	LBB13_46
LBB13_64:
	subs	x8, x8, #1
	b.ne	LBB13_59
	mov	x20, x10
	mov	w8, #1
	b	LBB13_18
LBB13_66:
	mov	x0, sp
	bl	_<optional_trait_methods::using_cfg_gates::targets::advanced::AdvancedTarget as optional_trait_methods::using_cfg_gates::target::Target>::inc
	b	LBB13_47
LBB13_67:
	mov	w11, #1
LBB13_68:
	sub	x9, x1, #4
	cbz	x9, LBB13_45
	add	x10, x10, #1
	b	LBB13_71
LBB13_70:
	mov	w11, #0
LBB13_71:
	mov	x12, #0
LBB13_72:
	ldrb	w13, [x10], #1
	sub	w13, w13, #48
	cmp	w13, #9
	b.hi	LBB13_45
	smulh	x14, x12, x24
	add	x12, x12, x12, lsl #2
	lsl	x12, x12, #1
	cmp	x14, x12, asr #63
	b.ne	LBB13_45
	and	x13, x13, #0xff
	tbz	w11, #0, LBB13_76
	subs	x12, x12, x13
	b.vs	LBB13_45
	b	LBB13_77
LBB13_76:
	adds	x12, x12, x13
	b.vs	LBB13_45
LBB13_77:
	subs	x9, x9, #1
	b.ne	LBB13_72
	mov	x20, x12
	mov	w8, #4
	b	LBB13_18
LBB13_79:
	mov	w1, #28
	bl	_optional_trait_methods::print_macros::write_line
	mov	w0, #1
LBB13_80:
	add	sp, sp, #1184
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x26, x25, [sp], #80
	ret
	.loh AdrpAdd	Lloh10, Lloh11

	.section	__TEXT,__const
l_anon.ed1c54180e385999bb2d987dad54a100.0:
	.ascii	"* "

l_anon.ed1c54180e385999bb2d987dad54a100.1:
	.ascii	"*~ "

l_anon.ed1c54180e385999bb2d987dad54a100.2:
	.ascii	"s "

	.section	__TEXT,__literal16,16byte_literals
l_anon.ed1c54180e385999bb2d987dad54a100.3:
	.ascii	"Unsupported cmd!"

	.section	__TEXT,__const
l_anon.ed1c54180e385999bb2d987dad54a100.4:
	.byte	10

	.section	__TEXT,__cstring,cstring_literals
l_anon.ed1c54180e385999bb2d987dad54a100.5:
	.asciz	"src/print_macros.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.ed1c54180e385999bb2d987dad54a100.6:
	.quad	l_anon.ed1c54180e385999bb2d987dad54a100.5
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.ed1c54180e385999bb2d987dad54a100.7:
	.quad	l_anon.ed1c54180e385999bb2d987dad54a100.5
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.ed1c54180e385999bb2d987dad54a100.8:
	.quad	l_anon.ed1c54180e385999bb2d987dad54a100.5
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"

	.section	__TEXT,__const
l_anon.ed1c54180e385999bb2d987dad54a100.9:
	.ascii	"multiplying by 7 is unlucky!"

.subsections_via_symbols
