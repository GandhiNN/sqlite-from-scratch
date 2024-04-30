	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 0
	.globl	_new_input_buffer               ; -- Begin function new_input_buffer
	.p2align	2
_new_input_buffer:                      ; @new_input_buffer
	.cfi_startproc
; %bb.0:
	mov	w0, #1
	mov	w1, #24
	b	_calloc
	.cfi_endproc
                                        ; -- End function
	.globl	_print_row                      ; -- Begin function print_row
	.p2align	2
_print_row:                             ; @print_row
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	add	x8, x0, #4
	ldr	w9, [x0], #36
	stp	x8, x0, [sp, #8]
	str	x9, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_serialize_row                  ; -- Begin function serialize_row
	.p2align	2
_serialize_row:                         ; @serialize_row
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0]
	str	w8, [x1]
	ldur	q0, [x0, #4]
	ldur	q1, [x0, #20]
	stur	q1, [x1, #20]
	stur	q0, [x1, #4]
	add	x8, x1, #36
	add	x9, x0, #36
	ldur	q0, [x0, #116]
	ldur	q1, [x0, #132]
	ldur	q2, [x0, #148]
	ldur	q3, [x0, #100]
	stur	q3, [x1, #100]
	stur	q2, [x1, #148]
	stur	q1, [x1, #132]
	stur	q0, [x1, #116]
	ldur	q0, [x0, #180]
	ldur	q1, [x0, #196]
	ldur	q2, [x0, #212]
	ldur	q3, [x0, #164]
	stur	q3, [x1, #164]
	stur	q2, [x1, #212]
	stur	q1, [x1, #196]
	stur	q0, [x1, #180]
	ldur	q0, [x0, #244]
	ldr	q1, [x9, #224]
	ldur	q2, [x9, #239]
	ldur	q3, [x0, #228]
	stur	q3, [x1, #228]
	stur	q2, [x8, #239]
	str	q1, [x8, #224]
	stur	q0, [x1, #244]
	ldur	q0, [x0, #36]
	ldur	q1, [x0, #52]
	ldur	q2, [x0, #68]
	ldur	q3, [x0, #84]
	stur	q3, [x1, #84]
	stur	q2, [x1, #68]
	stur	q1, [x1, #52]
	stur	q0, [x1, #36]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_deserialize_row                ; -- Begin function deserialize_row
	.p2align	2
_deserialize_row:                       ; @deserialize_row
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0]
	str	w8, [x1]
	ldur	q0, [x0, #4]
	ldur	q1, [x0, #20]
	stur	q1, [x1, #20]
	stur	q0, [x1, #4]
	add	x8, x1, #36
	add	x9, x0, #36
	ldur	q0, [x0, #116]
	ldur	q1, [x0, #132]
	ldur	q2, [x0, #148]
	ldur	q3, [x0, #100]
	stur	q3, [x1, #100]
	stur	q2, [x1, #148]
	stur	q1, [x1, #132]
	stur	q0, [x1, #116]
	ldur	q0, [x0, #180]
	ldur	q1, [x0, #196]
	ldur	q2, [x0, #212]
	ldur	q3, [x0, #164]
	stur	q3, [x1, #164]
	stur	q2, [x1, #212]
	stur	q1, [x1, #196]
	stur	q0, [x1, #180]
	ldur	q0, [x0, #244]
	ldr	q1, [x9, #224]
	ldur	q2, [x9, #239]
	ldur	q3, [x0, #228]
	stur	q3, [x1, #228]
	stur	q2, [x8, #239]
	str	q1, [x8, #224]
	stur	q0, [x1, #244]
	ldur	q0, [x0, #36]
	ldur	q1, [x0, #52]
	ldur	q2, [x0, #68]
	ldur	q3, [x0, #84]
	stur	q3, [x1, #84]
	stur	q2, [x1, #68]
	stur	q1, [x1, #52]
	stur	q0, [x1, #36]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_row_slot                       ; -- Begin function row_slot
	.p2align	2
_row_slot:                              ; @row_slot
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x1
	lsr	w8, w1, #1
	mov	w9, #9363
	movk	w9, #37449, lsl #16
	umull	x8, w8, w9
	lsr	x20, x8, #34
	add	x21, x0, x20, lsl #3
	ldr	x0, [x21, #8]
	cbnz	x0, LBB4_2
; %bb.1:
	mov	w0, #4096
	bl	_malloc
	str	x0, [x21, #8]
LBB4_2:
	mov	w8, #14
	msub	w8, w20, w8, w19
	mov	w9, #291
	mul	w8, w8, w9
	add	x0, x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_new_table                      ; -- Begin function new_table
	.p2align	2
_new_table:                             ; @new_table
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w0, #808
	bl	_malloc
	mov	x19, x0
	str	wzr, [x0], #8
	mov	w1, #800
	bl	_bzero
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_free_table                     ; -- Begin function free_table
	.p2align	2
_free_table:                            ; @free_table
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x0, [x0, #8]
	cbz	x0, LBB6_3
; %bb.1:                                ; %.lr.ph.preheader
	add	x20, x19, #16
LBB6_2:                                 ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	bl	_free
	ldr	x0, [x20], #8
	cbnz	x0, LBB6_2
LBB6_3:                                 ; %._crit_edge
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_free
	.cfi_endproc
                                        ; -- End function
	.globl	_close_input_buffer             ; -- Begin function close_input_buffer
	.p2align	2
_close_input_buffer:                    ; @close_input_buffer
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x0, [x0]
	bl	_free
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_free
	.cfi_endproc
                                        ; -- End function
	.globl	_prepare_statement              ; -- Begin function prepare_statement
	.p2align	2
_prepare_statement:                     ; @prepare_statement
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	ldr	x20, [x0]
Lloh2:
	adrp	x1, l_.str.1@PAGE
Lloh3:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, x20
	mov	w2, #6
	bl	_strncmp
	cbz	w0, LBB8_3
; %bb.1:
Lloh4:
	adrp	x1, l_.str.3@PAGE
Lloh5:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x0, x20
	bl	_strcmp
	cbz	w0, LBB8_4
; %bb.2:
	mov	w0, #2
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB8_3:
	mov	x8, x19
	str	wzr, [x8], #8
	add	x9, x19, #4
	add	x10, x19, #40
	stp	x8, x10, [sp, #8]
	str	x9, [sp]
Lloh6:
	adrp	x1, l_.str.2@PAGE
Lloh7:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x0, x20
	bl	_sscanf
	cmp	w0, #3
	cset	w0, lt
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB8_4:
	mov	w8, #1
	str	w8, [x19]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.globl	_execute_insert                 ; -- Begin function execute_insert
	.p2align	2
_execute_insert:                        ; @execute_insert
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	ldr	w21, [x1]
	cmp	w21, #1399
	b.ls	LBB9_2
; %bb.1:
	mov	w0, #1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB9_2:
	mov	x19, x1
	mov	x20, x0
	ubfx	w8, w21, #1, #15
	mov	w9, #18725
	mul	w8, w8, w9
	lsr	w22, w8, #17
	add	x23, x1, w22, uxtw #3
	ldr	x8, [x23, #8]
	cbnz	x8, LBB9_4
; %bb.3:
	mov	w0, #4096
	bl	_malloc
	mov	x8, x0
	str	x0, [x23, #8]
LBB9_4:                                 ; %row_slot.exit
	mov	w0, #0
	mov	w9, #14
	msub	w9, w22, w9, w21
	and	x9, x9, #0xffff
	mov	w10, #291
	madd	x8, x9, x10, x8
	ldr	w9, [x20, #4]
	str	w9, [x8]
	ldur	q0, [x20, #8]
	ldur	q1, [x20, #24]
	stur	q1, [x8, #20]
	stur	q0, [x8, #4]
	add	x9, x8, #36
	add	x10, x20, #40
	ldur	q0, [x20, #120]
	ldur	q1, [x20, #136]
	ldur	q2, [x20, #152]
	ldur	q3, [x20, #104]
	stur	q3, [x8, #100]
	stur	q2, [x8, #148]
	stur	q1, [x8, #132]
	stur	q0, [x8, #116]
	ldur	q0, [x20, #184]
	ldur	q1, [x20, #200]
	ldur	q2, [x20, #216]
	ldur	q3, [x20, #168]
	stur	q3, [x8, #164]
	stur	q2, [x8, #212]
	stur	q1, [x8, #196]
	stur	q0, [x8, #180]
	ldur	q0, [x20, #248]
	ldr	q1, [x10, #224]
	ldur	q2, [x10, #239]
	ldur	q3, [x20, #232]
	stur	q3, [x8, #228]
	stur	q2, [x9, #239]
	str	q1, [x9, #224]
	stur	q0, [x8, #244]
	ldur	q0, [x20, #40]
	ldur	q1, [x20, #56]
	ldur	q2, [x20, #72]
	ldur	q3, [x20, #88]
	stur	q3, [x8, #84]
	stur	q2, [x8, #68]
	stur	q1, [x8, #52]
	stur	q0, [x8, #36]
	ldr	w8, [x19]
	add	w8, w8, #1
	str	w8, [x19]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_execute_select                 ; -- Begin function execute_select
	.p2align	2
_execute_select:                        ; @execute_select
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #432
	.cfi_def_cfa_offset 432
	stp	x28, x27, [sp, #336]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #352]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #368]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #384]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #400]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #416]            ; 16-byte Folded Spill
	add	x29, sp, #416
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
Lloh8:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh9:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh10:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	ldr	w8, [x1]
	cbz	w8, LBB10_5
; %bb.1:                                ; %.lr.ph
	mov	x19, x1
	mov	w21, #0
	mov	w22, #0
	add	x8, sp, #24
	orr	x23, x8, #0x4
	add	x24, x8, #36
	mov	w25, #9363
	movk	w25, #37449, lsl #16
	mov	w26, #4074
Lloh11:
	adrp	x20, l_.str@PAGE
Lloh12:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB10_3
LBB10_2:                                ; %row_slot.exit
                                        ;   in Loop: Header=BB10_3 Depth=1
	msub	w8, w27, w26, w21
	add	x8, x0, w8, uxtw
	ldr	w9, [x8]
	str	w9, [sp, #24]
	ldur	q0, [x8, #4]
	ldur	q1, [x8, #20]
	stp	q0, q1, [x23]
	add	x10, x8, #36
	ldur	q0, [x8, #116]
	ldur	q1, [x8, #132]
	ldur	q2, [x8, #148]
	ldur	q3, [x8, #100]
	stp	q1, q2, [x24, #96]
	stp	q3, q0, [x24, #64]
	ldur	q0, [x8, #180]
	ldur	q1, [x8, #196]
	ldur	q2, [x8, #212]
	ldur	q3, [x8, #164]
	stp	q1, q2, [x24, #160]
	stp	q3, q0, [x24, #128]
	ldur	q0, [x8, #244]
	ldr	q1, [x10, #224]
	ldur	q2, [x10, #239]
	ldur	q3, [x8, #228]
	stur	q2, [x24, #239]
	stp	q0, q1, [x24, #208]
	str	q3, [x24, #192]
	ldur	q0, [x8, #36]
	ldur	q1, [x8, #52]
	ldur	q2, [x8, #68]
	ldur	q3, [x8, #84]
	stp	q2, q3, [x24, #32]
	stp	q0, q1, [x24]
	stp	x23, x24, [sp, #8]
	str	x9, [sp]
	mov	x0, x20
	bl	_printf
	add	w22, w22, #1
	ldr	w8, [x19]
	add	w21, w21, #291
	cmp	w22, w8
	b.hs	LBB10_5
LBB10_3:                                ; =>This Inner Loop Header: Depth=1
	lsr	w8, w22, #1
	umull	x8, w8, w25
	lsr	x27, x8, #34
	add	x28, x19, x27, lsl #3
	ldr	x0, [x28, #8]
	cbnz	x0, LBB10_2
; %bb.4:                                ;   in Loop: Header=BB10_3 Depth=1
	mov	w0, #4096
	bl	_malloc
	str	x0, [x28, #8]
	b	LBB10_2
LBB10_5:                                ; %._crit_edge
	ldur	x8, [x29, #-96]
Lloh13:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh14:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh15:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB10_7
; %bb.6:                                ; %._crit_edge
	mov	w0, #0
	ldp	x29, x30, [sp, #416]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #400]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #384]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #368]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #352]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #336]            ; 16-byte Folded Reload
	add	sp, sp, #432
	ret
LBB10_7:                                ; %._crit_edge
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh8, Lloh9, Lloh10
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.globl	_execute_statement              ; -- Begin function execute_statement
	.p2align	2
_execute_statement:                     ; @execute_statement
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #432
	.cfi_def_cfa_offset 432
	stp	x28, x27, [sp, #336]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #352]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #368]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #384]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #400]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #416]            ; 16-byte Folded Spill
	add	x29, sp, #416
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x1
Lloh16:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh17:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh18:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	ldr	w8, [x0]
	cmp	w8, #1
	b.eq	LBB11_4
; %bb.1:
	mov	x20, x0
                                        ; implicit-def: $w0
	cbnz	w8, LBB11_10
; %bb.2:
	ldr	w21, [x19]
	cmp	w21, #1399
	b.ls	LBB11_12
; %bb.3:
	mov	w0, #1
	ldur	x8, [x29, #-96]
Lloh19:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh20:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh21:
	ldr	x9, [x9]
	cmp	x9, x8
	b.eq	LBB11_11
	b	LBB11_15
LBB11_4:
	ldr	w8, [x19]
	cbz	w8, LBB11_9
; %bb.5:                                ; %.lr.ph.i
	mov	w21, #0
	mov	w22, #0
	add	x8, sp, #24
	orr	x23, x8, #0x4
	add	x24, x8, #36
	mov	w25, #9363
	movk	w25, #37449, lsl #16
	mov	w26, #4074
Lloh22:
	adrp	x20, l_.str@PAGE
Lloh23:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB11_7
LBB11_6:                                ; %row_slot.exit.i6
                                        ;   in Loop: Header=BB11_7 Depth=1
	msub	w8, w27, w26, w21
	add	x8, x0, w8, uxtw
	ldr	w9, [x8]
	str	w9, [sp, #24]
	ldur	q0, [x8, #4]
	ldur	q1, [x8, #20]
	stp	q0, q1, [x23]
	add	x10, x8, #36
	ldur	q0, [x8, #116]
	ldur	q1, [x8, #132]
	ldur	q2, [x8, #148]
	ldur	q3, [x8, #100]
	stp	q1, q2, [x24, #96]
	stp	q3, q0, [x24, #64]
	ldur	q0, [x8, #180]
	ldur	q1, [x8, #196]
	ldur	q2, [x8, #212]
	ldur	q3, [x8, #164]
	stp	q1, q2, [x24, #160]
	stp	q3, q0, [x24, #128]
	ldur	q0, [x8, #244]
	ldr	q1, [x10, #224]
	ldur	q2, [x10, #239]
	ldur	q3, [x8, #228]
	stur	q2, [x24, #239]
	stp	q0, q1, [x24, #208]
	str	q3, [x24, #192]
	ldur	q0, [x8, #36]
	ldur	q1, [x8, #52]
	ldur	q2, [x8, #68]
	ldur	q3, [x8, #84]
	stp	q2, q3, [x24, #32]
	stp	q0, q1, [x24]
	stp	x23, x24, [sp, #8]
	str	x9, [sp]
	mov	x0, x20
	bl	_printf
	add	w22, w22, #1
	ldr	w8, [x19]
	add	w21, w21, #291
	cmp	w22, w8
	b.hs	LBB11_9
LBB11_7:                                ; =>This Inner Loop Header: Depth=1
	lsr	w8, w22, #1
	umull	x8, w8, w25
	lsr	x27, x8, #34
	add	x28, x19, x27, lsl #3
	ldr	x0, [x28, #8]
	cbnz	x0, LBB11_6
; %bb.8:                                ;   in Loop: Header=BB11_7 Depth=1
	mov	w0, #4096
	bl	_malloc
	str	x0, [x28, #8]
	b	LBB11_6
LBB11_9:                                ; %execute_select.exit
	mov	w0, #0
LBB11_10:                               ; %execute_insert.exit
	ldur	x8, [x29, #-96]
Lloh24:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh25:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh26:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB11_15
LBB11_11:                               ; %execute_insert.exit
	ldp	x29, x30, [sp, #416]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #400]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #384]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #368]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #352]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #336]            ; 16-byte Folded Reload
	add	sp, sp, #432
	ret
LBB11_12:
	ubfx	w8, w21, #1, #15
	mov	w9, #18725
	mul	w8, w8, w9
	lsr	w22, w8, #17
	add	x23, x19, w22, uxtw #3
	ldr	x8, [x23, #8]
	cbnz	x8, LBB11_14
; %bb.13:
	mov	w0, #4096
	bl	_malloc
	mov	x8, x0
	str	x0, [x23, #8]
LBB11_14:                               ; %row_slot.exit.i
	mov	w0, #0
	mov	w9, #14
	msub	w9, w22, w9, w21
	and	x9, x9, #0xffff
	mov	w10, #291
	madd	x8, x9, x10, x8
	ldr	w9, [x20, #4]
	str	w9, [x8]
	ldur	q0, [x20, #8]
	ldur	q1, [x20, #24]
	stur	q1, [x8, #20]
	stur	q0, [x8, #4]
	add	x9, x8, #36
	add	x10, x20, #40
	ldur	q0, [x20, #120]
	ldur	q1, [x20, #136]
	ldur	q2, [x20, #152]
	ldur	q3, [x20, #104]
	stur	q3, [x8, #100]
	stur	q2, [x8, #148]
	stur	q1, [x8, #132]
	stur	q0, [x8, #116]
	ldur	q0, [x20, #184]
	ldur	q1, [x20, #200]
	ldur	q2, [x20, #216]
	ldur	q3, [x20, #168]
	stur	q3, [x8, #164]
	stur	q2, [x8, #212]
	stur	q1, [x8, #196]
	stur	q0, [x8, #180]
	ldur	q0, [x20, #248]
	ldr	q1, [x10, #224]
	ldur	q2, [x10, #239]
	ldur	q3, [x20, #232]
	stur	q3, [x8, #228]
	stur	q2, [x9, #239]
	str	q1, [x9, #224]
	stur	q0, [x8, #244]
	ldur	q0, [x20, #40]
	ldur	q1, [x20, #56]
	ldur	q2, [x20, #72]
	ldur	q3, [x20, #88]
	stur	q3, [x8, #84]
	stur	q2, [x8, #68]
	stur	q1, [x8, #52]
	stur	q0, [x8, #36]
	ldr	w8, [x19]
	add	w8, w8, #1
	str	w8, [x19]
	ldur	x8, [x29, #-96]
Lloh27:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh28:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh29:
	ldr	x9, [x9]
	cmp	x9, x8
	b.eq	LBB11_11
LBB11_15:                               ; %execute_insert.exit
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh16, Lloh17, Lloh18
	.loh AdrpLdrGotLdr	Lloh19, Lloh20, Lloh21
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpLdrGotLdr	Lloh24, Lloh25, Lloh26
	.loh AdrpLdrGotLdr	Lloh27, Lloh28, Lloh29
	.cfi_endproc
                                        ; -- End function
	.globl	_do_meta_command                ; -- Begin function do_meta_command
	.p2align	2
_do_meta_command:                       ; @do_meta_command
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	x20, x0
	ldr	x0, [x0]
Lloh30:
	adrp	x1, l_.str.4@PAGE
Lloh31:
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB12_2
; %bb.1:
	mov	w0, #1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB12_2:
	mov	x0, x20
	bl	_close_input_buffer
	mov	x0, x19
	bl	_free_table
	mov	w0, #0
	bl	_exit
	.loh AdrpAdd	Lloh30, Lloh31
	.cfi_endproc
                                        ; -- End function
	.globl	_print_prompt                   ; -- Begin function print_prompt
	.p2align	2
_print_prompt:                          ; @print_prompt
	.cfi_startproc
; %bb.0:
Lloh32:
	adrp	x0, l_.str.5@PAGE
Lloh33:
	add	x0, x0, l_.str.5@PAGEOFF
	b	_printf
	.loh AdrpAdd	Lloh32, Lloh33
	.cfi_endproc
                                        ; -- End function
	.globl	_read_input                     ; -- Begin function read_input
	.p2align	2
_read_input:                            ; @read_input
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	add	x1, x0, #8
Lloh34:
	adrp	x8, ___stdinp@GOTPAGE
Lloh35:
	ldr	x8, [x8, ___stdinp@GOTPAGEOFF]
Lloh36:
	ldr	x2, [x8]
	bl	_getline
	cmp	x0, #0
	b.le	LBB14_2
; %bb.1:
	sub	x8, x0, #1
	str	x8, [x19, #16]
	ldr	x8, [x19]
	add	x8, x8, x0
	sturb	wzr, [x8, #-1]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB14_2:
Lloh37:
	adrp	x0, l_str@PAGE
Lloh38:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	mov	w0, #1
	bl	_exit
	.loh AdrpLdrGotLdr	Lloh34, Lloh35, Lloh36
	.loh AdrpAdd	Lloh37, Lloh38
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	sub	sp, sp, #672
	mov	w0, #808
	bl	_malloc
	mov	x20, x0
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	str	wzr, [x20], #8
	mov	x0, x20
	mov	w1, #800
	bl	_bzero
	mov	w0, #1
	mov	w1, #24
	bl	_calloc
	mov	x21, x0
Lloh39:
	adrp	x0, l_.str.5@PAGE
Lloh40:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	add	x22, x21, #8
Lloh41:
	adrp	x23, ___stdinp@GOTPAGE
Lloh42:
	ldr	x23, [x23, ___stdinp@GOTPAGEOFF]
	ldr	x2, [x23]
	mov	x0, x21
	mov	x1, x22
	bl	_getline
	cmp	x0, #1
	b.ge	LBB15_2
LBB15_1:                                ; %._crit_edge
Lloh43:
	adrp	x0, l_str@PAGE
Lloh44:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	mov	w0, #1
	bl	_exit
LBB15_2:                                ; %read_input.exit.lr.ph
	str	wzr, [sp, #36]                  ; 4-byte Folded Spill
	mov	w25, #0
	add	x8, sp, #72
	orr	x10, x8, #0x4
	add	x9, x8, #8
	str	x9, [sp, #64]                   ; 8-byte Folded Spill
	add	x8, x8, #40
	stp	x10, x8, [sp, #48]              ; 16-byte Folded Spill
	add	x8, sp, #368
	orr	x24, x8, #0x4
	add	x26, x8, #36
	mov	w28, #4074
Lloh45:
	adrp	x19, l_.str@PAGE
Lloh46:
	add	x19, x19, l_.str@PAGEOFF
	str	x22, [sp, #40]                  ; 8-byte Folded Spill
	b	LBB15_6
LBB15_3:                                ; %prepare_statement.exit.thread11
                                        ;   in Loop: Header=BB15_6 Depth=1
	str	x27, [sp]
Lloh47:
	adrp	x0, l_.str.9@PAGE
Lloh48:
	add	x0, x0, l_.str.9@PAGEOFF
LBB15_4:                                ; %.backedge
                                        ;   in Loop: Header=BB15_6 Depth=1
	bl	_printf
LBB15_5:                                ; %.backedge
                                        ;   in Loop: Header=BB15_6 Depth=1
Lloh49:
	adrp	x0, l_.str.5@PAGE
Lloh50:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	ldr	x2, [x23]
	mov	x0, x21
	mov	x1, x22
	bl	_getline
	cmp	x0, #1
	b.lt	LBB15_1
LBB15_6:                                ; %read_input.exit
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB15_21 Depth 2
	sub	x8, x0, #1
	str	x8, [x21, #16]
	ldr	x8, [x21]
	add	x8, x8, x0
	sturb	wzr, [x8, #-1]
	ldr	x27, [x21]
	ldrb	w8, [x27]
	mov	x0, x27
	cmp	w8, #46
	b.ne	LBB15_9
; %bb.7:                                ;   in Loop: Header=BB15_6 Depth=1
Lloh51:
	adrp	x1, l_.str.4@PAGE
Lloh52:
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB15_27
; %bb.8:                                ; %do_meta_command.exit
                                        ;   in Loop: Header=BB15_6 Depth=1
	str	x27, [sp]
Lloh53:
	adrp	x0, l_.str.7@PAGE
Lloh54:
	add	x0, x0, l_.str.7@PAGEOFF
	b	LBB15_4
LBB15_9:                                ;   in Loop: Header=BB15_6 Depth=1
Lloh55:
	adrp	x1, l_.str.1@PAGE
Lloh56:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #6
	bl	_strncmp
	cbz	w0, LBB15_12
; %bb.10:                               ;   in Loop: Header=BB15_6 Depth=1
	mov	x0, x27
Lloh57:
	adrp	x1, l_.str.3@PAGE
Lloh58:
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB15_3
; %bb.11:                               ; %.thread
                                        ;   in Loop: Header=BB15_6 Depth=1
	mov	w8, #1
	str	w8, [sp, #72]
	b	LBB15_18
LBB15_12:                               ; %prepare_statement.exit
                                        ;   in Loop: Header=BB15_6 Depth=1
	str	wzr, [sp, #72]
	ldp	x9, x8, [sp, #56]               ; 16-byte Folded Reload
	stp	x8, x9, [sp, #8]
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp]
	mov	x0, x27
Lloh59:
	adrp	x1, l_.str.2@PAGE
Lloh60:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_sscanf
	cmp	w0, #2
	b.gt	LBB15_14
; %bb.13:                               ;   in Loop: Header=BB15_6 Depth=1
Lloh61:
	adrp	x0, l_str.1@PAGE
Lloh62:
	add	x0, x0, l_str.1@PAGEOFF
	bl	_puts
	b	LBB15_5
LBB15_14:                               ;   in Loop: Header=BB15_6 Depth=1
	ldr	w8, [sp, #72]
	cmp	w8, #1
	b.eq	LBB15_18
; %bb.15:                               ;   in Loop: Header=BB15_6 Depth=1
	cbnz	w8, LBB15_17
; %bb.16:                               ;   in Loop: Header=BB15_6 Depth=1
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	mov	x25, x8
	cmp	w8, #1399
	b.ls	LBB15_23
LBB15_17:                               ; %execute_statement.exit
                                        ;   in Loop: Header=BB15_6 Depth=1
Lloh63:
	adrp	x0, l_str.2@PAGE
Lloh64:
	add	x0, x0, l_str.2@PAGEOFF
	bl	_puts
	b	LBB15_5
LBB15_18:                               ;   in Loop: Header=BB15_6 Depth=1
	cbz	w25, LBB15_26
; %bb.19:                               ; %.lr.ph.i.i.preheader
                                        ;   in Loop: Header=BB15_6 Depth=1
	mov	w27, #0
	mov	w22, #0
	b	LBB15_21
LBB15_20:                               ; %row_slot.exit.i6.i
                                        ;   in Loop: Header=BB15_21 Depth=2
	msub	w8, w23, w28, w27
	add	x8, x0, w8, uxtw
	ldr	w9, [x8]
	str	w9, [sp, #368]
	ldur	q0, [x8, #4]
	ldur	q1, [x8, #20]
	stp	q0, q1, [x24]
	add	x10, x8, #36
	ldur	q0, [x8, #116]
	ldur	q1, [x8, #132]
	ldur	q2, [x8, #148]
	ldur	q3, [x8, #100]
	stp	q1, q2, [x26, #96]
	stp	q3, q0, [x26, #64]
	ldur	q0, [x8, #180]
	ldur	q1, [x8, #196]
	ldur	q2, [x8, #212]
	ldur	q3, [x8, #164]
	stp	q1, q2, [x26, #160]
	stp	q3, q0, [x26, #128]
	ldur	q0, [x8, #244]
	ldr	q1, [x10, #224]
	ldur	q2, [x10, #239]
	ldur	q3, [x8, #228]
	stur	q2, [x26, #239]
	stp	q0, q1, [x26, #208]
	str	q3, [x26, #192]
	ldur	q0, [x8, #36]
	ldur	q1, [x8, #52]
	ldur	q2, [x8, #68]
	ldur	q3, [x8, #84]
	stp	q2, q3, [x26, #32]
	stp	q0, q1, [x26]
	stp	x24, x26, [sp, #8]
	str	x9, [sp]
	mov	x0, x19
	bl	_printf
	add	w22, w22, #1
	add	w27, w27, #291
	cmp	w25, w22
	b.eq	LBB15_26
LBB15_21:                               ; %.lr.ph.i.i
                                        ;   Parent Loop BB15_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lsr	w8, w22, #1
	mov	w9, #9363
	movk	w9, #37449, lsl #16
	umull	x8, w8, w9
	lsr	x23, x8, #34
	ldr	x0, [x20, x23, lsl  #3]
	cbnz	x0, LBB15_20
; %bb.22:                               ;   in Loop: Header=BB15_21 Depth=2
	mov	w0, #4096
	bl	_malloc
	str	x0, [x20, x23, lsl  #3]
	b	LBB15_20
LBB15_23:                               ;   in Loop: Header=BB15_6 Depth=1
	ldr	w10, [sp, #36]                  ; 4-byte Folded Reload
	ubfx	w8, w10, #1, #15
	mov	w9, #18725
	mul	w8, w8, w9
	lsr	w22, w8, #17
	ldr	x25, [sp, #24]                  ; 8-byte Folded Reload
	add	x23, x25, w22, uxtw #3
	ldr	x0, [x23, #8]
	cbnz	x0, LBB15_25
; %bb.24:                               ;   in Loop: Header=BB15_6 Depth=1
	mov	w0, #4096
	bl	_malloc
	ldr	w10, [sp, #36]                  ; 4-byte Folded Reload
	str	x0, [x23, #8]
LBB15_25:                               ; %row_slot.exit.i.i
                                        ;   in Loop: Header=BB15_6 Depth=1
	mov	w8, #14
	msub	w8, w22, w8, w10
	and	x8, x8, #0xffff
	mov	w9, #291
	madd	x8, x8, x9, x0
	ldr	w9, [sp, #76]
	str	w9, [x8]
	ldp	x11, x9, [sp, #56]              ; 16-byte Folded Reload
	ldp	q0, q1, [x9]
	stur	q1, [x8, #20]
	stur	q0, [x8, #4]
	add	x9, x8, #36
	ldp	q0, q1, [x11, #96]
	ldp	q3, q2, [x11, #64]
	stur	q3, [x8, #100]
	stur	q1, [x8, #148]
	stur	q0, [x8, #132]
	stur	q2, [x8, #116]
	ldp	q0, q1, [x11, #160]
	ldp	q3, q2, [x11, #128]
	stur	q3, [x8, #164]
	stur	q1, [x8, #212]
	stur	q0, [x8, #196]
	stur	q2, [x8, #180]
	ldp	q2, q0, [x11, #208]
	ldur	q1, [x11, #239]
	ldr	q3, [x11, #192]
	stur	q3, [x8, #228]
	stur	q1, [x9, #239]
	str	q0, [x9, #224]
	stur	q2, [x8, #244]
	ldp	q0, q1, [x11]
	ldp	q2, q3, [x11, #32]
	stur	q3, [x8, #84]
	stur	q2, [x8, #68]
	stur	q1, [x8, #52]
	stur	q0, [x8, #36]
	add	w10, w10, #1
	str	w10, [x25]
	str	w10, [sp, #36]                  ; 4-byte Folded Spill
	mov	x25, x10
LBB15_26:                               ;   in Loop: Header=BB15_6 Depth=1
Lloh65:
	adrp	x0, l_str.3@PAGE
Lloh66:
	add	x0, x0, l_str.3@PAGEOFF
	bl	_puts
	ldr	x22, [sp, #40]                  ; 8-byte Folded Reload
Lloh67:
	adrp	x23, ___stdinp@GOTPAGE
Lloh68:
	ldr	x23, [x23, ___stdinp@GOTPAGEOFF]
	b	LBB15_5
LBB15_27:
	mov	x0, x21
	bl	_close_input_buffer
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	_free_table
	mov	w0, #0
	bl	_exit
	.loh AdrpLdrGot	Lloh41, Lloh42
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpLdrGot	Lloh67, Lloh68
	.loh AdrpAdd	Lloh65, Lloh66
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.globl	_ID_SIZE                        ; @ID_SIZE
	.p2align	2, 0x0
_ID_SIZE:
	.long	4                               ; 0x4

	.globl	_USERNAME_SIZE                  ; @USERNAME_SIZE
	.p2align	2, 0x0
_USERNAME_SIZE:
	.long	32                              ; 0x20

	.globl	_EMAIL_SIZE                     ; @EMAIL_SIZE
	.p2align	2, 0x0
_EMAIL_SIZE:
	.long	255                             ; 0xff

	.globl	_ID_OFFSET                      ; @ID_OFFSET
	.p2align	2, 0x0
_ID_OFFSET:
	.long	0                               ; 0x0

	.globl	_USERNAME_OFFSET                ; @USERNAME_OFFSET
	.p2align	2, 0x0
_USERNAME_OFFSET:
	.long	4                               ; 0x4

	.globl	_EMAIL_OFFSET                   ; @EMAIL_OFFSET
	.p2align	2, 0x0
_EMAIL_OFFSET:
	.long	36                              ; 0x24

	.globl	_ROW_SIZE                       ; @ROW_SIZE
	.p2align	2, 0x0
_ROW_SIZE:
	.long	291                             ; 0x123

	.globl	_PAGE_SIZE                      ; @PAGE_SIZE
	.p2align	2, 0x0
_PAGE_SIZE:
	.long	4096                            ; 0x1000

	.globl	_ROWS_PER_PAGE                  ; @ROWS_PER_PAGE
	.p2align	2, 0x0
_ROWS_PER_PAGE:
	.long	14                              ; 0xe

	.globl	_TABLE_MAX_ROWS                 ; @TABLE_MAX_ROWS
	.p2align	2, 0x0
_TABLE_MAX_ROWS:
	.long	1400                            ; 0x578

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"(%d, %s, %s)\n"

l_.str.1:                               ; @.str.1
	.asciz	"insert"

l_.str.2:                               ; @.str.2
	.asciz	"insert %d %s %s"

l_.str.3:                               ; @.str.3
	.asciz	"select"

l_.str.4:                               ; @.str.4
	.asciz	".exit"

l_.str.5:                               ; @.str.5
	.asciz	"db > "

l_.str.7:                               ; @.str.7
	.asciz	"Unrecognized command '%s'\n"

l_.str.9:                               ; @.str.9
	.asciz	"Unrecognized keyword at start of '%s'.\n"

l_str:                                  ; @str
	.asciz	"Error reading input"

l_str.1:                                ; @str.1
	.asciz	"Syntax error. Could not parse statement."

l_str.2:                                ; @str.2
	.asciz	"Error: Table full."

l_str.3:                                ; @str.3
	.asciz	"Executed."

.subsections_via_symbols
