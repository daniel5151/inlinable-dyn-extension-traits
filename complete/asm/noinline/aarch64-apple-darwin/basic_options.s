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

	.p2align	2
_<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::basic::BasicTarget>>::parse_command:
	sub	sp, sp, #64
	stp	x22, x21, [sp, #16]
	stp	x20, x19, [sp, #32]
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	mov	x21, x1
	mov	x20, x0
	mov	x19, x8
Lloh0:
	adrp	x8, l_anon.f84fd1629729fc47583a430ee72ff167.0@PAGE
Lloh1:
	add	x8, x8, l_anon.f84fd1629729fc47583a430ee72ff167.0@PAGEOFF
	mov	w9, #22
	stp	x8, x9, [sp]
	mov	x8, sp
	; InlineAsm Start
	; InlineAsm End
	cmp	x1, #1
	b.ne	LBB2_4
	ldrb	w8, [x20]
	cmp	w8, #45
	b.eq	LBB2_18
	cmp	w8, #43
	b.ne	LBB2_7
	mov	w8, #2
	str	x8, [x19]
	strb	wzr, [x19, #8]
	b	LBB2_25
LBB2_4:
	cmp	x21, #2
	b.ne	LBB2_7
	ldrh	w8, [x20]
	mov	w9, #11563
	cmp	w8, w9
	b.ne	LBB2_7
	mov	w8, #2
	str	x8, [x19]
	strb	w8, [x19, #8]
	b	LBB2_25
LBB2_7:
Lloh2:
	adrp	x8, l_anon.f84fd1629729fc47583a430ee72ff167.1@PAGE
Lloh3:
	add	x8, x8, l_anon.f84fd1629729fc47583a430ee72ff167.1@PAGEOFF
	mov	w9, #19
	stp	x8, x9, [sp]
	mov	x8, sp
	; InlineAsm Start
	; InlineAsm End
	subs	x22, x21, #2
	b.lo	LBB2_11
	ldrh	w8, [x20]
	mov	w9, #8234
	cmp	w8, w9
	b.ne	LBB2_11
	add	x0, x20, #2
	mov	x1, x22
	bl	_optional_trait_methods::commands::parse_isize
	tbz	w0, #0, LBB2_11
	mov	w8, #3
	b	LBB2_23
LBB2_11:
Lloh4:
	adrp	x8, l_anon.f84fd1629729fc47583a430ee72ff167.3@PAGE
Lloh5:
	add	x8, x8, l_anon.f84fd1629729fc47583a430ee72ff167.3@PAGEOFF
	mov	w9, #27
	stp	x8, x9, [sp]
	mov	x8, sp
	; InlineAsm Start
	; InlineAsm End
	subs	x1, x21, #3
	b.lo	LBB2_15
	ldrh	w8, [x20]
	ldrb	w9, [x20, #2]
	mov	w10, #32298
	cmp	w8, w10
	mov	w8, #32
	ccmp	w9, w8, #0, eq
	b.ne	LBB2_20
	add	x0, x20, #3
	bl	_optional_trait_methods::commands::parse_isize
	tbz	w0, #0, LBB2_20
	mov	w8, #4
	b	LBB2_23
LBB2_15:
	cmp	x21, #1
	b.ne	LBB2_19
	ldrb	w8, [x20]
	cmp	w8, #112
	b.ne	LBB2_24
	str	xzr, [x19]
	b	LBB2_25
LBB2_18:
	mov	w8, #2
	str	x8, [x19]
	mov	w8, #1
	strb	w8, [x19, #8]
	b	LBB2_25
LBB2_19:
	cmp	x21, #2
	b.lo	LBB2_24
LBB2_20:
	ldrh	w8, [x20]
	mov	w9, #8307
	cmp	w8, w9
	b.ne	LBB2_24
	add	x0, x20, #2
	mov	x1, x22
	bl	_optional_trait_methods::commands::parse_isize
	tbz	w0, #0, LBB2_24
	mov	w8, #1
LBB2_23:
	stp	x8, x1, [x19]
	b	LBB2_25
LBB2_24:
	mov	w8, #5
	str	x8, [x19]
LBB2_25:
	ldp	x29, x30, [sp, #48]
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5

	.p2align	2
_<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::basic::BasicTarget>>::handle:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	mov	x19, x8
	ldr	x8, [x1]
	cmp	x8, #0
	cset	w9, ne
	sub	x9, x8, x9
	cmp	x9, #1
	b.gt	LBB3_4
	cbnz	x9, LBB3_6
	tbz	w8, #0, LBB3_10
	ldr	x1, [x1, #8]
	bl	_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::set_state
	b	LBB3_9
LBB3_4:
	cmp	x9, #2
	b.ne	LBB3_7
Lloh6:
	adrp	x8, l_anon.f84fd1629729fc47583a430ee72ff167.8@PAGE
Lloh7:
	add	x8, x8, l_anon.f84fd1629729fc47583a430ee72ff167.8@PAGEOFF
	mov	w9, #13
	stp	x8, x9, [sp]
	mov	x8, sp
	; InlineAsm Start
	; InlineAsm End
	b	LBB3_8
LBB3_6:
Lloh8:
	adrp	x8, l_anon.f84fd1629729fc47583a430ee72ff167.7@PAGE
Lloh9:
	add	x8, x8, l_anon.f84fd1629729fc47583a430ee72ff167.7@PAGEOFF
	mov	w9, #16
	stp	x8, x9, [sp]
	mov	x8, sp
	; InlineAsm Start
	; InlineAsm End
	b	LBB3_8
LBB3_7:
Lloh10:
	adrp	x8, l_anon.f84fd1629729fc47583a430ee72ff167.9@PAGE
Lloh11:
	add	x8, x8, l_anon.f84fd1629729fc47583a430ee72ff167.9@PAGEOFF
	mov	w9, #21
	stp	x8, x9, [sp]
	mov	x8, sp
	; InlineAsm Start
	; InlineAsm End
LBB3_8:
Lloh12:
	adrp	x0, l_anon.f84fd1629729fc47583a430ee72ff167.6@PAGE
Lloh13:
	add	x0, x0, l_anon.f84fd1629729fc47583a430ee72ff167.6@PAGEOFF
	mov	w1, #16
	bl	_optional_trait_methods::print_macros::write_line
LBB3_9:
	str	xzr, [x19]
	ldp	x29, x30, [sp, #32]
	ldp	x20, x19, [sp, #16]
	add	sp, sp, #48
	ret
LBB3_10:
	bl	_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::get_state
	bl	_optional_trait_methods::print_macros::write_isize_line
	b	LBB3_9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh12, Lloh13

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
LBB4_1:
	cmp	x9, x0
	b.lo	LBB4_4
	mov	w0, #0
	mov	x1, x22
	mov	w2, #1024
	bl	_read
	cmp	x0, #1
	b.lt	LBB4_11
	mov	x9, #0
	str	x0, [x22, #1024]
	str	xzr, [x22, #1032]
LBB4_4:
	mov	x8, #0
	cmp	x0, x9
	b.lo	LBB4_12
	cmp	x0, #1024
	b.hi	LBB4_14
	cmp	x9, x0
	b.eq	LBB4_1
LBB4_7:
	ldrb	w8, [x22, x9]
	add	x9, x9, #1
	str	x9, [x22, #1032]
	cmp	w8, #10
	b.eq	LBB4_13
	cmp	x19, x21
	b.hs	LBB4_10
	strb	w8, [x20, x19]
	add	x19, x19, #1
LBB4_10:
	cmp	x0, x9
	b.eq	LBB4_1
	b	LBB4_7
LBB4_11:
	cmp	x19, x21
	csel	x8, xzr, x20, hi
	cmp	x19, #0
	csel	x19, x8, x19, eq
	csel	x8, xzr, x8, eq
	b	LBB4_14
LBB4_12:
	b	LBB4_14
LBB4_13:
	cmp	x19, x21
	csel	x8, xzr, x20, hi
LBB4_14:
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
Lloh14:
	adrp	x0, l_anon.f84fd1629729fc47583a430ee72ff167.10@PAGE
Lloh15:
	add	x0, x0, l_anon.f84fd1629729fc47583a430ee72ff167.10@PAGEOFF
	mov	w1, #1
	ldp	x29, x30, [sp], #16
	b	_optional_trait_methods::print_macros::write_all
	.loh AdrpAdd	Lloh14, Lloh15

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
LBB6_1:
	cmp	x8, #31
	b.hi	LBB6_8
	umulh	x13, x10, x11
	lsr	x13, x13, #3
	msub	w14, w13, w9, w10
	orr	w14, w14, #0x30
	strb	w14, [x12, x8]
	sub	x8, x8, #1
	cmp	x10, #10
	mov	x10, x13
	b.hs	LBB6_1
	tbnz	x0, #63, LBB6_5
	add	x8, x8, #1
	b	LBB6_7
LBB6_5:
	cmp	x8, #31
	b.hi	LBB6_10
	mov	x9, sp
	mov	w10, #45
	strb	w10, [x9, x8]
LBB6_7:
	mov	w9, #32
	sub	x1, x9, x8
	mov	x9, sp
	add	x0, x9, x8
	bl	_optional_trait_methods::print_macros::write_all
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	ret
LBB6_8:
Lloh16:
	adrp	x2, l_anon.f84fd1629729fc47583a430ee72ff167.12@PAGE
Lloh17:
	add	x2, x2, l_anon.f84fd1629729fc47583a430ee72ff167.12@PAGEOFF
LBB6_9:
	mov	x0, #-1
	mov	w1, #32
	bl	_core::panicking::panic_bounds_check
LBB6_10:
Lloh18:
	adrp	x2, l_anon.f84fd1629729fc47583a430ee72ff167.13@PAGE
Lloh19:
	add	x2, x2, l_anon.f84fd1629729fc47583a430ee72ff167.13@PAGEOFF
	b	LBB6_9
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh18, Lloh19

	.p2align	2
_optional_trait_methods::print_macros::write_all:
	stp	x20, x19, [sp, #-32]!
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	cbz	x1, LBB7_5
	mov	x19, x1
	mov	x20, x0
LBB7_2:
	mov	w0, #1
	mov	x1, x20
	mov	x2, x19
	bl	_write
	cmp	x0, #1
	b.lt	LBB7_5
	subs	x8, x19, x0
	b.lo	LBB7_6
	add	x20, x20, x0
	mov	x19, x8
	b.ne	LBB7_2
LBB7_5:
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	ret
LBB7_6:
Lloh20:
	adrp	x3, l_anon.f84fd1629729fc47583a430ee72ff167.14@PAGE
Lloh21:
	add	x3, x3, l_anon.f84fd1629729fc47583a430ee72ff167.14@PAGEOFF
	mov	x1, x19
	mov	x2, x19
	bl	_core::slice::index::slice_index_fail
	.loh AdrpAdd	Lloh20, Lloh21

	.p2align	2
_optional_trait_methods::commands::parse_isize:
	cbz	x1, LBB8_6
	mov	x8, x0
	mov	x9, x0
	ldrb	w10, [x9], #1
	cmp	w10, #45
	b.eq	LBB8_4
	cmp	w10, #43
	b.ne	LBB8_8
	mov	w10, #0
	b	LBB8_5
LBB8_4:
	mov	w10, #1
LBB8_5:
	mov	x8, x9
	sub	x1, x1, #1
	cbnz	x1, LBB8_9
LBB8_6:
	mov	x0, #0
LBB8_7:
	mov	x1, x9
	ret
LBB8_8:
	mov	w10, #0
LBB8_9:
	mov	x9, #0
	mov	w11, #10
	mov	w0, #1
LBB8_10:
	ldrb	w12, [x8], #1
	sub	w12, w12, #48
	cmp	w12, #10
	b.hs	LBB8_6
	smulh	x13, x9, x11
	add	x9, x9, x9, lsl #2
	lsl	x9, x9, #1
	cmp	x13, x9, asr #63
	b.ne	LBB8_6
	and	x12, x12, #0xff
	tbz	w10, #0, LBB8_14
	subs	x9, x9, x12
	b.vs	LBB8_6
	b	LBB8_15
LBB8_14:
	adds	x9, x9, x12
	b.vs	LBB8_6
LBB8_15:
	subs	x1, x1, #1
	b.eq	LBB8_7
	b	LBB8_10

	.globl	_<optional_trait_methods::line_reader::LineReader as core::default::Default>::default
	.p2align	2
_<optional_trait_methods::line_reader::LineReader as core::default::Default>::default:
	mov	x0, x8
	mov	w1, #1040
	b	_bzero

	.globl	_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::get_state
	.p2align	2
_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::get_state:
	ldr	x0, [x0]
	ret

	.globl	_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::set_state
	.p2align	2
_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::set_state:
	str	x1, [x0]
	mov	x0, #0
	ret

	.globl	_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::scale_factor
	.p2align	2
_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::scale_factor:
	mov	w9, #1
	stp	x9, xzr, [x8]
	ret

	.globl	_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::dec
	.p2align	2
_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::dec:
	mov	w9, #1
	stp	x9, xzr, [x8]
	ret

	.globl	_run_optional_trait_methods
	.p2align	2
_run_optional_trait_methods:
	stp	x20, x19, [sp, #-32]!
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	sub	sp, sp, #1232
	str	xzr, [sp]
	sub	x19, x29, #192
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
	sub	x1, x29, #192
	mov	w2, #128
	bl	_<optional_trait_methods::line_reader::LineReader>::read_line
	cbz	x0, LBB14_11
Lloh22:
	adrp	x19, l_anon.f84fd1629729fc47583a430ee72ff167.6@PAGE
Lloh23:
	add	x19, x19, l_anon.f84fd1629729fc47583a430ee72ff167.6@PAGEOFF
LBB14_2:
	cbz	x1, LBB14_6
	sub	x8, x29, #32
	bl	_<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::basic::BasicTarget>>::parse_command
	ldur	x8, [x29, #-32]
	cmp	x8, #5
	b.ne	LBB14_5
	mov	x0, x19
	mov	w1, #16
	bl	_optional_trait_methods::print_macros::write_line
	b	LBB14_6
LBB14_5:
	sub	x8, x29, #56
	add	x0, sp, #8
	sub	x1, x29, #32
	bl	_<optional_trait_methods::using_options::controller::TargetController<optional_trait_methods::using_options::targets::basic::BasicTarget>>::handle
	ldur	x8, [x29, #-56]
	cmp	x8, #1
	b.eq	LBB14_7
LBB14_6:
	add	x0, sp, #16
	sub	x1, x29, #192
	mov	w2, #128
	bl	_<optional_trait_methods::line_reader::LineReader>::read_line
	cbnz	x0, LBB14_2
	b	LBB14_11
LBB14_7:
	ldur	x0, [x29, #-48]
	cbz	x0, LBB14_9
	ldur	x1, [x29, #-40]
	b	LBB14_10
LBB14_9:
Lloh24:
	adrp	x0, l_anon.f84fd1629729fc47583a430ee72ff167.15@PAGE
Lloh25:
	add	x0, x0, l_anon.f84fd1629729fc47583a430ee72ff167.15@PAGEOFF
	mov	w1, #23
LBB14_10:
	bl	_optional_trait_methods::print_macros::write_line
	mov	w0, #1
LBB14_11:
	add	sp, sp, #1232
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	ret
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh24, Lloh25

	.section	__TEXT,__const
l_anon.f84fd1629729fc47583a430ee72ff167.0:
	.ascii	"Parse IncDec extension"

l_anon.f84fd1629729fc47583a430ee72ff167.1:
	.ascii	"Parse Mul extension"

l_anon.f84fd1629729fc47583a430ee72ff167.2:
	.ascii	"* "

l_anon.f84fd1629729fc47583a430ee72ff167.3:
	.ascii	"Parse ScaleFactor extension"

l_anon.f84fd1629729fc47583a430ee72ff167.4:
	.ascii	"*~ "

l_anon.f84fd1629729fc47583a430ee72ff167.5:
	.ascii	"s "

	.section	__TEXT,__literal16,16byte_literals
l_anon.f84fd1629729fc47583a430ee72ff167.6:
	.ascii	"Unsupported cmd!"

l_anon.f84fd1629729fc47583a430ee72ff167.7:
	.ascii	"IncDec extension"

	.section	__TEXT,__const
l_anon.f84fd1629729fc47583a430ee72ff167.8:
	.ascii	"Mul extension"

l_anon.f84fd1629729fc47583a430ee72ff167.9:
	.ascii	"ScaleFactor extension"

l_anon.f84fd1629729fc47583a430ee72ff167.10:
	.byte	10

	.section	__TEXT,__cstring,cstring_literals
l_anon.f84fd1629729fc47583a430ee72ff167.11:
	.asciz	"src/print_macros.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.f84fd1629729fc47583a430ee72ff167.12:
	.quad	l_anon.f84fd1629729fc47583a430ee72ff167.11
	.asciz	"\023\000\000\000\000\000\000\000\037\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.f84fd1629729fc47583a430ee72ff167.13:
	.quad	l_anon.f84fd1629729fc47583a430ee72ff167.11
	.asciz	"\023\000\000\000\000\000\000\000(\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.f84fd1629729fc47583a430ee72ff167.14:
	.quad	l_anon.f84fd1629729fc47583a430ee72ff167.11
	.asciz	"\023\000\000\000\000\000\000\000\t\000\000\000\027\000\000"

	.section	__TEXT,__const
l_anon.f84fd1629729fc47583a430ee72ff167.15:
	.ascii	"Invalid implementation!"

	.globl	_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::inc
_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::inc = _<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::dec
	.globl	_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::mul
_<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::mul = _<optional_trait_methods::using_options::targets::basic::BasicTarget as optional_trait_methods::using_options::target::Target>::scale_factor
.subsections_via_symbols
