;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:51 2013
;--------------------------------------------------------
	.module _strcspn
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strcspn
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../_strcspn.c: 31: size_t strcspn ( 
;	-----------------------------------------
;	 function strcspn
;	-----------------------------------------
_strcspn:
	sub	sp, #4
;	../_strcspn.c: 39: while (ch = *string) {
	clrw	x
	ldw	(0x01, sp), x
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
00104$:
	ldw	x, (0x03, sp)
	ld	a, (x)
	ld	xl, a
	tnz	a
	jreq	00106$
;	../_strcspn.c: 40: if (strchr(control,ch))
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	_strchr
	addw	sp, #4
	tnzw	x
	jrne	00106$
;	../_strcspn.c: 43: count++ ;
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x01, sp), x
;	../_strcspn.c: 44: string++ ;
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	jra	00104$
00106$:
;	../_strcspn.c: 47: return count ;
	ldw	x, (0x01, sp)
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
