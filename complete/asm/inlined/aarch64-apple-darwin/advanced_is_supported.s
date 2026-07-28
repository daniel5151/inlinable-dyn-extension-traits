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
	adrp	x0, l_anon.8b8d49c89999fd783d45b4e7c11967af.10@PAGE
Lloh1:
	add	x0, x0, l_anon.8b8d49c89999fd783d45b4e7c11967af.10@PAGEOFF
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
	adrp	x2, l_anon.8b8d49c89999fd783d45b4e7c11967af.12@PAGE
Lloh3:
	add	x2, x2, l_anon.8b8d49c89999fd783d45b4e7c11967af.12@PAGEOFF
LBB4_9:
	mov	x0, #-1
	mov	w1, #32
	bl	_core::panicking::panic_bounds_check
LBB4_10:
Lloh4:
	adrp	x2, l_anon.8b8d49c89999fd783d45b4e7c11967af.13@PAGE
Lloh5:
	add	x2, x2, l_anon.8b8d49c89999fd783d45b4e7c11967af.13@PAGEOFF
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
	adrp	x3, l_anon.8b8d49c89999fd783d45b4e7c11967af.14@PAGE
Lloh7:
	add	x3, x3, l_anon.8b8d49c89999fd783d45b4e7c11967af.14@PAGEOFF
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

	.globl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::scale_factor
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::scale_factor:
	str	x1, [x0, #8]
	mov	x0, #0
	ret

	.globl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::dec
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::dec:
	ldr	x8, [x0]
	sub	x8, x8, #1
	str	x8, [x0]
	mov	x0, #0
	ret

	.globl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc:
	ldr	x8, [x0]
	add	x8, x8, #1
	str	x8, [x0]
	mov	x0, #0
	ret

	.globl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::mul
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::mul:
	cmp	x1, #7
	b.ne	LBB10_2
Lloh8:
	adrp	x0, l_anon.8b8d49c89999fd783d45b4e7c11967af.15@PAGE
Lloh9:
	add	x0, x0, l_anon.8b8d49c89999fd783d45b4e7c11967af.15@PAGEOFF
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

	.globl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::get_state
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::get_state:
	ldr	x0, [x0]
	ret

	.globl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::set_state
	.p2align	2
_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::set_state:
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
	sub	sp, sp, #1216
	str	xzr, [sp]
	mov	w8, #1
	stp	xzr, x8, [sp]
	add	x0, sp, #16
	mov	w1, #1040
	bl	_bzero
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x29, #-144]
	stp	q0, q0, [x29, #-176]
	stp	q0, q0, [x29, #-208]
	stp	q0, q0, [x29, #-240]
	add	x0, sp, #16
	sub	x1, x29, #240
	mov	w2, #128
	bl	_<optional_trait_methods::line_reader::LineReader>::read_line
	cbz	x0, LBB13_68
Lloh10:
	adrp	x20, l_anon.8b8d49c89999fd783d45b4e7c11967af.0@PAGE
Lloh11:
	add	x20, x20, l_anon.8b8d49c89999fd783d45b4e7c11967af.0@PAGEOFF
	mov	w21, #22
	sub	x22, x29, #104
Lloh12:
	adrp	x23, l_anon.8b8d49c89999fd783d45b4e7c11967af.7@PAGE
Lloh13:
	add	x23, x23, l_anon.8b8d49c89999fd783d45b4e7c11967af.7@PAGEOFF
Lloh14:
	adrp	x24, l_anon.8b8d49c89999fd783d45b4e7c11967af.1@PAGE
Lloh15:
	add	x24, x24, l_anon.8b8d49c89999fd783d45b4e7c11967af.1@PAGEOFF
	mov	w25, #16
	mov	w26, #19
Lloh16:
	adrp	x27, l_anon.8b8d49c89999fd783d45b4e7c11967af.3@PAGE
Lloh17:
	add	x27, x27, l_anon.8b8d49c89999fd783d45b4e7c11967af.3@PAGEOFF
	mov	w28, #27
	mov	w19, #10
LBB13_2:
	cbz	x1, LBB13_52
	stp	x20, x21, [x29, #-104]
	; InlineAsm Start
	; InlineAsm End
	cmp	x1, #1
	b.ne	LBB13_7
	ldrb	w8, [x0]
	cmp	w8, #43
	b.eq	LBB13_16
	cmp	w8, #45
	b.ne	LBB13_17
	stp	x23, x25, [x29, #-104]
	; InlineAsm Start
	; InlineAsm End
	b	LBB13_10
LBB13_7:
	subs	x9, x1, #2
	b.ne	LBB13_11
	ldrh	w8, [x0]
	mov	w10, #11563
	cmp	w8, w10
	b.ne	LBB13_11
	stp	x23, x25, [x29, #-104]
	; InlineAsm Start
	; InlineAsm End
	mov	x0, sp
	bl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc
LBB13_10:
	mov	x0, sp
	bl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::dec
	b	LBB13_52
LBB13_11:
	stp	x24, x26, [x29, #-104]
	; InlineAsm Start
	; InlineAsm End
	ldrh	w8, [x0]
	mov	w10, #8234
	cmp	w8, w10
	b.ne	LBB13_30
	cbz	x9, LBB13_30
	mov	x10, x0
	ldrb	w8, [x10, #2]!
	cmp	w8, #45
	b.eq	LBB13_18
	cmp	w8, #43
	b.ne	LBB13_21
	mov	w11, #0
	b	LBB13_19
LBB13_16:
	stp	x23, x25, [x29, #-104]
	; InlineAsm Start
	; InlineAsm End
	mov	x0, sp
	bl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::inc
	b	LBB13_52
LBB13_17:
	stp	x24, x26, [x29, #-104]
	; InlineAsm Start
	; InlineAsm End
	b	LBB13_30
LBB13_18:
	mov	w11, #1
LBB13_19:
	sub	x9, x1, #3
	cbz	x9, LBB13_30
	add	x10, x10, #1
	b	LBB13_22
LBB13_21:
	mov	w11, #0
LBB13_22:
	mov	x8, #0
LBB13_23:
	ldrb	w12, [x10], #1
	sub	w12, w12, #48
	cmp	w12, #9
	b.hi	LBB13_30
	smulh	x13, x8, x19
	add	x8, x8, x8, lsl #2
	lsl	x8, x8, #1
	cmp	x13, x8, asr #63
	b.ne	LBB13_30
	and	x12, x12, #0xff
	tbz	w11, #0, LBB13_27
	subs	x8, x8, x12
	b.vs	LBB13_30
	b	LBB13_28
LBB13_27:
	adds	x8, x8, x12
	b.vs	LBB13_30
LBB13_28:
	subs	x9, x9, #1
	b.ne	LBB13_23
Lloh18:
	adrp	x9, l_anon.8b8d49c89999fd783d45b4e7c11967af.8@PAGE
Lloh19:
	add	x10, x9, l_anon.8b8d49c89999fd783d45b4e7c11967af.8@PAGEOFF
	mov	w9, #13
	stp	x10, x9, [x29, #-104]
	; InlineAsm Start
	; InlineAsm End
	mov	x0, sp
	mov	x1, x8
	bl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::mul
	cbnz	x0, LBB13_67
	b	LBB13_52
LBB13_30:
	stp	x27, x28, [x29, #-104]
	; InlineAsm Start
	; InlineAsm End
	subs	x9, x1, #3
	b.lo	LBB13_47
	ldrh	w8, [x0]
	mov	w10, #32298
	eor	w8, w8, w10
	ldrb	w10, [x0, #2]
	eor	w10, w10, #0x20
	orr	w8, w8, w10
	cmp	w8, #0
	ccmp	x9, #0, #4, eq
	b.eq	LBB13_50
	mov	x10, x0
	ldrb	w8, [x10, #3]!
	cmp	w8, #45
	b.eq	LBB13_35
	cmp	w8, #43
	b.ne	LBB13_38
	mov	w11, #0
	b	LBB13_36
LBB13_35:
	mov	w11, #1
LBB13_36:
	sub	x12, x1, #4
	cbz	x12, LBB13_50
	add	x10, x10, #1
	b	LBB13_39
LBB13_38:
	mov	w11, #0
	mov	x12, x9
LBB13_39:
	mov	x8, #0
LBB13_40:
	ldrb	w13, [x10], #1
	sub	w13, w13, #48
	cmp	w13, #9
	b.hi	LBB13_47
	smulh	x14, x8, x19
	add	x8, x8, x8, lsl #2
	lsl	x8, x8, #1
	cmp	x14, x8, asr #63
	b.ne	LBB13_47
	and	x13, x13, #0xff
	tbz	w11, #0, LBB13_44
	subs	x8, x8, x13
	b.vs	LBB13_47
	b	LBB13_45
LBB13_44:
	adds	x8, x8, x13
	b.vs	LBB13_47
LBB13_45:
	subs	x12, x12, #1
	b.ne	LBB13_40
Lloh20:
	adrp	x9, l_anon.8b8d49c89999fd783d45b4e7c11967af.9@PAGE
Lloh21:
	add	x10, x9, l_anon.8b8d49c89999fd783d45b4e7c11967af.9@PAGEOFF
	mov	w9, #21
	stp	x10, x9, [x29, #-104]
	; InlineAsm Start
	; InlineAsm End
	mov	x0, sp
	mov	x1, x8
	bl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::scale_factor
	b	LBB13_52
LBB13_47:
	cmp	x1, #1
	b.ne	LBB13_50
	ldrb	w8, [x0]
	cmp	w8, #112
	b.ne	LBB13_51
	mov	x0, sp
	bl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::get_state
	bl	_optional_trait_methods::print_macros::write_isize_line
	b	LBB13_52
LBB13_50:
	sub	x10, x1, #2
	ldrh	w8, [x0]
	mov	w11, #8307
	cmp	w8, w11
	ccmp	x10, #0, #4, eq
	b.ne	LBB13_53
LBB13_51:
Lloh22:
	adrp	x0, l_anon.8b8d49c89999fd783d45b4e7c11967af.6@PAGE
Lloh23:
	add	x0, x0, l_anon.8b8d49c89999fd783d45b4e7c11967af.6@PAGEOFF
	mov	w1, #16
	bl	_optional_trait_methods::print_macros::write_line
LBB13_52:
	add	x0, sp, #16
	sub	x1, x29, #240
	mov	w2, #128
	bl	_<optional_trait_methods::line_reader::LineReader>::read_line
	cbnz	x0, LBB13_2
	b	LBB13_68
LBB13_53:
	ldrb	w8, [x0, #2]!
	cmp	w8, #45
	b.eq	LBB13_56
	cmp	w8, #43
	b.ne	LBB13_58
	mov	w8, #0
	cbz	x9, LBB13_51
	b	LBB13_57
LBB13_56:
	mov	w8, #1
	cbz	x9, LBB13_51
LBB13_57:
	add	x0, x0, #1
	b	LBB13_59
LBB13_58:
	mov	w8, #0
	mov	x9, x10
LBB13_59:
	mov	x1, #0
LBB13_60:
	ldrb	w10, [x0], #1
	sub	w10, w10, #48
	cmp	w10, #9
	b.hi	LBB13_51
	smulh	x12, x1, x19
	add	x11, x1, x1, lsl #2
	lsl	x11, x11, #1
	cmp	x12, x11, asr #63
	b.ne	LBB13_51
	and	x10, x10, #0xff
	tbz	w8, #0, LBB13_64
	subs	x1, x11, x10
	b.vs	LBB13_51
	b	LBB13_65
LBB13_64:
	adds	x1, x11, x10
	b.vs	LBB13_51
LBB13_65:
	subs	x9, x9, #1
	b.ne	LBB13_60
	mov	x0, sp
	bl	_<optional_trait_methods::using_is_supported::targets::advanced::AdvancedTarget as optional_trait_methods::using_is_supported::target::Target>::set_state
	b	LBB13_52
LBB13_67:
	mov	w1, #28
	bl	_optional_trait_methods::print_macros::write_line
	mov	w0, #1
LBB13_68:
	add	sp, sp, #1216
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldp	x28, x27, [sp], #96
	ret
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh22, Lloh23

	.section	__TEXT,__const
l_anon.8b8d49c89999fd783d45b4e7c11967af.0:
	.ascii	"Parse IncDec extension"

l_anon.8b8d49c89999fd783d45b4e7c11967af.1:
	.ascii	"Parse Mul extension"

l_anon.8b8d49c89999fd783d45b4e7c11967af.2:
	.ascii	"* "

l_anon.8b8d49c89999fd783d45b4e7c11967af.3:
	.ascii	"Parse ScaleFactor extension"

l_anon.8b8d49c89999fd783d45b4e7c11967af.4:
	.ascii	"*~ "

l_anon.8b8d49c89999fd783d45b4e7c11967af.5:
	.ascii	"s "

	.section	__TEXT,__literal16,16byte_literals
l_anon.8b8d49c89999fd783d45b4e7c11967af.6:
	.ascii	"Unsupported cmd!"

l_anon.8b8d49c89999fd783d45b4e7c11967af.7:
	.ascii	"IncDec extension"

	.section	__TEXT,__const
l_anon.8b8d49c89999fd783d45b4e7c11967af.8:
	.ascii	"Mul extension"

l_anon.8b8d49c89999fd783d45b4e7c11967af.9:
	.ascii	"ScaleFactor extension"

l_anon.8b8d49c89999fd783d45b4e7c11967af.10:
	.byte	10

	.section	__TEXT,__cstring,cstring_literals
l_anon.8b8d49c89999fd783d45b4e7c11967af.11:
	.asciz	"src/print_macros.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.8b8d49c89999fd783d45b4e7c11967af.12:
	.quad	l_anon.8b8d49c89999fd783d45b4e7c11967af.11
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.8b8d49c89999fd783d45b4e7c11967af.13:
	.quad	l_anon.8b8d49c89999fd783d45b4e7c11967af.11
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.8b8d49c89999fd783d45b4e7c11967af.14:
	.quad	l_anon.8b8d49c89999fd783d45b4e7c11967af.11
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"

	.section	__TEXT,__const
l_anon.8b8d49c89999fd783d45b4e7c11967af.15:
	.ascii	"multiplying by 7 is unlucky!"

.subsections_via_symbols
