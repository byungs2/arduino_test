
test.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   8:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  10:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  14:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  18:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  1c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  20:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  24:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  28:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  2c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  30:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  34:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  38:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  3c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  40:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  44:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  48:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  4c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  50:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  54:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  58:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  5c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  60:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  64:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_copy_data>:
  74:	11 e0       	ldi	r17, 0x01	; 1
  76:	a0 e0       	ldi	r26, 0x00	; 0
  78:	b1 e0       	ldi	r27, 0x01	; 1
  7a:	e2 e4       	ldi	r30, 0x42	; 66
  7c:	f7 e0       	ldi	r31, 0x07	; 7
  7e:	02 c0       	rjmp	.+4      	; 0x84 <__do_copy_data+0x10>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a0 31       	cpi	r26, 0x10	; 16
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <__do_copy_data+0xc>

0000008a <__do_clear_bss>:
  8a:	21 e0       	ldi	r18, 0x01	; 1
  8c:	a0 e1       	ldi	r26, 0x10	; 16
  8e:	b1 e0       	ldi	r27, 0x01	; 1
  90:	01 c0       	rjmp	.+2      	; 0x94 <.do_clear_bss_start>

00000092 <.do_clear_bss_loop>:
  92:	1d 92       	st	X+, r1

00000094 <.do_clear_bss_start>:
  94:	a6 31       	cpi	r26, 0x16	; 22
  96:	b2 07       	cpc	r27, r18
  98:	e1 f7       	brne	.-8      	; 0x92 <.do_clear_bss_loop>
  9a:	0e 94 53 00 	call	0xa6	; 0xa6 <main>
  9e:	0c 94 9f 03 	jmp	0x73e	; 0x73e <_exit>

000000a2 <__bad_interrupt>:
  a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <main>:
  a6:	cf 93       	push	r28
  a8:	df 93       	push	r29
  aa:	cd b7       	in	r28, 0x3d	; 61
  ac:	de b7       	in	r29, 0x3e	; 62
  ae:	2a 97       	sbiw	r28, 0x0a	; 10
  b0:	0f b6       	in	r0, 0x3f	; 63
  b2:	f8 94       	cli
  b4:	de bf       	out	0x3e, r29	; 62
  b6:	0f be       	out	0x3f, r0	; 63
  b8:	cd bf       	out	0x3d, r28	; 61
  ba:	98 87       	std	Y+8, r25	; 0x08
  bc:	8f 83       	std	Y+7, r24	; 0x07
  be:	7a 87       	std	Y+10, r23	; 0x0a
  c0:	69 87       	std	Y+9, r22	; 0x09
  c2:	80 e0       	ldi	r24, 0x00	; 0
  c4:	91 e0       	ldi	r25, 0x01	; 1
  c6:	0e 94 a7 00 	call	0x14e	; 0x14e <puts>
  ca:	82 e0       	ldi	r24, 0x02	; 2
  cc:	90 e0       	ldi	r25, 0x00	; 0
  ce:	9a 83       	std	Y+2, r25	; 0x02
  d0:	89 83       	std	Y+1, r24	; 0x01
  d2:	83 e0       	ldi	r24, 0x03	; 3
  d4:	90 e0       	ldi	r25, 0x00	; 0
  d6:	9c 83       	std	Y+4, r25	; 0x04
  d8:	8b 83       	std	Y+3, r24	; 0x03
  da:	29 81       	ldd	r18, Y+1	; 0x01
  dc:	3a 81       	ldd	r19, Y+2	; 0x02
  de:	8b 81       	ldd	r24, Y+3	; 0x03
  e0:	9c 81       	ldd	r25, Y+4	; 0x04
  e2:	82 0f       	add	r24, r18
  e4:	93 1f       	adc	r25, r19
  e6:	9e 83       	std	Y+6, r25	; 0x06
  e8:	8d 83       	std	Y+5, r24	; 0x05
  ea:	8e 81       	ldd	r24, Y+6	; 0x06
  ec:	8f 93       	push	r24
  ee:	8d 81       	ldd	r24, Y+5	; 0x05
  f0:	8f 93       	push	r24
  f2:	8c e0       	ldi	r24, 0x0C	; 12
  f4:	91 e0       	ldi	r25, 0x01	; 1
  f6:	89 2f       	mov	r24, r25
  f8:	8f 93       	push	r24
  fa:	8c e0       	ldi	r24, 0x0C	; 12
  fc:	91 e0       	ldi	r25, 0x01	; 1
  fe:	8f 93       	push	r24
 100:	0e 94 91 00 	call	0x122	; 0x122 <printf>
 104:	0f 90       	pop	r0
 106:	0f 90       	pop	r0
 108:	0f 90       	pop	r0
 10a:	0f 90       	pop	r0
 10c:	80 e0       	ldi	r24, 0x00	; 0
 10e:	90 e0       	ldi	r25, 0x00	; 0
 110:	2a 96       	adiw	r28, 0x0a	; 10
 112:	0f b6       	in	r0, 0x3f	; 63
 114:	f8 94       	cli
 116:	de bf       	out	0x3e, r29	; 62
 118:	0f be       	out	0x3f, r0	; 63
 11a:	cd bf       	out	0x3d, r28	; 61
 11c:	df 91       	pop	r29
 11e:	cf 91       	pop	r28
 120:	08 95       	ret

00000122 <printf>:
 122:	a0 e0       	ldi	r26, 0x00	; 0
 124:	b0 e0       	ldi	r27, 0x00	; 0
 126:	e7 e9       	ldi	r30, 0x97	; 151
 128:	f0 e0       	ldi	r31, 0x00	; 0
 12a:	0c 94 78 03 	jmp	0x6f0	; 0x6f0 <__prologue_saves__+0x20>
 12e:	ae 01       	movw	r20, r28
 130:	4b 5f       	subi	r20, 0xFB	; 251
 132:	5f 4f       	sbci	r21, 0xFF	; 255
 134:	fa 01       	movw	r30, r20
 136:	61 91       	ld	r22, Z+
 138:	71 91       	ld	r23, Z+
 13a:	af 01       	movw	r20, r30
 13c:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <__data_end+0x2>
 140:	90 91 13 01 	lds	r25, 0x0113	; 0x800113 <__data_end+0x3>
 144:	0e 94 d7 00 	call	0x1ae	; 0x1ae <vfprintf>
 148:	e2 e0       	ldi	r30, 0x02	; 2
 14a:	0c 94 94 03 	jmp	0x728	; 0x728 <__epilogue_restores__+0x20>

0000014e <puts>:
 14e:	0f 93       	push	r16
 150:	1f 93       	push	r17
 152:	cf 93       	push	r28
 154:	df 93       	push	r29
 156:	e0 91 12 01 	lds	r30, 0x0112	; 0x800112 <__data_end+0x2>
 15a:	f0 91 13 01 	lds	r31, 0x0113	; 0x800113 <__data_end+0x3>
 15e:	23 81       	ldd	r18, Z+3	; 0x03
 160:	21 ff       	sbrs	r18, 1
 162:	1b c0       	rjmp	.+54     	; 0x19a <puts+0x4c>
 164:	8c 01       	movw	r16, r24
 166:	d0 e0       	ldi	r29, 0x00	; 0
 168:	c0 e0       	ldi	r28, 0x00	; 0
 16a:	f8 01       	movw	r30, r16
 16c:	81 91       	ld	r24, Z+
 16e:	8f 01       	movw	r16, r30
 170:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <__data_end+0x2>
 174:	70 91 13 01 	lds	r23, 0x0113	; 0x800113 <__data_end+0x3>
 178:	db 01       	movw	r26, r22
 17a:	18 96       	adiw	r26, 0x08	; 8
 17c:	ed 91       	ld	r30, X+
 17e:	fc 91       	ld	r31, X
 180:	19 97       	sbiw	r26, 0x09	; 9
 182:	88 23       	and	r24, r24
 184:	31 f0       	breq	.+12     	; 0x192 <puts+0x44>
 186:	09 95       	icall
 188:	89 2b       	or	r24, r25
 18a:	79 f3       	breq	.-34     	; 0x16a <puts+0x1c>
 18c:	df ef       	ldi	r29, 0xFF	; 255
 18e:	cf ef       	ldi	r28, 0xFF	; 255
 190:	ec cf       	rjmp	.-40     	; 0x16a <puts+0x1c>
 192:	8a e0       	ldi	r24, 0x0A	; 10
 194:	09 95       	icall
 196:	89 2b       	or	r24, r25
 198:	19 f0       	breq	.+6      	; 0x1a0 <puts+0x52>
 19a:	8f ef       	ldi	r24, 0xFF	; 255
 19c:	9f ef       	ldi	r25, 0xFF	; 255
 19e:	02 c0       	rjmp	.+4      	; 0x1a4 <puts+0x56>
 1a0:	8d 2f       	mov	r24, r29
 1a2:	9c 2f       	mov	r25, r28
 1a4:	df 91       	pop	r29
 1a6:	cf 91       	pop	r28
 1a8:	1f 91       	pop	r17
 1aa:	0f 91       	pop	r16
 1ac:	08 95       	ret

000001ae <vfprintf>:
 1ae:	ab e0       	ldi	r26, 0x0B	; 11
 1b0:	b0 e0       	ldi	r27, 0x00	; 0
 1b2:	ed ed       	ldi	r30, 0xDD	; 221
 1b4:	f0 e0       	ldi	r31, 0x00	; 0
 1b6:	0c 94 68 03 	jmp	0x6d0	; 0x6d0 <__prologue_saves__>
 1ba:	6c 01       	movw	r12, r24
 1bc:	7b 01       	movw	r14, r22
 1be:	8a 01       	movw	r16, r20
 1c0:	fc 01       	movw	r30, r24
 1c2:	17 82       	std	Z+7, r1	; 0x07
 1c4:	16 82       	std	Z+6, r1	; 0x06
 1c6:	83 81       	ldd	r24, Z+3	; 0x03
 1c8:	81 ff       	sbrs	r24, 1
 1ca:	cc c1       	rjmp	.+920    	; 0x564 <__LOCK_REGION_LENGTH__+0x164>
 1cc:	ce 01       	movw	r24, r28
 1ce:	01 96       	adiw	r24, 0x01	; 1
 1d0:	3c 01       	movw	r6, r24
 1d2:	f6 01       	movw	r30, r12
 1d4:	93 81       	ldd	r25, Z+3	; 0x03
 1d6:	f7 01       	movw	r30, r14
 1d8:	93 fd       	sbrc	r25, 3
 1da:	85 91       	lpm	r24, Z+
 1dc:	93 ff       	sbrs	r25, 3
 1de:	81 91       	ld	r24, Z+
 1e0:	7f 01       	movw	r14, r30
 1e2:	88 23       	and	r24, r24
 1e4:	09 f4       	brne	.+2      	; 0x1e8 <vfprintf+0x3a>
 1e6:	ba c1       	rjmp	.+884    	; 0x55c <__LOCK_REGION_LENGTH__+0x15c>
 1e8:	85 32       	cpi	r24, 0x25	; 37
 1ea:	39 f4       	brne	.+14     	; 0x1fa <vfprintf+0x4c>
 1ec:	93 fd       	sbrc	r25, 3
 1ee:	85 91       	lpm	r24, Z+
 1f0:	93 ff       	sbrs	r25, 3
 1f2:	81 91       	ld	r24, Z+
 1f4:	7f 01       	movw	r14, r30
 1f6:	85 32       	cpi	r24, 0x25	; 37
 1f8:	29 f4       	brne	.+10     	; 0x204 <vfprintf+0x56>
 1fa:	b6 01       	movw	r22, r12
 1fc:	90 e0       	ldi	r25, 0x00	; 0
 1fe:	0e 94 ce 02 	call	0x59c	; 0x59c <fputc>
 202:	e7 cf       	rjmp	.-50     	; 0x1d2 <vfprintf+0x24>
 204:	91 2c       	mov	r9, r1
 206:	21 2c       	mov	r2, r1
 208:	31 2c       	mov	r3, r1
 20a:	ff e1       	ldi	r31, 0x1F	; 31
 20c:	f3 15       	cp	r31, r3
 20e:	d8 f0       	brcs	.+54     	; 0x246 <vfprintf+0x98>
 210:	8b 32       	cpi	r24, 0x2B	; 43
 212:	79 f0       	breq	.+30     	; 0x232 <vfprintf+0x84>
 214:	38 f4       	brcc	.+14     	; 0x224 <vfprintf+0x76>
 216:	80 32       	cpi	r24, 0x20	; 32
 218:	79 f0       	breq	.+30     	; 0x238 <vfprintf+0x8a>
 21a:	83 32       	cpi	r24, 0x23	; 35
 21c:	a1 f4       	brne	.+40     	; 0x246 <vfprintf+0x98>
 21e:	23 2d       	mov	r18, r3
 220:	20 61       	ori	r18, 0x10	; 16
 222:	1d c0       	rjmp	.+58     	; 0x25e <vfprintf+0xb0>
 224:	8d 32       	cpi	r24, 0x2D	; 45
 226:	61 f0       	breq	.+24     	; 0x240 <vfprintf+0x92>
 228:	80 33       	cpi	r24, 0x30	; 48
 22a:	69 f4       	brne	.+26     	; 0x246 <vfprintf+0x98>
 22c:	23 2d       	mov	r18, r3
 22e:	21 60       	ori	r18, 0x01	; 1
 230:	16 c0       	rjmp	.+44     	; 0x25e <vfprintf+0xb0>
 232:	83 2d       	mov	r24, r3
 234:	82 60       	ori	r24, 0x02	; 2
 236:	38 2e       	mov	r3, r24
 238:	e3 2d       	mov	r30, r3
 23a:	e4 60       	ori	r30, 0x04	; 4
 23c:	3e 2e       	mov	r3, r30
 23e:	2a c0       	rjmp	.+84     	; 0x294 <vfprintf+0xe6>
 240:	f3 2d       	mov	r31, r3
 242:	f8 60       	ori	r31, 0x08	; 8
 244:	1d c0       	rjmp	.+58     	; 0x280 <vfprintf+0xd2>
 246:	37 fc       	sbrc	r3, 7
 248:	2d c0       	rjmp	.+90     	; 0x2a4 <vfprintf+0xf6>
 24a:	20 ed       	ldi	r18, 0xD0	; 208
 24c:	28 0f       	add	r18, r24
 24e:	2a 30       	cpi	r18, 0x0A	; 10
 250:	40 f0       	brcs	.+16     	; 0x262 <vfprintf+0xb4>
 252:	8e 32       	cpi	r24, 0x2E	; 46
 254:	b9 f4       	brne	.+46     	; 0x284 <vfprintf+0xd6>
 256:	36 fc       	sbrc	r3, 6
 258:	81 c1       	rjmp	.+770    	; 0x55c <__LOCK_REGION_LENGTH__+0x15c>
 25a:	23 2d       	mov	r18, r3
 25c:	20 64       	ori	r18, 0x40	; 64
 25e:	32 2e       	mov	r3, r18
 260:	19 c0       	rjmp	.+50     	; 0x294 <vfprintf+0xe6>
 262:	36 fe       	sbrs	r3, 6
 264:	06 c0       	rjmp	.+12     	; 0x272 <vfprintf+0xc4>
 266:	8a e0       	ldi	r24, 0x0A	; 10
 268:	98 9e       	mul	r9, r24
 26a:	20 0d       	add	r18, r0
 26c:	11 24       	eor	r1, r1
 26e:	92 2e       	mov	r9, r18
 270:	11 c0       	rjmp	.+34     	; 0x294 <vfprintf+0xe6>
 272:	ea e0       	ldi	r30, 0x0A	; 10
 274:	2e 9e       	mul	r2, r30
 276:	20 0d       	add	r18, r0
 278:	11 24       	eor	r1, r1
 27a:	22 2e       	mov	r2, r18
 27c:	f3 2d       	mov	r31, r3
 27e:	f0 62       	ori	r31, 0x20	; 32
 280:	3f 2e       	mov	r3, r31
 282:	08 c0       	rjmp	.+16     	; 0x294 <vfprintf+0xe6>
 284:	8c 36       	cpi	r24, 0x6C	; 108
 286:	21 f4       	brne	.+8      	; 0x290 <vfprintf+0xe2>
 288:	83 2d       	mov	r24, r3
 28a:	80 68       	ori	r24, 0x80	; 128
 28c:	38 2e       	mov	r3, r24
 28e:	02 c0       	rjmp	.+4      	; 0x294 <vfprintf+0xe6>
 290:	88 36       	cpi	r24, 0x68	; 104
 292:	41 f4       	brne	.+16     	; 0x2a4 <vfprintf+0xf6>
 294:	f7 01       	movw	r30, r14
 296:	93 fd       	sbrc	r25, 3
 298:	85 91       	lpm	r24, Z+
 29a:	93 ff       	sbrs	r25, 3
 29c:	81 91       	ld	r24, Z+
 29e:	7f 01       	movw	r14, r30
 2a0:	81 11       	cpse	r24, r1
 2a2:	b3 cf       	rjmp	.-154    	; 0x20a <vfprintf+0x5c>
 2a4:	98 2f       	mov	r25, r24
 2a6:	9f 7d       	andi	r25, 0xDF	; 223
 2a8:	95 54       	subi	r25, 0x45	; 69
 2aa:	93 30       	cpi	r25, 0x03	; 3
 2ac:	28 f4       	brcc	.+10     	; 0x2b8 <vfprintf+0x10a>
 2ae:	0c 5f       	subi	r16, 0xFC	; 252
 2b0:	1f 4f       	sbci	r17, 0xFF	; 255
 2b2:	9f e3       	ldi	r25, 0x3F	; 63
 2b4:	99 83       	std	Y+1, r25	; 0x01
 2b6:	0d c0       	rjmp	.+26     	; 0x2d2 <vfprintf+0x124>
 2b8:	83 36       	cpi	r24, 0x63	; 99
 2ba:	31 f0       	breq	.+12     	; 0x2c8 <vfprintf+0x11a>
 2bc:	83 37       	cpi	r24, 0x73	; 115
 2be:	71 f0       	breq	.+28     	; 0x2dc <vfprintf+0x12e>
 2c0:	83 35       	cpi	r24, 0x53	; 83
 2c2:	09 f0       	breq	.+2      	; 0x2c6 <vfprintf+0x118>
 2c4:	59 c0       	rjmp	.+178    	; 0x378 <vfprintf+0x1ca>
 2c6:	21 c0       	rjmp	.+66     	; 0x30a <vfprintf+0x15c>
 2c8:	f8 01       	movw	r30, r16
 2ca:	80 81       	ld	r24, Z
 2cc:	89 83       	std	Y+1, r24	; 0x01
 2ce:	0e 5f       	subi	r16, 0xFE	; 254
 2d0:	1f 4f       	sbci	r17, 0xFF	; 255
 2d2:	88 24       	eor	r8, r8
 2d4:	83 94       	inc	r8
 2d6:	91 2c       	mov	r9, r1
 2d8:	53 01       	movw	r10, r6
 2da:	13 c0       	rjmp	.+38     	; 0x302 <vfprintf+0x154>
 2dc:	28 01       	movw	r4, r16
 2de:	f2 e0       	ldi	r31, 0x02	; 2
 2e0:	4f 0e       	add	r4, r31
 2e2:	51 1c       	adc	r5, r1
 2e4:	f8 01       	movw	r30, r16
 2e6:	a0 80       	ld	r10, Z
 2e8:	b1 80       	ldd	r11, Z+1	; 0x01
 2ea:	36 fe       	sbrs	r3, 6
 2ec:	03 c0       	rjmp	.+6      	; 0x2f4 <vfprintf+0x146>
 2ee:	69 2d       	mov	r22, r9
 2f0:	70 e0       	ldi	r23, 0x00	; 0
 2f2:	02 c0       	rjmp	.+4      	; 0x2f8 <vfprintf+0x14a>
 2f4:	6f ef       	ldi	r22, 0xFF	; 255
 2f6:	7f ef       	ldi	r23, 0xFF	; 255
 2f8:	c5 01       	movw	r24, r10
 2fa:	0e 94 c3 02 	call	0x586	; 0x586 <strnlen>
 2fe:	4c 01       	movw	r8, r24
 300:	82 01       	movw	r16, r4
 302:	f3 2d       	mov	r31, r3
 304:	ff 77       	andi	r31, 0x7F	; 127
 306:	3f 2e       	mov	r3, r31
 308:	16 c0       	rjmp	.+44     	; 0x336 <vfprintf+0x188>
 30a:	28 01       	movw	r4, r16
 30c:	22 e0       	ldi	r18, 0x02	; 2
 30e:	42 0e       	add	r4, r18
 310:	51 1c       	adc	r5, r1
 312:	f8 01       	movw	r30, r16
 314:	a0 80       	ld	r10, Z
 316:	b1 80       	ldd	r11, Z+1	; 0x01
 318:	36 fe       	sbrs	r3, 6
 31a:	03 c0       	rjmp	.+6      	; 0x322 <vfprintf+0x174>
 31c:	69 2d       	mov	r22, r9
 31e:	70 e0       	ldi	r23, 0x00	; 0
 320:	02 c0       	rjmp	.+4      	; 0x326 <vfprintf+0x178>
 322:	6f ef       	ldi	r22, 0xFF	; 255
 324:	7f ef       	ldi	r23, 0xFF	; 255
 326:	c5 01       	movw	r24, r10
 328:	0e 94 b8 02 	call	0x570	; 0x570 <strnlen_P>
 32c:	4c 01       	movw	r8, r24
 32e:	f3 2d       	mov	r31, r3
 330:	f0 68       	ori	r31, 0x80	; 128
 332:	3f 2e       	mov	r3, r31
 334:	82 01       	movw	r16, r4
 336:	33 fc       	sbrc	r3, 3
 338:	1b c0       	rjmp	.+54     	; 0x370 <vfprintf+0x1c2>
 33a:	82 2d       	mov	r24, r2
 33c:	90 e0       	ldi	r25, 0x00	; 0
 33e:	88 16       	cp	r8, r24
 340:	99 06       	cpc	r9, r25
 342:	b0 f4       	brcc	.+44     	; 0x370 <vfprintf+0x1c2>
 344:	b6 01       	movw	r22, r12
 346:	80 e2       	ldi	r24, 0x20	; 32
 348:	90 e0       	ldi	r25, 0x00	; 0
 34a:	0e 94 ce 02 	call	0x59c	; 0x59c <fputc>
 34e:	2a 94       	dec	r2
 350:	f4 cf       	rjmp	.-24     	; 0x33a <vfprintf+0x18c>
 352:	f5 01       	movw	r30, r10
 354:	37 fc       	sbrc	r3, 7
 356:	85 91       	lpm	r24, Z+
 358:	37 fe       	sbrs	r3, 7
 35a:	81 91       	ld	r24, Z+
 35c:	5f 01       	movw	r10, r30
 35e:	b6 01       	movw	r22, r12
 360:	90 e0       	ldi	r25, 0x00	; 0
 362:	0e 94 ce 02 	call	0x59c	; 0x59c <fputc>
 366:	21 10       	cpse	r2, r1
 368:	2a 94       	dec	r2
 36a:	21 e0       	ldi	r18, 0x01	; 1
 36c:	82 1a       	sub	r8, r18
 36e:	91 08       	sbc	r9, r1
 370:	81 14       	cp	r8, r1
 372:	91 04       	cpc	r9, r1
 374:	71 f7       	brne	.-36     	; 0x352 <vfprintf+0x1a4>
 376:	e8 c0       	rjmp	.+464    	; 0x548 <__LOCK_REGION_LENGTH__+0x148>
 378:	84 36       	cpi	r24, 0x64	; 100
 37a:	11 f0       	breq	.+4      	; 0x380 <vfprintf+0x1d2>
 37c:	89 36       	cpi	r24, 0x69	; 105
 37e:	41 f5       	brne	.+80     	; 0x3d0 <vfprintf+0x222>
 380:	f8 01       	movw	r30, r16
 382:	37 fe       	sbrs	r3, 7
 384:	07 c0       	rjmp	.+14     	; 0x394 <vfprintf+0x1e6>
 386:	60 81       	ld	r22, Z
 388:	71 81       	ldd	r23, Z+1	; 0x01
 38a:	82 81       	ldd	r24, Z+2	; 0x02
 38c:	93 81       	ldd	r25, Z+3	; 0x03
 38e:	0c 5f       	subi	r16, 0xFC	; 252
 390:	1f 4f       	sbci	r17, 0xFF	; 255
 392:	08 c0       	rjmp	.+16     	; 0x3a4 <vfprintf+0x1f6>
 394:	60 81       	ld	r22, Z
 396:	71 81       	ldd	r23, Z+1	; 0x01
 398:	07 2e       	mov	r0, r23
 39a:	00 0c       	add	r0, r0
 39c:	88 0b       	sbc	r24, r24
 39e:	99 0b       	sbc	r25, r25
 3a0:	0e 5f       	subi	r16, 0xFE	; 254
 3a2:	1f 4f       	sbci	r17, 0xFF	; 255
 3a4:	f3 2d       	mov	r31, r3
 3a6:	ff 76       	andi	r31, 0x6F	; 111
 3a8:	3f 2e       	mov	r3, r31
 3aa:	97 ff       	sbrs	r25, 7
 3ac:	09 c0       	rjmp	.+18     	; 0x3c0 <vfprintf+0x212>
 3ae:	90 95       	com	r25
 3b0:	80 95       	com	r24
 3b2:	70 95       	com	r23
 3b4:	61 95       	neg	r22
 3b6:	7f 4f       	sbci	r23, 0xFF	; 255
 3b8:	8f 4f       	sbci	r24, 0xFF	; 255
 3ba:	9f 4f       	sbci	r25, 0xFF	; 255
 3bc:	f0 68       	ori	r31, 0x80	; 128
 3be:	3f 2e       	mov	r3, r31
 3c0:	2a e0       	ldi	r18, 0x0A	; 10
 3c2:	30 e0       	ldi	r19, 0x00	; 0
 3c4:	a3 01       	movw	r20, r6
 3c6:	0e 94 0a 03 	call	0x614	; 0x614 <__ultoa_invert>
 3ca:	88 2e       	mov	r8, r24
 3cc:	86 18       	sub	r8, r6
 3ce:	45 c0       	rjmp	.+138    	; 0x45a <__LOCK_REGION_LENGTH__+0x5a>
 3d0:	85 37       	cpi	r24, 0x75	; 117
 3d2:	31 f4       	brne	.+12     	; 0x3e0 <vfprintf+0x232>
 3d4:	23 2d       	mov	r18, r3
 3d6:	2f 7e       	andi	r18, 0xEF	; 239
 3d8:	b2 2e       	mov	r11, r18
 3da:	2a e0       	ldi	r18, 0x0A	; 10
 3dc:	30 e0       	ldi	r19, 0x00	; 0
 3de:	25 c0       	rjmp	.+74     	; 0x42a <__LOCK_REGION_LENGTH__+0x2a>
 3e0:	93 2d       	mov	r25, r3
 3e2:	99 7f       	andi	r25, 0xF9	; 249
 3e4:	b9 2e       	mov	r11, r25
 3e6:	8f 36       	cpi	r24, 0x6F	; 111
 3e8:	c1 f0       	breq	.+48     	; 0x41a <__LOCK_REGION_LENGTH__+0x1a>
 3ea:	18 f4       	brcc	.+6      	; 0x3f2 <vfprintf+0x244>
 3ec:	88 35       	cpi	r24, 0x58	; 88
 3ee:	79 f0       	breq	.+30     	; 0x40e <__LOCK_REGION_LENGTH__+0xe>
 3f0:	b5 c0       	rjmp	.+362    	; 0x55c <__LOCK_REGION_LENGTH__+0x15c>
 3f2:	80 37       	cpi	r24, 0x70	; 112
 3f4:	19 f0       	breq	.+6      	; 0x3fc <vfprintf+0x24e>
 3f6:	88 37       	cpi	r24, 0x78	; 120
 3f8:	21 f0       	breq	.+8      	; 0x402 <__LOCK_REGION_LENGTH__+0x2>
 3fa:	b0 c0       	rjmp	.+352    	; 0x55c <__LOCK_REGION_LENGTH__+0x15c>
 3fc:	e9 2f       	mov	r30, r25
 3fe:	e0 61       	ori	r30, 0x10	; 16
 400:	be 2e       	mov	r11, r30
 402:	b4 fe       	sbrs	r11, 4
 404:	0d c0       	rjmp	.+26     	; 0x420 <__LOCK_REGION_LENGTH__+0x20>
 406:	fb 2d       	mov	r31, r11
 408:	f4 60       	ori	r31, 0x04	; 4
 40a:	bf 2e       	mov	r11, r31
 40c:	09 c0       	rjmp	.+18     	; 0x420 <__LOCK_REGION_LENGTH__+0x20>
 40e:	34 fe       	sbrs	r3, 4
 410:	0a c0       	rjmp	.+20     	; 0x426 <__LOCK_REGION_LENGTH__+0x26>
 412:	29 2f       	mov	r18, r25
 414:	26 60       	ori	r18, 0x06	; 6
 416:	b2 2e       	mov	r11, r18
 418:	06 c0       	rjmp	.+12     	; 0x426 <__LOCK_REGION_LENGTH__+0x26>
 41a:	28 e0       	ldi	r18, 0x08	; 8
 41c:	30 e0       	ldi	r19, 0x00	; 0
 41e:	05 c0       	rjmp	.+10     	; 0x42a <__LOCK_REGION_LENGTH__+0x2a>
 420:	20 e1       	ldi	r18, 0x10	; 16
 422:	30 e0       	ldi	r19, 0x00	; 0
 424:	02 c0       	rjmp	.+4      	; 0x42a <__LOCK_REGION_LENGTH__+0x2a>
 426:	20 e1       	ldi	r18, 0x10	; 16
 428:	32 e0       	ldi	r19, 0x02	; 2
 42a:	f8 01       	movw	r30, r16
 42c:	b7 fe       	sbrs	r11, 7
 42e:	07 c0       	rjmp	.+14     	; 0x43e <__LOCK_REGION_LENGTH__+0x3e>
 430:	60 81       	ld	r22, Z
 432:	71 81       	ldd	r23, Z+1	; 0x01
 434:	82 81       	ldd	r24, Z+2	; 0x02
 436:	93 81       	ldd	r25, Z+3	; 0x03
 438:	0c 5f       	subi	r16, 0xFC	; 252
 43a:	1f 4f       	sbci	r17, 0xFF	; 255
 43c:	06 c0       	rjmp	.+12     	; 0x44a <__LOCK_REGION_LENGTH__+0x4a>
 43e:	60 81       	ld	r22, Z
 440:	71 81       	ldd	r23, Z+1	; 0x01
 442:	80 e0       	ldi	r24, 0x00	; 0
 444:	90 e0       	ldi	r25, 0x00	; 0
 446:	0e 5f       	subi	r16, 0xFE	; 254
 448:	1f 4f       	sbci	r17, 0xFF	; 255
 44a:	a3 01       	movw	r20, r6
 44c:	0e 94 0a 03 	call	0x614	; 0x614 <__ultoa_invert>
 450:	88 2e       	mov	r8, r24
 452:	86 18       	sub	r8, r6
 454:	fb 2d       	mov	r31, r11
 456:	ff 77       	andi	r31, 0x7F	; 127
 458:	3f 2e       	mov	r3, r31
 45a:	36 fe       	sbrs	r3, 6
 45c:	0d c0       	rjmp	.+26     	; 0x478 <__LOCK_REGION_LENGTH__+0x78>
 45e:	23 2d       	mov	r18, r3
 460:	2e 7f       	andi	r18, 0xFE	; 254
 462:	a2 2e       	mov	r10, r18
 464:	89 14       	cp	r8, r9
 466:	58 f4       	brcc	.+22     	; 0x47e <__LOCK_REGION_LENGTH__+0x7e>
 468:	34 fe       	sbrs	r3, 4
 46a:	0b c0       	rjmp	.+22     	; 0x482 <__LOCK_REGION_LENGTH__+0x82>
 46c:	32 fc       	sbrc	r3, 2
 46e:	09 c0       	rjmp	.+18     	; 0x482 <__LOCK_REGION_LENGTH__+0x82>
 470:	83 2d       	mov	r24, r3
 472:	8e 7e       	andi	r24, 0xEE	; 238
 474:	a8 2e       	mov	r10, r24
 476:	05 c0       	rjmp	.+10     	; 0x482 <__LOCK_REGION_LENGTH__+0x82>
 478:	b8 2c       	mov	r11, r8
 47a:	a3 2c       	mov	r10, r3
 47c:	03 c0       	rjmp	.+6      	; 0x484 <__LOCK_REGION_LENGTH__+0x84>
 47e:	b8 2c       	mov	r11, r8
 480:	01 c0       	rjmp	.+2      	; 0x484 <__LOCK_REGION_LENGTH__+0x84>
 482:	b9 2c       	mov	r11, r9
 484:	a4 fe       	sbrs	r10, 4
 486:	0f c0       	rjmp	.+30     	; 0x4a6 <__LOCK_REGION_LENGTH__+0xa6>
 488:	fe 01       	movw	r30, r28
 48a:	e8 0d       	add	r30, r8
 48c:	f1 1d       	adc	r31, r1
 48e:	80 81       	ld	r24, Z
 490:	80 33       	cpi	r24, 0x30	; 48
 492:	21 f4       	brne	.+8      	; 0x49c <__LOCK_REGION_LENGTH__+0x9c>
 494:	9a 2d       	mov	r25, r10
 496:	99 7e       	andi	r25, 0xE9	; 233
 498:	a9 2e       	mov	r10, r25
 49a:	09 c0       	rjmp	.+18     	; 0x4ae <__LOCK_REGION_LENGTH__+0xae>
 49c:	a2 fe       	sbrs	r10, 2
 49e:	06 c0       	rjmp	.+12     	; 0x4ac <__LOCK_REGION_LENGTH__+0xac>
 4a0:	b3 94       	inc	r11
 4a2:	b3 94       	inc	r11
 4a4:	04 c0       	rjmp	.+8      	; 0x4ae <__LOCK_REGION_LENGTH__+0xae>
 4a6:	8a 2d       	mov	r24, r10
 4a8:	86 78       	andi	r24, 0x86	; 134
 4aa:	09 f0       	breq	.+2      	; 0x4ae <__LOCK_REGION_LENGTH__+0xae>
 4ac:	b3 94       	inc	r11
 4ae:	a3 fc       	sbrc	r10, 3
 4b0:	11 c0       	rjmp	.+34     	; 0x4d4 <__LOCK_REGION_LENGTH__+0xd4>
 4b2:	a0 fe       	sbrs	r10, 0
 4b4:	06 c0       	rjmp	.+12     	; 0x4c2 <__LOCK_REGION_LENGTH__+0xc2>
 4b6:	b2 14       	cp	r11, r2
 4b8:	88 f4       	brcc	.+34     	; 0x4dc <__LOCK_REGION_LENGTH__+0xdc>
 4ba:	28 0c       	add	r2, r8
 4bc:	92 2c       	mov	r9, r2
 4be:	9b 18       	sub	r9, r11
 4c0:	0e c0       	rjmp	.+28     	; 0x4de <__LOCK_REGION_LENGTH__+0xde>
 4c2:	b2 14       	cp	r11, r2
 4c4:	60 f4       	brcc	.+24     	; 0x4de <__LOCK_REGION_LENGTH__+0xde>
 4c6:	b6 01       	movw	r22, r12
 4c8:	80 e2       	ldi	r24, 0x20	; 32
 4ca:	90 e0       	ldi	r25, 0x00	; 0
 4cc:	0e 94 ce 02 	call	0x59c	; 0x59c <fputc>
 4d0:	b3 94       	inc	r11
 4d2:	f7 cf       	rjmp	.-18     	; 0x4c2 <__LOCK_REGION_LENGTH__+0xc2>
 4d4:	b2 14       	cp	r11, r2
 4d6:	18 f4       	brcc	.+6      	; 0x4de <__LOCK_REGION_LENGTH__+0xde>
 4d8:	2b 18       	sub	r2, r11
 4da:	02 c0       	rjmp	.+4      	; 0x4e0 <__LOCK_REGION_LENGTH__+0xe0>
 4dc:	98 2c       	mov	r9, r8
 4de:	21 2c       	mov	r2, r1
 4e0:	a4 fe       	sbrs	r10, 4
 4e2:	10 c0       	rjmp	.+32     	; 0x504 <__LOCK_REGION_LENGTH__+0x104>
 4e4:	b6 01       	movw	r22, r12
 4e6:	80 e3       	ldi	r24, 0x30	; 48
 4e8:	90 e0       	ldi	r25, 0x00	; 0
 4ea:	0e 94 ce 02 	call	0x59c	; 0x59c <fputc>
 4ee:	a2 fe       	sbrs	r10, 2
 4f0:	17 c0       	rjmp	.+46     	; 0x520 <__LOCK_REGION_LENGTH__+0x120>
 4f2:	a1 fc       	sbrc	r10, 1
 4f4:	03 c0       	rjmp	.+6      	; 0x4fc <__LOCK_REGION_LENGTH__+0xfc>
 4f6:	88 e7       	ldi	r24, 0x78	; 120
 4f8:	90 e0       	ldi	r25, 0x00	; 0
 4fa:	02 c0       	rjmp	.+4      	; 0x500 <__LOCK_REGION_LENGTH__+0x100>
 4fc:	88 e5       	ldi	r24, 0x58	; 88
 4fe:	90 e0       	ldi	r25, 0x00	; 0
 500:	b6 01       	movw	r22, r12
 502:	0c c0       	rjmp	.+24     	; 0x51c <__LOCK_REGION_LENGTH__+0x11c>
 504:	8a 2d       	mov	r24, r10
 506:	86 78       	andi	r24, 0x86	; 134
 508:	59 f0       	breq	.+22     	; 0x520 <__LOCK_REGION_LENGTH__+0x120>
 50a:	a1 fe       	sbrs	r10, 1
 50c:	02 c0       	rjmp	.+4      	; 0x512 <__LOCK_REGION_LENGTH__+0x112>
 50e:	8b e2       	ldi	r24, 0x2B	; 43
 510:	01 c0       	rjmp	.+2      	; 0x514 <__LOCK_REGION_LENGTH__+0x114>
 512:	80 e2       	ldi	r24, 0x20	; 32
 514:	a7 fc       	sbrc	r10, 7
 516:	8d e2       	ldi	r24, 0x2D	; 45
 518:	b6 01       	movw	r22, r12
 51a:	90 e0       	ldi	r25, 0x00	; 0
 51c:	0e 94 ce 02 	call	0x59c	; 0x59c <fputc>
 520:	89 14       	cp	r8, r9
 522:	38 f4       	brcc	.+14     	; 0x532 <__LOCK_REGION_LENGTH__+0x132>
 524:	b6 01       	movw	r22, r12
 526:	80 e3       	ldi	r24, 0x30	; 48
 528:	90 e0       	ldi	r25, 0x00	; 0
 52a:	0e 94 ce 02 	call	0x59c	; 0x59c <fputc>
 52e:	9a 94       	dec	r9
 530:	f7 cf       	rjmp	.-18     	; 0x520 <__LOCK_REGION_LENGTH__+0x120>
 532:	8a 94       	dec	r8
 534:	f3 01       	movw	r30, r6
 536:	e8 0d       	add	r30, r8
 538:	f1 1d       	adc	r31, r1
 53a:	80 81       	ld	r24, Z
 53c:	b6 01       	movw	r22, r12
 53e:	90 e0       	ldi	r25, 0x00	; 0
 540:	0e 94 ce 02 	call	0x59c	; 0x59c <fputc>
 544:	81 10       	cpse	r8, r1
 546:	f5 cf       	rjmp	.-22     	; 0x532 <__LOCK_REGION_LENGTH__+0x132>
 548:	22 20       	and	r2, r2
 54a:	09 f4       	brne	.+2      	; 0x54e <__LOCK_REGION_LENGTH__+0x14e>
 54c:	42 ce       	rjmp	.-892    	; 0x1d2 <vfprintf+0x24>
 54e:	b6 01       	movw	r22, r12
 550:	80 e2       	ldi	r24, 0x20	; 32
 552:	90 e0       	ldi	r25, 0x00	; 0
 554:	0e 94 ce 02 	call	0x59c	; 0x59c <fputc>
 558:	2a 94       	dec	r2
 55a:	f6 cf       	rjmp	.-20     	; 0x548 <__LOCK_REGION_LENGTH__+0x148>
 55c:	f6 01       	movw	r30, r12
 55e:	86 81       	ldd	r24, Z+6	; 0x06
 560:	97 81       	ldd	r25, Z+7	; 0x07
 562:	02 c0       	rjmp	.+4      	; 0x568 <__LOCK_REGION_LENGTH__+0x168>
 564:	8f ef       	ldi	r24, 0xFF	; 255
 566:	9f ef       	ldi	r25, 0xFF	; 255
 568:	2b 96       	adiw	r28, 0x0b	; 11
 56a:	e2 e1       	ldi	r30, 0x12	; 18
 56c:	0c 94 84 03 	jmp	0x708	; 0x708 <__epilogue_restores__>

00000570 <strnlen_P>:
 570:	fc 01       	movw	r30, r24
 572:	05 90       	lpm	r0, Z+
 574:	61 50       	subi	r22, 0x01	; 1
 576:	70 40       	sbci	r23, 0x00	; 0
 578:	01 10       	cpse	r0, r1
 57a:	d8 f7       	brcc	.-10     	; 0x572 <strnlen_P+0x2>
 57c:	80 95       	com	r24
 57e:	90 95       	com	r25
 580:	8e 0f       	add	r24, r30
 582:	9f 1f       	adc	r25, r31
 584:	08 95       	ret

00000586 <strnlen>:
 586:	fc 01       	movw	r30, r24
 588:	61 50       	subi	r22, 0x01	; 1
 58a:	70 40       	sbci	r23, 0x00	; 0
 58c:	01 90       	ld	r0, Z+
 58e:	01 10       	cpse	r0, r1
 590:	d8 f7       	brcc	.-10     	; 0x588 <strnlen+0x2>
 592:	80 95       	com	r24
 594:	90 95       	com	r25
 596:	8e 0f       	add	r24, r30
 598:	9f 1f       	adc	r25, r31
 59a:	08 95       	ret

0000059c <fputc>:
 59c:	0f 93       	push	r16
 59e:	1f 93       	push	r17
 5a0:	cf 93       	push	r28
 5a2:	df 93       	push	r29
 5a4:	fb 01       	movw	r30, r22
 5a6:	23 81       	ldd	r18, Z+3	; 0x03
 5a8:	21 fd       	sbrc	r18, 1
 5aa:	03 c0       	rjmp	.+6      	; 0x5b2 <fputc+0x16>
 5ac:	8f ef       	ldi	r24, 0xFF	; 255
 5ae:	9f ef       	ldi	r25, 0xFF	; 255
 5b0:	2c c0       	rjmp	.+88     	; 0x60a <fputc+0x6e>
 5b2:	22 ff       	sbrs	r18, 2
 5b4:	16 c0       	rjmp	.+44     	; 0x5e2 <fputc+0x46>
 5b6:	46 81       	ldd	r20, Z+6	; 0x06
 5b8:	57 81       	ldd	r21, Z+7	; 0x07
 5ba:	24 81       	ldd	r18, Z+4	; 0x04
 5bc:	35 81       	ldd	r19, Z+5	; 0x05
 5be:	42 17       	cp	r20, r18
 5c0:	53 07       	cpc	r21, r19
 5c2:	44 f4       	brge	.+16     	; 0x5d4 <fputc+0x38>
 5c4:	a0 81       	ld	r26, Z
 5c6:	b1 81       	ldd	r27, Z+1	; 0x01
 5c8:	9d 01       	movw	r18, r26
 5ca:	2f 5f       	subi	r18, 0xFF	; 255
 5cc:	3f 4f       	sbci	r19, 0xFF	; 255
 5ce:	31 83       	std	Z+1, r19	; 0x01
 5d0:	20 83       	st	Z, r18
 5d2:	8c 93       	st	X, r24
 5d4:	26 81       	ldd	r18, Z+6	; 0x06
 5d6:	37 81       	ldd	r19, Z+7	; 0x07
 5d8:	2f 5f       	subi	r18, 0xFF	; 255
 5da:	3f 4f       	sbci	r19, 0xFF	; 255
 5dc:	37 83       	std	Z+7, r19	; 0x07
 5de:	26 83       	std	Z+6, r18	; 0x06
 5e0:	14 c0       	rjmp	.+40     	; 0x60a <fputc+0x6e>
 5e2:	8b 01       	movw	r16, r22
 5e4:	ec 01       	movw	r28, r24
 5e6:	fb 01       	movw	r30, r22
 5e8:	00 84       	ldd	r0, Z+8	; 0x08
 5ea:	f1 85       	ldd	r31, Z+9	; 0x09
 5ec:	e0 2d       	mov	r30, r0
 5ee:	09 95       	icall
 5f0:	89 2b       	or	r24, r25
 5f2:	e1 f6       	brne	.-72     	; 0x5ac <fputc+0x10>
 5f4:	d8 01       	movw	r26, r16
 5f6:	16 96       	adiw	r26, 0x06	; 6
 5f8:	8d 91       	ld	r24, X+
 5fa:	9c 91       	ld	r25, X
 5fc:	17 97       	sbiw	r26, 0x07	; 7
 5fe:	01 96       	adiw	r24, 0x01	; 1
 600:	17 96       	adiw	r26, 0x07	; 7
 602:	9c 93       	st	X, r25
 604:	8e 93       	st	-X, r24
 606:	16 97       	sbiw	r26, 0x06	; 6
 608:	ce 01       	movw	r24, r28
 60a:	df 91       	pop	r29
 60c:	cf 91       	pop	r28
 60e:	1f 91       	pop	r17
 610:	0f 91       	pop	r16
 612:	08 95       	ret

00000614 <__ultoa_invert>:
 614:	fa 01       	movw	r30, r20
 616:	aa 27       	eor	r26, r26
 618:	28 30       	cpi	r18, 0x08	; 8
 61a:	51 f1       	breq	.+84     	; 0x670 <__ultoa_invert+0x5c>
 61c:	20 31       	cpi	r18, 0x10	; 16
 61e:	81 f1       	breq	.+96     	; 0x680 <__ultoa_invert+0x6c>
 620:	e8 94       	clt
 622:	6f 93       	push	r22
 624:	6e 7f       	andi	r22, 0xFE	; 254
 626:	6e 5f       	subi	r22, 0xFE	; 254
 628:	7f 4f       	sbci	r23, 0xFF	; 255
 62a:	8f 4f       	sbci	r24, 0xFF	; 255
 62c:	9f 4f       	sbci	r25, 0xFF	; 255
 62e:	af 4f       	sbci	r26, 0xFF	; 255
 630:	b1 e0       	ldi	r27, 0x01	; 1
 632:	3e d0       	rcall	.+124    	; 0x6b0 <__ultoa_invert+0x9c>
 634:	b4 e0       	ldi	r27, 0x04	; 4
 636:	3c d0       	rcall	.+120    	; 0x6b0 <__ultoa_invert+0x9c>
 638:	67 0f       	add	r22, r23
 63a:	78 1f       	adc	r23, r24
 63c:	89 1f       	adc	r24, r25
 63e:	9a 1f       	adc	r25, r26
 640:	a1 1d       	adc	r26, r1
 642:	68 0f       	add	r22, r24
 644:	79 1f       	adc	r23, r25
 646:	8a 1f       	adc	r24, r26
 648:	91 1d       	adc	r25, r1
 64a:	a1 1d       	adc	r26, r1
 64c:	6a 0f       	add	r22, r26
 64e:	71 1d       	adc	r23, r1
 650:	81 1d       	adc	r24, r1
 652:	91 1d       	adc	r25, r1
 654:	a1 1d       	adc	r26, r1
 656:	20 d0       	rcall	.+64     	; 0x698 <__ultoa_invert+0x84>
 658:	09 f4       	brne	.+2      	; 0x65c <__ultoa_invert+0x48>
 65a:	68 94       	set
 65c:	3f 91       	pop	r19
 65e:	2a e0       	ldi	r18, 0x0A	; 10
 660:	26 9f       	mul	r18, r22
 662:	11 24       	eor	r1, r1
 664:	30 19       	sub	r19, r0
 666:	30 5d       	subi	r19, 0xD0	; 208
 668:	31 93       	st	Z+, r19
 66a:	de f6       	brtc	.-74     	; 0x622 <__ultoa_invert+0xe>
 66c:	cf 01       	movw	r24, r30
 66e:	08 95       	ret
 670:	46 2f       	mov	r20, r22
 672:	47 70       	andi	r20, 0x07	; 7
 674:	40 5d       	subi	r20, 0xD0	; 208
 676:	41 93       	st	Z+, r20
 678:	b3 e0       	ldi	r27, 0x03	; 3
 67a:	0f d0       	rcall	.+30     	; 0x69a <__ultoa_invert+0x86>
 67c:	c9 f7       	brne	.-14     	; 0x670 <__ultoa_invert+0x5c>
 67e:	f6 cf       	rjmp	.-20     	; 0x66c <__ultoa_invert+0x58>
 680:	46 2f       	mov	r20, r22
 682:	4f 70       	andi	r20, 0x0F	; 15
 684:	40 5d       	subi	r20, 0xD0	; 208
 686:	4a 33       	cpi	r20, 0x3A	; 58
 688:	18 f0       	brcs	.+6      	; 0x690 <__ultoa_invert+0x7c>
 68a:	49 5d       	subi	r20, 0xD9	; 217
 68c:	31 fd       	sbrc	r19, 1
 68e:	40 52       	subi	r20, 0x20	; 32
 690:	41 93       	st	Z+, r20
 692:	02 d0       	rcall	.+4      	; 0x698 <__ultoa_invert+0x84>
 694:	a9 f7       	brne	.-22     	; 0x680 <__ultoa_invert+0x6c>
 696:	ea cf       	rjmp	.-44     	; 0x66c <__ultoa_invert+0x58>
 698:	b4 e0       	ldi	r27, 0x04	; 4
 69a:	a6 95       	lsr	r26
 69c:	97 95       	ror	r25
 69e:	87 95       	ror	r24
 6a0:	77 95       	ror	r23
 6a2:	67 95       	ror	r22
 6a4:	ba 95       	dec	r27
 6a6:	c9 f7       	brne	.-14     	; 0x69a <__ultoa_invert+0x86>
 6a8:	00 97       	sbiw	r24, 0x00	; 0
 6aa:	61 05       	cpc	r22, r1
 6ac:	71 05       	cpc	r23, r1
 6ae:	08 95       	ret
 6b0:	9b 01       	movw	r18, r22
 6b2:	ac 01       	movw	r20, r24
 6b4:	0a 2e       	mov	r0, r26
 6b6:	06 94       	lsr	r0
 6b8:	57 95       	ror	r21
 6ba:	47 95       	ror	r20
 6bc:	37 95       	ror	r19
 6be:	27 95       	ror	r18
 6c0:	ba 95       	dec	r27
 6c2:	c9 f7       	brne	.-14     	; 0x6b6 <__ultoa_invert+0xa2>
 6c4:	62 0f       	add	r22, r18
 6c6:	73 1f       	adc	r23, r19
 6c8:	84 1f       	adc	r24, r20
 6ca:	95 1f       	adc	r25, r21
 6cc:	a0 1d       	adc	r26, r0
 6ce:	08 95       	ret

000006d0 <__prologue_saves__>:
 6d0:	2f 92       	push	r2
 6d2:	3f 92       	push	r3
 6d4:	4f 92       	push	r4
 6d6:	5f 92       	push	r5
 6d8:	6f 92       	push	r6
 6da:	7f 92       	push	r7
 6dc:	8f 92       	push	r8
 6de:	9f 92       	push	r9
 6e0:	af 92       	push	r10
 6e2:	bf 92       	push	r11
 6e4:	cf 92       	push	r12
 6e6:	df 92       	push	r13
 6e8:	ef 92       	push	r14
 6ea:	ff 92       	push	r15
 6ec:	0f 93       	push	r16
 6ee:	1f 93       	push	r17
 6f0:	cf 93       	push	r28
 6f2:	df 93       	push	r29
 6f4:	cd b7       	in	r28, 0x3d	; 61
 6f6:	de b7       	in	r29, 0x3e	; 62
 6f8:	ca 1b       	sub	r28, r26
 6fa:	db 0b       	sbc	r29, r27
 6fc:	0f b6       	in	r0, 0x3f	; 63
 6fe:	f8 94       	cli
 700:	de bf       	out	0x3e, r29	; 62
 702:	0f be       	out	0x3f, r0	; 63
 704:	cd bf       	out	0x3d, r28	; 61
 706:	09 94       	ijmp

00000708 <__epilogue_restores__>:
 708:	2a 88       	ldd	r2, Y+18	; 0x12
 70a:	39 88       	ldd	r3, Y+17	; 0x11
 70c:	48 88       	ldd	r4, Y+16	; 0x10
 70e:	5f 84       	ldd	r5, Y+15	; 0x0f
 710:	6e 84       	ldd	r6, Y+14	; 0x0e
 712:	7d 84       	ldd	r7, Y+13	; 0x0d
 714:	8c 84       	ldd	r8, Y+12	; 0x0c
 716:	9b 84       	ldd	r9, Y+11	; 0x0b
 718:	aa 84       	ldd	r10, Y+10	; 0x0a
 71a:	b9 84       	ldd	r11, Y+9	; 0x09
 71c:	c8 84       	ldd	r12, Y+8	; 0x08
 71e:	df 80       	ldd	r13, Y+7	; 0x07
 720:	ee 80       	ldd	r14, Y+6	; 0x06
 722:	fd 80       	ldd	r15, Y+5	; 0x05
 724:	0c 81       	ldd	r16, Y+4	; 0x04
 726:	1b 81       	ldd	r17, Y+3	; 0x03
 728:	aa 81       	ldd	r26, Y+2	; 0x02
 72a:	b9 81       	ldd	r27, Y+1	; 0x01
 72c:	ce 0f       	add	r28, r30
 72e:	d1 1d       	adc	r29, r1
 730:	0f b6       	in	r0, 0x3f	; 63
 732:	f8 94       	cli
 734:	de bf       	out	0x3e, r29	; 62
 736:	0f be       	out	0x3f, r0	; 63
 738:	cd bf       	out	0x3d, r28	; 61
 73a:	ed 01       	movw	r28, r26
 73c:	08 95       	ret

0000073e <_exit>:
 73e:	f8 94       	cli

00000740 <__stop_program>:
 740:	ff cf       	rjmp	.-2      	; 0x740 <__stop_program>
