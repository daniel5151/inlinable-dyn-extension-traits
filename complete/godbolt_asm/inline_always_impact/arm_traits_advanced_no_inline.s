<&T as core::fmt::Debug>::fmt:
        mov     r2, r1
        ldr     r1, [r0]
        ldm     r1, {r0, r1}
        b       _ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h2996e8700615786fE

core::ptr::drop_in_place:
        bx      lr

<example::using_traits::controller::Error<E> as core::fmt::Debug>::fmt:
        push    {r4, r5, r11, lr}
        sub     sp, sp, #16
        ldr     r2, .LCPI2_0
        mov     r5, sp
        mov     r4, r0
        mov     r0, r5
.LPC2_0:
        add     r2, pc, r2
        mov     r3, #6
        bl      core::fmt::Formatter::debug_tuple
        str     r4, [sp, #12]
        add     r1, sp, #12
        ldr     r2, .LCPI2_1
        mov     r0, r5
.LPC2_1:
        add     r2, pc, r2
        bl      core::fmt::builders::DebugTuple::field
        mov     r0, r5
        bl      core::fmt::builders::DebugTuple::finish
        add     sp, sp, #16
        pop     {r4, r5, r11, pc}
.LCPI2_0:
        .long   .L__unnamed_1-(.LPC2_0+8)
.LCPI2_1:
        .long   .L__unnamed_2-(.LPC2_1+8)

example::using_traits::controller::TargetController<T>::run:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r4, .LCPI3_0
        mov     r5, r0
        ldr     r6, .LCPI3_1
        mov     r7, #0
        ldr     r8, .LCPI3_2
.LPC3_0:
        add     r4, pc, r4
.LPC3_1:
        add     r6, pc, r6
.LPC3_2:
        add     r8, pc, r8
        b       .LBB3_4
.LBB3_1:
        ldr     r0, [r5]
        sub     r0, r0, #1
.LBB3_2:
        str     r0, [r5]
.LBB3_3:
        sub     r7, r7, #8
        cmn     r7, #136
        beq     .LBB3_11
.LBB3_4:
        ldr     r0, [r4, -r7]
        adr     r1, .LJTI3_0
        ldr     r0, [r1, r0, lsl #2]
        add     pc, r1, r0
.LJTI3_0:
        .long   .LBB3_6-.LJTI3_0
        .long   .LBB3_7-.LJTI3_0
        .long   .LBB3_8-.LJTI3_0
        .long   .LBB3_1-.LJTI3_0
        .long   .LBB3_3-.LJTI3_0
        .long   .LBB3_9-.LJTI3_0
.LBB3_6:
        ldr     r1, [r5]
        mov     r0, r6
        bl      printf
        b       .LBB3_3
.LBB3_7:
        sub     r0, r4, r7
        mov     r1, #0
        mov     r2, #0
        ldr     r0, [r0, #4]
        str     r0, [r5]
        mov     r0, r6
        bl      printf
        b       .LBB3_3
.LBB3_8:
        ldr     r0, [r5]
        add     r0, r0, #1
        b       .LBB3_2
.LBB3_9:
        sub     r0, r4, r7
        ldr     r0, [r0, #4]
        cmp     r0, #7
        beq     .LBB3_12
        ldr     r1, [r5]
        mul     r0, r1, r0
        b       .LBB3_2
.LBB3_11:
        mov     r0, #0
        mov     r1, #0
        pop     {r4, r5, r6, r7, r8, pc}
.LBB3_12:
        mov     r1, #28
        mov     r0, r8
        pop     {r4, r5, r6, r7, r8, pc}
.LCPI3_0:
        .long   .L__unnamed_3-(.LPC3_0+8)
.LCPI3_1:
        .long   .L__unnamed_4-(.LPC3_1+8)
.LCPI3_2:
        .long   .L__unnamed_5-(.LPC3_2+8)

<example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::base:
        ldr     r1, .LCPI4_0
.LPC4_0:
        add     r1, pc, r1
        bx      lr
.LCPI4_0:
        .long   .L__unnamed_6-(.LPC4_0+8)

<example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::ext_incdec:
        ldr     r1, .LCPI5_0
.LPC5_0:
        add     r1, pc, r1
        bx      lr
.LCPI5_0:
        .long   .L__unnamed_7-(.LPC5_0+8)

<example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::ext_mul:
        ldr     r1, .LCPI6_0
.LPC6_0:
        add     r1, pc, r1
        bx      lr
.LCPI6_0:
        .long   .L__unnamed_8-(.LPC6_0+8)

<example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::TargetBase>::set_state:
        str     r1, [r0]
        mov     r0, #0
        mov     r1, #0
        bx      lr

<example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::TargetExtIncDec>::inc:
        ldr     r1, [r0]
        add     r1, r1, #1
        str     r1, [r0]
        mov     r0, #0
        mov     r1, #0
        bx      lr

<example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::TargetExtIncDec>::dec:
        ldr     r1, [r0]
        sub     r1, r1, #1
        str     r1, [r0]
        mov     r0, #0
        mov     r1, #0
        bx      lr

<example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::TargetExtMul>::mul:
        cmp     r1, #7
        ldreq   r0, .LCPI10_0
        moveq   r1, #28
.LPC10_0:
        addeq   r0, pc, r0
        bxeq    lr
        ldr     r2, [r0]
        mul     r1, r2, r1
        str     r1, [r0]
        mov     r0, #0
        mov     r1, #0
        bx      lr
.LCPI10_0:
        .long   .L__unnamed_5-(.LPC10_0+8)

<example::using_traits::targets::basic::BasicTarget as example::using_traits::target::TargetBase>::get_state:
        ldr     r0, [r0]
        bx      lr

<example::using_traits::targets::basic::BasicTarget as example::using_traits::target::TargetBase>::set_state:
        str     r1, [r0]
        mov     r0, #0
        bx      lr

example::main:
        push    {r4, lr}
        sub     sp, sp, #48
        add     r0, sp, #4
        mov     r4, #0
        str     r4, [sp, #4]
        bl      example::using_traits::controller::TargetController<T>::run
        cmp     r0, #0
        beq     .LBB13_2
        str     r0, [sp, #8]
        mov     r0, #1
        str     r0, [sp, #36]
        add     r0, sp, #40
        str     r0, [sp, #32]
        mov     r0, #2
        str     r1, [sp, #12]
        str     r4, [sp, #28]
        str     r4, [sp, #24]
        str     r0, [sp, #20]
        ldr     r0, .LCPI13_0
.LPC13_0:
        add     r0, pc, r0
        str     r0, [sp, #16]
        ldr     r0, .LCPI13_1
.LPC13_1:
        add     r0, pc, r0
        str     r0, [sp, #44]
        add     r0, sp, #8
        str     r0, [sp, #40]
        add     r0, sp, #16
        bl      std::io::stdio::_eprint
.LBB13_2:
        add     sp, sp, #48
        pop     {r4, pc}
.LCPI13_0:
        .long   .L__unnamed_9-(.LPC13_0+8)
.LCPI13_1:
        .long   <example::using_traits::controller::Error<E> as core::fmt::Debug>::fmt-(.LPC13_1+8)

.L__unnamed_1:
        .ascii  "Target"

.L__unnamed_2:
        .long   core::ptr::drop_in_place
        .long   4
        .long   4
        .long   <&T as core::fmt::Debug>::fmt

.L__unnamed_10:
        .byte   10

.L__unnamed_4:
        .asciz  "%d\n"

.L__unnamed_6:
        .long   core::ptr::drop_in_place
        .long   4
        .long   4
        .long   <example::using_traits::targets::basic::BasicTarget as example::using_traits::target::TargetBase>::get_state
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::TargetBase>::set_state
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::base
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::ext_incdec
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::ext_mul

.L__unnamed_7:
        .long   core::ptr::drop_in_place
        .long   4
        .long   4
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::TargetExtIncDec>::inc
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::TargetExtIncDec>::dec
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::base
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::ext_incdec
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::ext_mul

.L__unnamed_8:
        .long   core::ptr::drop_in_place
        .long   4
        .long   4
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::TargetExtMul>::mul
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::base
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::ext_incdec
        .long   <example::using_traits::targets::advanced::AdvancedTarget as example::using_traits::target::Target>::ext_mul

.L__unnamed_5:
        .ascii  "multiplying by 7 is unlucky!"

.L__unnamed_3:
        .asciz  "\000\000\000\000\000\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.L__unnamed_11:
        .ascii  "Error: "

.L__unnamed_9:
        .long   .L__unnamed_11
        .asciz  "\007\000\000"
        .long   .L__unnamed_10
        .asciz  "\001\000\000"
