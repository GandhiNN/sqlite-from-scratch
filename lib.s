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
	.globl	_prepare_statement              ; -- Begin function prepare_statement
	.p2align	2
_prepare_statement:                     ; @prepare_statement
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
	ldr	x20, [x0]
Lloh0:
	adrp	x1, l_.str@PAGE
Lloh1:
	add	x1, x1, l_.str@PAGEOFF
	mov	x0, x20
	mov	w2, #6
	bl	_strncmp
	cbz	w0, LBB1_3
; %bb.1:
Lloh2:
	adrp	x1, l_.str.1@PAGE
Lloh3:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, x20
	bl	_strcmp
	mov	x8, x0
	mov	w0, #1
	cbz	w8, LBB1_3
; %bb.2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB1_3:                                 ; %.sink.split
	str	w0, [x19]
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.globl	_execute_statement              ; -- Begin function execute_statement
	.p2align	2
_execute_statement:                     ; @execute_statement
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0]
	cbz	w8, LBB2_3
; %bb.1:
	cmp	w8, #1
	b.ne	LBB2_4
; %bb.2:
Lloh4:
	adrp	x0, l_str@PAGE
Lloh5:
	add	x0, x0, l_str@PAGEOFF
	b	_puts
LBB2_3:
Lloh6:
	adrp	x0, l_str.1@PAGE
Lloh7:
	add	x0, x0, l_str.1@PAGEOFF
	b	_puts
LBB2_4:
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.globl	_do_meta_command                ; -- Begin function do_meta_command
	.p2align	2
_do_meta_command:                       ; @do_meta_command
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
Lloh8:
	adrp	x1, l_.str.4@PAGE
Lloh9:
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_2
; %bb.1:
	mov	w0, #1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB3_2:
	bl	_exit
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.globl	_print_prompt                   ; -- Begin function print_prompt
	.p2align	2
_print_prompt:                          ; @print_prompt
	.cfi_startproc
; %bb.0:
Lloh10:
	adrp	x0, l_.str.5@PAGE
Lloh11:
	add	x0, x0, l_.str.5@PAGEOFF
	b	_printf
	.loh AdrpAdd	Lloh10, Lloh11
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
Lloh12:
	adrp	x8, ___stdinp@GOTPAGE
Lloh13:
	ldr	x8, [x8, ___stdinp@GOTPAGEOFF]
Lloh14:
	ldr	x2, [x8]
	bl	_getline
	cmp	x0, #0
	b.le	LBB5_2
; %bb.1:
	sub	x8, x0, #1
	str	x8, [x19, #16]
	ldr	x8, [x19]
	add	x8, x8, x0
	sturb	wzr, [x8, #-1]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB5_2:
Lloh15:
	adrp	x0, l_str.2@PAGE
Lloh16:
	add	x0, x0, l_str.2@PAGEOFF
	bl	_puts
	mov	w0, #1
	bl	_exit
	.loh AdrpLdrGotLdr	Lloh12, Lloh13, Lloh14
	.loh AdrpAdd	Lloh15, Lloh16
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
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"insert"

l_.str.1:                               ; @.str.1
	.asciz	"select"

l_.str.4:                               ; @.str.4
	.asciz	".exit"

l_.str.5:                               ; @.str.5
	.asciz	"db > "

l_str:                                  ; @str
	.asciz	"This is where we would do a select."

l_str.1:                                ; @str.1
	.asciz	"This is where we would do an insert."

l_str.2:                                ; @str.2
	.asciz	"Error reading input"

.subsections_via_symbols
