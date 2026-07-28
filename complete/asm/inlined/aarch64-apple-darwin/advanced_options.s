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
	adrp	x0, l_anon.840f49e50aaf92573d45c9604e9b0f53.10@PAGE
Lloh1:
	add	x0, x0, l_anon.840f49e50aaf92573d45c9604e9b0f53.10@PAGEOFF
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
	adrp	x2, l_anon.840f49e50aaf92573d45c9604e9b0f53.12@PAGE
Lloh3:
	add	x2, x2, l_anon.840f49e50aaf92573d45c9604e9b0f53.12@PAGEOFF
LBB4_9:
	mov	x0, #-1
	mov	w1, #32
	bl	_core::panicking::panic_bounds_check
LBB4_10:
Lloh4:
	adrp	x2, l_anon.840f49e50aaf92573d45c9604e9b0f53.13@PAGE
Lloh5:
	add	x2, x2, l_anon.840f49e50aaf92573d45c9604e9b0f53.13@PAGEOFF
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
	adrp	x3, l_anon.840f49e50aaf92573d45c9604e9b0f53.14@PAGE
Lloh7:
	add	x3, x3, l_anon.840f49e50aaf92573d45c9604e9b0f53.14@PAGEOFF
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

	.globl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	.p2align	2
_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor:
	str	x1, [x0, #8]
	str	xzr, [x8]
	ret

	.globl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	.p2align	2
_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec:
	ldr	x9, [x0]
	sub	x9, x9, #1
	str	x9, [x0]
	str	xzr, [x8]
	ret

	.globl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
	.p2align	2
_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc:
	ldr	x9, [x0]
	add	x9, x9, #1
	str	x9, [x0]
	str	xzr, [x8]
	ret

	.globl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul
	.p2align	2
_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul:
	cmp	x1, #7
	b.ne	LBB10_2
Lloh8:
	adrp	x9, l_anon.840f49e50aaf92573d45c9604e9b0f53.15@PAGE
Lloh9:
	add	x9, x9, l_anon.840f49e50aaf92573d45c9604e9b0f53.15@PAGEOFF
	mov	w10, #28
	stp	x9, x10, [x8, #8]
	mov	w9, #1
	b	LBB10_3
LBB10_2:
	mov	x9, #0
	ldp	x11, x10, [x0]
	mul	x10, x10, x1
	mul	x10, x10, x11
	str	x10, [x0]
LBB10_3:
	str	x9, [x8]
	ret
	.loh AdrpAdd	Lloh8, Lloh9

	.globl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state
	.p2align	2
_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state:
	ldr	x0, [x0]
	ret

	.globl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state
	.p2align	2
_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state:
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
	cbz	x0, LBB13_74
Lloh10:
	adrp	x20, l_anon.840f49e50aaf92573d45c9604e9b0f53.0@PAGE
Lloh11:
	add	x20, x20, l_anon.840f49e50aaf92573d45c9604e9b0f53.0@PAGEOFF
	mov	w21, #22
	sub	x22, x29, #112
Lloh12:
	adrp	x19, l_anon.840f49e50aaf92573d45c9604e9b0f53.6@PAGE
Lloh13:
	add	x19, x19, l_anon.840f49e50aaf92573d45c9604e9b0f53.6@PAGEOFF
	mov	w24, #16
Lloh14:
	adrp	x25, l_anon.840f49e50aaf92573d45c9604e9b0f53.1@PAGE
Lloh15:
	add	x25, x25, l_anon.840f49e50aaf92573d45c9604e9b0f53.1@PAGEOFF
	mov	w26, #19
Lloh16:
	adrp	x27, l_anon.840f49e50aaf92573d45c9604e9b0f53.3@PAGE
Lloh17:
	add	x27, x27, l_anon.840f49e50aaf92573d45c9604e9b0f53.3@PAGEOFF
	mov	w28, #27
	mov	w23, #10
LBB13_2:
	cbz	x1, LBB13_56
	stp	x20, x21, [x29, #-112]
	; InlineAsm Start
	; InlineAsm End
	cmp	x1, #1
	b.ne	LBB13_7
	ldrb	w8, [x0]
	cmp	w8, #43
	b.eq	LBB13_17
	cmp	w8, #45
	b.ne	LBB13_20
Lloh18:
	adrp	x8, l_anon.840f49e50aaf92573d45c9604e9b0f53.7@PAGE
Lloh19:
	add	x8, x8, l_anon.840f49e50aaf92573d45c9604e9b0f53.7@PAGEOFF
	stp	x8, x24, [x29, #-112]
	; InlineAsm Start
	; InlineAsm End
	sub	x8, x29, #112
	mov	x0, sp
	bl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	b	LBB13_18
LBB13_7:
	subs	x8, x1, #2
	b.ne	LBB13_12
	ldrh	w9, [x0]
	mov	w10, #11563
	cmp	w9, w10
	b.ne	LBB13_12
Lloh20:
	adrp	x8, l_anon.840f49e50aaf92573d45c9604e9b0f53.7@PAGE
Lloh21:
	add	x8, x8, l_anon.840f49e50aaf92573d45c9604e9b0f53.7@PAGEOFF
	stp	x8, x24, [x29, #-112]
	; InlineAsm Start
	; InlineAsm End
	sub	x8, x29, #112
	mov	x0, sp
	bl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
	ldur	x8, [x29, #-112]
	cmp	x8, #1
	b.ne	LBB13_24
	ldur	x0, [x29, #-104]
	cbnz	x0, LBB13_72
	sub	x8, x29, #112
	mov	x0, sp
	bl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	ldur	w8, [x29, #-112]
	tbz	w8, #0, LBB13_75
	b	LBB13_19
LBB13_12:
	stp	x25, x26, [x29, #-112]
	; InlineAsm Start
	; InlineAsm End
	ldrh	w9, [x0]
	mov	w10, #8234
	cmp	w9, w10
	b.ne	LBB13_34
	cbz	x8, LBB13_34
	mov	x10, x0
	ldrb	w9, [x10, #2]!
	cmp	w9, #45
	b.eq	LBB13_21
	cmp	w9, #43
	b.ne	LBB13_25
	mov	w11, #0
	b	LBB13_22
LBB13_17:
Lloh22:
	adrp	x8, l_anon.840f49e50aaf92573d45c9604e9b0f53.7@PAGE
Lloh23:
	add	x8, x8, l_anon.840f49e50aaf92573d45c9604e9b0f53.7@PAGEOFF
	stp	x8, x24, [x29, #-112]
	; InlineAsm Start
	; InlineAsm End
	sub	x8, x29, #112
	mov	x0, sp
	bl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::inc
LBB13_18:
	ldur	w8, [x29, #-112]
	tbz	w8, #0, LBB13_56
LBB13_19:
	ldur	x0, [x29, #-104]
	cbnz	x0, LBB13_72
	b	LBB13_55
LBB13_20:
	stp	x25, x26, [x29, #-112]
	; InlineAsm Start
	; InlineAsm End
	b	LBB13_34
LBB13_21:
	mov	w11, #1
LBB13_22:
	sub	x8, x1, #3
	cbz	x8, LBB13_34
	add	x10, x10, #1
	b	LBB13_26
LBB13_24:
	sub	x8, x29, #112
	mov	x0, sp
	bl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::dec
	ldur	w8, [x29, #-112]
	tbnz	w8, #0, LBB13_71
	b	LBB13_56
LBB13_25:
	mov	w11, #0
LBB13_26:
	mov	x9, #0
LBB13_27:
	ldrb	w12, [x10], #1
	sub	w12, w12, #48
	cmp	w12, #9
	b.hi	LBB13_34
	smulh	x13, x9, x23
	add	x9, x9, x9, lsl #2
	lsl	x9, x9, #1
	cmp	x13, x9, asr #63
	b.ne	LBB13_34
	and	x12, x12, #0xff
	tbz	w11, #0, LBB13_31
	subs	x9, x9, x12
	b.vs	LBB13_34
	b	LBB13_32
LBB13_31:
	adds	x9, x9, x12
	b.vs	LBB13_34
LBB13_32:
	subs	x8, x8, #1
	b.ne	LBB13_27
Lloh24:
	adrp	x8, l_anon.840f49e50aaf92573d45c9604e9b0f53.8@PAGE
Lloh25:
	add	x10, x8, l_anon.840f49e50aaf92573d45c9604e9b0f53.8@PAGEOFF
	mov	w8, #13
	stp	x10, x8, [x29, #-112]
	; InlineAsm Start
	; InlineAsm End
	sub	x8, x29, #112
	mov	x0, sp
	mov	x1, x9
	bl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::mul
	b	LBB13_18
LBB13_34:
	stp	x27, x28, [x29, #-112]
	; InlineAsm Start
	; InlineAsm End
	subs	x8, x1, #3
	b.lo	LBB13_51
	ldrh	w9, [x0]
	mov	w10, #32298
	eor	w9, w9, w10
	ldrb	w10, [x0, #2]
	eor	w10, w10, #0x20
	orr	w9, w9, w10
	cmp	w9, #0
	ccmp	x8, #0, #4, eq
	b.eq	LBB13_54
	mov	x10, x0
	ldrb	w9, [x10, #3]!
	cmp	w9, #45
	b.eq	LBB13_39
	cmp	w9, #43
	b.ne	LBB13_42
	mov	w11, #0
	b	LBB13_40
LBB13_39:
	mov	w11, #1
LBB13_40:
	sub	x12, x1, #4
	cbz	x12, LBB13_54
	add	x10, x10, #1
	b	LBB13_43
LBB13_42:
	mov	w11, #0
	mov	x12, x8
LBB13_43:
	mov	x9, #0
LBB13_44:
	ldrb	w13, [x10], #1
	sub	w13, w13, #48
	cmp	w13, #9
	b.hi	LBB13_51
	smulh	x14, x9, x23
	add	x9, x9, x9, lsl #2
	lsl	x9, x9, #1
	cmp	x14, x9, asr #63
	b.ne	LBB13_51
	and	x13, x13, #0xff
	tbz	w11, #0, LBB13_48
	subs	x9, x9, x13
	b.vs	LBB13_51
	b	LBB13_49
LBB13_48:
	adds	x9, x9, x13
	b.vs	LBB13_51
LBB13_49:
	subs	x12, x12, #1
	b.ne	LBB13_44
Lloh26:
	adrp	x8, l_anon.840f49e50aaf92573d45c9604e9b0f53.9@PAGE
Lloh27:
	add	x10, x8, l_anon.840f49e50aaf92573d45c9604e9b0f53.9@PAGEOFF
	mov	w8, #21
	stp	x10, x8, [x29, #-112]
	; InlineAsm Start
	; InlineAsm End
	sub	x8, x29, #112
	mov	x0, sp
	mov	x1, x9
	bl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	b	LBB13_18
LBB13_51:
	cmp	x1, #1
	b.ne	LBB13_54
	ldrb	w8, [x0]
	cmp	w8, #112
	b.ne	LBB13_55
	mov	x0, sp
	bl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::get_state
	bl	_optional_trait_methods::print_macros::write_isize_line
	b	LBB13_56
LBB13_54:
	sub	x10, x1, #2
	ldrh	w9, [x0]
	mov	w11, #8307
	cmp	w9, w11
	ccmp	x10, #0, #4, eq
	b.ne	LBB13_57
LBB13_55:
	mov	x0, x19
	mov	w1, #16
	bl	_optional_trait_methods::print_macros::write_line
LBB13_56:
	add	x0, sp, #16
	sub	x1, x29, #240
	mov	w2, #128
	bl	_<optional_trait_methods::line_reader::LineReader>::read_line
	cbnz	x0, LBB13_2
	b	LBB13_74
LBB13_57:
	ldrb	w9, [x0, #2]!
	cmp	w9, #45
	b.eq	LBB13_60
	cmp	w9, #43
	b.ne	LBB13_62
	mov	w9, #0
	cbz	x8, LBB13_55
	b	LBB13_61
LBB13_60:
	mov	w9, #1
	cbz	x8, LBB13_55
LBB13_61:
	add	x0, x0, #1
	b	LBB13_63
LBB13_62:
	mov	w9, #0
	mov	x8, x10
LBB13_63:
	mov	x1, #0
LBB13_64:
	ldrb	w10, [x0], #1
	sub	w10, w10, #48
	cmp	w10, #9
	b.hi	LBB13_55
	smulh	x12, x1, x23
	add	x11, x1, x1, lsl #2
	lsl	x11, x11, #1
	cmp	x12, x11, asr #63
	b.ne	LBB13_55
	and	x10, x10, #0xff
	tbz	w9, #0, LBB13_68
	subs	x1, x11, x10
	b.vs	LBB13_55
	b	LBB13_69
LBB13_68:
	adds	x1, x11, x10
	b.vs	LBB13_55
LBB13_69:
	subs	x8, x8, #1
	b.ne	LBB13_64
	mov	x0, sp
	bl	_<optional_trait_methods::using_options::targets::advanced::AdvancedTarget as optional_trait_methods::using_options::target::Target>::set_state
	b	LBB13_56
LBB13_71:
	ldur	x0, [x29, #-104]
	cbz	x0, LBB13_75
LBB13_72:
	ldur	x1, [x29, #-96]
LBB13_73:
	bl	_optional_trait_methods::print_macros::write_line
	mov	w0, #1
LBB13_74:
	add	sp, sp, #1216
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldp	x28, x27, [sp], #96
	ret
LBB13_75:
Lloh28:
	adrp	x0, l_anon.840f49e50aaf92573d45c9604e9b0f53.16@PAGE
Lloh29:
	add	x0, x0, l_anon.840f49e50aaf92573d45c9604e9b0f53.16@PAGEOFF
	mov	w1, #23
	b	LBB13_73
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh28, Lloh29

	.section	__TEXT,__const
l_anon.840f49e50aaf92573d45c9604e9b0f53.0:
	.ascii	"Parse IncDec extension"

l_anon.840f49e50aaf92573d45c9604e9b0f53.1:
	.ascii	"Parse Mul extension"

l_anon.840f49e50aaf92573d45c9604e9b0f53.2:
	.ascii	"* "

l_anon.840f49e50aaf92573d45c9604e9b0f53.3:
	.ascii	"Parse ScaleFactor extension"

l_anon.840f49e50aaf92573d45c9604e9b0f53.4:
	.ascii	"*~ "

l_anon.840f49e50aaf92573d45c9604e9b0f53.5:
	.ascii	"s "

	.section	__TEXT,__literal16,16byte_literals
l_anon.840f49e50aaf92573d45c9604e9b0f53.6:
	.ascii	"Unsupported cmd!"

l_anon.840f49e50aaf92573d45c9604e9b0f53.7:
	.ascii	"IncDec extension"

	.section	__TEXT,__const
l_anon.840f49e50aaf92573d45c9604e9b0f53.8:
	.ascii	"Mul extension"

l_anon.840f49e50aaf92573d45c9604e9b0f53.9:
	.ascii	"ScaleFactor extension"

l_anon.840f49e50aaf92573d45c9604e9b0f53.10:
	.byte	10

	.section	__TEXT,__cstring,cstring_literals
l_anon.840f49e50aaf92573d45c9604e9b0f53.11:
	.asciz	"src/print_macros.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.840f49e50aaf92573d45c9604e9b0f53.12:
	.quad	l_anon.840f49e50aaf92573d45c9604e9b0f53.11
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.840f49e50aaf92573d45c9604e9b0f53.13:
	.quad	l_anon.840f49e50aaf92573d45c9604e9b0f53.11
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.840f49e50aaf92573d45c9604e9b0f53.14:
	.quad	l_anon.840f49e50aaf92573d45c9604e9b0f53.11
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"

	.section	__TEXT,__const
l_anon.840f49e50aaf92573d45c9604e9b0f53.15:
	.ascii	"multiplying by 7 is unlucky!"

l_anon.840f49e50aaf92573d45c9604e9b0f53.16:
	.ascii	"Invalid implementation!"

.subsections_via_symbols
