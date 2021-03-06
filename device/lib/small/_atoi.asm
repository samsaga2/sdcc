;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _atoi
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_atoi_sloc0_1_0:
	.ds 1
_atoi_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;rv                        Allocated to registers r3 r4 
;sign                      Allocated to registers r0 
;sloc0                     Allocated with name '_atoi_sloc0_1_0'
;sloc1                     Allocated with name '_atoi_sloc1_1_0'
;------------------------------------------------------------
;	_atoi.c:29: int atoi(const char * s)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_atoi.c:31: register int rv=0; 
	mov	r3,#0x00
	mov	r4,#0x00
;	_atoi.c:35: while (*s) {
	mov	ar0,r5
	mov	ar1,r6
	mov	ar2,r7
00107$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_atoi_sloc0_1_0,a
	jz	00133$
;	_atoi.c:36: if (*s <= '9' && *s >= '0')
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,_atoi_sloc0_1_0
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,_atoi_sloc0_1_0
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00133$
;	_atoi.c:37: break;
00102$:
;	_atoi.c:38: if (*s == '-' || *s == '+') 
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_atoi_sloc0_1_0,a
	mov	a,#0x2D
	cjne	a,_atoi_sloc0_1_0,00160$
	sjmp	00133$
00160$:
	mov	a,#0x2B
	cjne	a,_atoi_sloc0_1_0,00161$
	sjmp	00133$
00161$:
;	_atoi.c:40: s++;
	inc	r0
	cjne	r0,#0x00,00107$
	inc	r1
	sjmp	00107$
00133$:
	mov	ar5,r0
	mov	ar6,r1
	mov	ar7,r2
;	_atoi.c:43: sign = (*s == '-');
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	clr	a
	cjne	r2,#0x2D,00163$
	inc	a
00163$:
;	_atoi.c:44: if (*s == '-' || *s == '+') s++;
	mov	r1,a
	mov	r0,a
	jnz	00110$
	cjne	r2,#0x2B,00131$
00110$:
	inc	r5
	cjne	r5,#0x00,00168$
	inc	r6
00168$:
;	_atoi.c:46: while (*s && *s >= '0' && *s <= '9') {
00131$:
00115$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	jz	00117$
	clr	c
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00117$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00117$
;	_atoi.c:47: rv = (rv * 10) + (*s - '0');
	push	ar0
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),r4
	mov	dptr,#0x000A
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar0
	lcall	__mulint
	mov	_atoi_sloc1_1_0,dpl
	mov	(_atoi_sloc1_1_0 + 1),dph
	pop	ar0
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r1
	add	a,#0xD0
	mov	r1,a
	mov	a,r2
	addc	a,#0xFF
	mov	r2,a
	mov	a,r1
	add	a,_atoi_sloc1_1_0
	mov	r3,a
	mov	a,r2
	addc	a,(_atoi_sloc1_1_0 + 1)
	mov	r4,a
;	_atoi.c:48: s++;
	inc	r5
	cjne	r5,#0x00,00172$
	inc	r6
00172$:
	pop	ar0
	sjmp	00115$
00117$:
;	_atoi.c:51: return (sign ? -rv : rv);
	mov	a,r0
	jz	00120$
	clr	c
	clr	a
	subb	a,r3
	mov	r6,a
	clr	a
	subb	a,r4
	mov	r7,a
	sjmp	00121$
00120$:
	mov	ar6,r3
	mov	ar7,r4
00121$:
	mov	dpl,r6
	mov	dph,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
