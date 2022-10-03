	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"serial_debug.c"
	.text
	.section	.bss.printfSerialPort,"aw",%nobits
	.align	2
	.type	printfSerialPort, %object
	.size	printfSerialPort, 4
printfSerialPort:
	.space	4
	.section	.text.a2d,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	a2d, %function
a2d:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #48
	b	.L3
.L2:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L4
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #102
	bhi	.L4
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #87
	b	.L3
.L4:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #70
	bhi	.L5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #55
	b	.L3
.L5:
	mov	r3, #-1
.L3:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	a2d, .-a2d
	.section	.text.a2i,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	a2i, %function
a2i:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L7
.L10:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bgt	.L12
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #4]
	mul	r3, r2, r3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
.L7:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	bl	a2d
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L10
	b	.L9
.L12:
	nop
.L9:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	a2i, .-a2i
	.section	.text.uli2a,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uli2a, %function
uli2a:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L14
.L15:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	str	r3, [r7, #20]
.L14:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	udiv	r3, r2, r3
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bls	.L15
	b	.L16
.L21:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	udiv	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #9
	ble	.L17
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L18
	movs	r3, #55
	b	.L20
.L18:
	movs	r3, #87
	b	.L20
.L17:
	movs	r3, #48
.L20:
	ldr	r2, [r7, #16]
	uxtb	r1, r2
	ldr	r2, [r7]
	adds	r0, r2, #1
	str	r0, [r7]
	add	r3, r3, r1
	uxtb	r3, r3
	strb	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	udiv	r2, r3, r2
	ldr	r1, [r7, #20]
	mul	r2, r1, r2
	subs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	udiv	r3, r2, r3
	str	r3, [r7, #20]
.L16:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L21
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uli2a, .-uli2a
	.section	.text.li2a,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	li2a, %function
li2a:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L23
	ldr	r3, [r7, #4]
	rsbs	r3, r3, #0
	str	r3, [r7, #4]
	ldr	r3, [r7]
	adds	r2, r3, #1
	str	r2, [r7]
	movs	r2, #45
	strb	r2, [r3]
.L23:
	ldr	r0, [r7, #4]
	ldr	r3, [r7]
	movs	r2, #0
	movs	r1, #10
	bl	uli2a
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	li2a, .-li2a
	.section	.text.ui2a,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ui2a, %function
ui2a:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L25
.L26:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	str	r3, [r7, #20]
.L25:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	udiv	r3, r2, r3
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bls	.L26
	b	.L27
.L32:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	udiv	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #9
	ble	.L28
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L29
	movs	r3, #55
	b	.L31
.L29:
	movs	r3, #87
	b	.L31
.L28:
	movs	r3, #48
.L31:
	ldr	r2, [r7, #16]
	uxtb	r1, r2
	ldr	r2, [r7]
	adds	r0, r2, #1
	str	r0, [r7]
	add	r3, r3, r1
	uxtb	r3, r3
	strb	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	udiv	r2, r3, r2
	ldr	r1, [r7, #20]
	mul	r2, r1, r2
	subs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	udiv	r3, r2, r3
	str	r3, [r7, #20]
.L27:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L32
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ui2a, .-ui2a
	.section	.text.i2a,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	i2a, %function
i2a:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L34
	ldr	r3, [r7, #4]
	rsbs	r3, r3, #0
	str	r3, [r7, #4]
	ldr	r3, [r7]
	adds	r2, r3, #1
	str	r2, [r7]
	movs	r2, #45
	strb	r2, [r3]
.L34:
	ldr	r0, [r7, #4]
	ldr	r3, [r7]
	movs	r2, #0
	movs	r1, #10
	bl	ui2a
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	i2a, .-i2a
	.section	.text.putchw,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	putchw, %function
putchw:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #28]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L36
	movs	r3, #48
	b	.L37
.L36:
	movs	r3, #32
.L37:
	strb	r3, [r7, #23]
	ldr	r3, [r7, #40]
	str	r3, [r7, #24]
	b	.L38
.L40:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L38:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L40
	b	.L41
.L42:
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	mov	r1, r2
	ldr	r0, [r7, #12]
	blx	r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L41:
	ldr	r3, [r7, #4]
	subs	r2, r3, #1
	str	r2, [r7, #4]
	cmp	r3, #0
	bgt	.L42
	b	.L43
.L44:
	ldrb	r2, [r7, #22]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	mov	r1, r2
	ldr	r0, [r7, #12]
	blx	r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L43:
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]
	strb	r3, [r7, #22]
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L44
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	putchw, .-putchw
	.section	.text.tfp_format,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	tfp_format, %function
tfp_format:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L47
.L71:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #37
	beq	.L48
	ldrb	r2, [r7, #35]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	mov	r1, r2
	ldr	r0, [r7, #12]
	blx	r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	b	.L47
.L48:
	movs	r3, #0
	strb	r3, [r7, #34]
	movs	r3, #0
	strb	r3, [r7, #33]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #35]
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L49
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #35]
	movs	r3, #1
	strb	r3, [r7, #34]
.L49:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L50
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L50
	add	r3, r7, #16
	adds	r1, r7, #4
	ldrb	r0, [r7, #35]	@ zero_extendqisi2
	movs	r2, #10
	bl	a2i
	mov	r3, r0
	strb	r3, [r7, #35]
.L50:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #108
	bne	.L51
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #35]
	movs	r3, #1
	strb	r3, [r7, #33]
.L51:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #120
	bgt	.L73
	cmp	r3, #88
	bge	.L53
	cmp	r3, #0
	beq	.L74
	cmp	r3, #37
	beq	.L55
	b	.L73
.L53:
	subs	r3, r3, #88
	cmp	r3, #32
	bhi	.L73
	adr	r2, .L57
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L57:
	.word	.L56+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L62+1
	.word	.L61+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L60+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L73+1
	.word	.L59+1
	.word	.L73+1
	.word	.L58+1
	.word	.L73+1
	.word	.L73+1
	.word	.L56+1
	.p2align 1
.L58:
	ldrb	r3, [r7, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r0, [r3]
	add	r3, r7, #20
	movs	r2, #0
	movs	r1, #10
	bl	uli2a
	b	.L65
.L64:
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r0, [r3]
	add	r3, r7, #20
	movs	r2, #0
	movs	r1, #10
	bl	ui2a
.L65:
	ldr	r2, [r7, #16]
	ldrb	r1, [r7, #34]	@ zero_extendqisi2
	add	r3, r7, #20
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	putchw
	mov	r2, r0
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L47
.L61:
	ldrb	r3, [r7, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	mov	r2, r3
	add	r3, r7, #20
	mov	r1, r3
	mov	r0, r2
	bl	li2a
	b	.L68
.L67:
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	add	r2, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	i2a
.L68:
	ldr	r2, [r7, #16]
	ldrb	r1, [r7, #34]	@ zero_extendqisi2
	add	r3, r7, #20
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	putchw
	mov	r2, r0
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L47
.L56:
	ldrb	r3, [r7, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L69
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r0, [r3]
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #88
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	add	r3, r7, #20
	movs	r1, #16
	bl	uli2a
	b	.L70
.L69:
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r0, [r3]
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #88
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	add	r3, r7, #20
	movs	r1, #16
	bl	ui2a
.L70:
	ldr	r2, [r7, #16]
	ldrb	r1, [r7, #34]	@ zero_extendqisi2
	add	r3, r7, #20
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	putchw
	mov	r2, r0
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L47
.L62:
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	mov	r1, r2
	ldr	r0, [r7, #12]
	blx	r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	b	.L47
.L59:
	ldr	r1, [r7, #16]
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	str	r3, [sp]
	movs	r3, #0
	mov	r2, r1
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	putchw
	mov	r2, r0
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L47
.L55:
	ldrb	r2, [r7, #35]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	mov	r1, r2
	ldr	r0, [r7, #12]
	blx	r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	b	.L47
.L60:
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	b	.L47
.L73:
	nop
.L47:
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #35]
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L71
	b	.L63
.L74:
	nop
.L63:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tfp_format, .-tfp_format
	.section	.text._putc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_putc, %function
_putc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, .L77
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	serialWrite
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L78:
	.align	2
.L77:
	.word	printfSerialPort
	.size	_putc, .-_putc
	.global	stdout_putf
	.section	.bss.stdout_putf,"aw",%nobits
	.align	2
	.type	stdout_putf, %object
	.size	stdout_putf, 4
stdout_putf:
	.space	4
	.section	.text.serialDebugFlush,"ax",%progbits
	.align	1
	.global	serialDebugFlush
	.syntax unified
	.thumb
	.thumb_func
	.type	serialDebugFlush, %function
serialDebugFlush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	nop
.L80:
	ldr	r3, .L81
	ldr	r3, [r3]
	mov	r0, r3
	bl	serialIsTransmitBufferEmpty
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L80
	nop
	nop
	pop	{r7, pc}
.L82:
	.align	2
.L81:
	.word	printfSerialPort
	.size	serialDebugFlush, .-serialDebugFlush
	.section	.text.serialDebugPrintf,"ax",%progbits
	.align	1
	.global	serialDebugPrintf
	.syntax unified
	.thumb
	.thumb_func
	.type	serialDebugPrintf, %function
serialDebugPrintf:
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	add	r3, r7, #20
	str	r3, [r7, #4]
	ldr	r3, .L84
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	movs	r0, #0
	bl	tfp_format
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, lr}
	add	sp, sp, #16
	bx	lr
.L85:
	.align	2
.L84:
	.word	stdout_putf
	.size	serialDebugPrintf, .-serialDebugPrintf
	.section	.text.serialDebugSetPort,"ax",%progbits
	.align	1
	.global	serialDebugSetPort
	.syntax unified
	.thumb
	.thumb_func
	.type	serialDebugSetPort, %function
serialDebugSetPort:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L87
	ldr	r3, [r7, #4]
	str	r3, [r2]
	ldr	r3, .L87+4
	ldr	r2, .L87+8
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L88:
	.align	2
.L87:
	.word	printfSerialPort
	.word	stdout_putf
	.word	_putc
	.size	serialDebugSetPort, .-serialDebugSetPort
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
