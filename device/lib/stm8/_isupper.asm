;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:50 2013
;--------------------------------------------------------
	.module _isupper
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isupper
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
;	../_isupper.c: 33: char isupper (unsigned char c)
;	-----------------------------------------
;	 function isupper
;	-----------------------------------------
_isupper:
;	../_isupper.c: 35: if ( c >= UC('A') && c <= UC('Z') )
	ld	a, (0x03, sp)
	cp	a, #0x41
	jrc	00102$
	ld	a, (0x03, sp)
	cp	a, #0x5a
	jrugt	00102$
;	../_isupper.c: 36: return 1;
	ld	a, #0x01
	jra	00104$
00102$:
;	../_isupper.c: 37: return 0;
	clr	a
00104$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
