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
	.file	"inverter.c"
	.text
	.section	.rodata.IO_TAG_RX,"a"
	.align	2
	.type	IO_TAG_RX, %object
	.size	IO_TAG_RX, 12
IO_TAG_RX:
	.ascii	"\032\000+\021B7\000\000\000\000\000\000"
	.section	.rodata.IO_TAG_TX,"a"
	.align	2
	.type	IO_TAG_TX, %object
	.size	IO_TAG_TX, 12
IO_TAG_TX:
	.ascii	"\031\000*\020\0006\000\000\000\000\000\000"
	.section	.rodata.INVERTER,"a"
	.align	2
	.type	INVERTER, %object
	.size	INVERTER, 12
INVERTER:
	.ascii	"\000\0009\000\0008\000\000\000\000\000\000"
	.section	.text.inverterSet,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	inverterSet, %function
inverterSet:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	cmp	r3, #9
	ble	.L2
	ldr	r3, [r7, #4]
	subs	r3, r3, #20
	b	.L3
.L2:
	ldr	r3, [r7, #4]
.L3:
	ldr	r2, .L6
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L5
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	IOWrite
.L5:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	INVERTER
	.size	inverterSet, .-inverterSet
	.section	.text.initInverter,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	initInverter, %function
initInverter:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #9
	ble	.L9
	ldr	r3, [r7, #4]
	subs	r3, r3, #20
	b	.L10
.L9:
	ldr	r3, [r7, #4]
.L10:
	str	r3, [r7, #12]
	ldr	r2, .L11
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	str	r0, [r7, #8]
	ldr	r3, [r7, #12]
	uxtb	r3, r3
	adds	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #42
	ldr	r0, [r7, #8]
	bl	IOInit
	movs	r1, #1
	ldr	r0, [r7, #8]
	bl	IOConfigGPIO
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	inverterSet
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	INVERTER
	.size	initInverter, .-initInverter
	.section	.text.inverterInit,"ax",%progbits
	.align	1
	.global	inverterInit
	.syntax unified
	.thumb
	.thumb_func
	.type	inverterInit, %function
inverterInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r0, #2
	bl	initInverter
	movs	r0, #5
	bl	initInverter
	nop
	pop	{r7, pc}
	.size	inverterInit, .-inverterInit
	.section	.text.enableInverter,"ax",%progbits
	.align	1
	.global	enableInverter
	.syntax unified
	.thumb
	.thumb_func
	.type	enableInverter, %function
enableInverter:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, #-1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, .L23
	cmp	r3, r2
	bne	.L15
	movs	r3, #0
	str	r3, [r7, #12]
.L15:
	ldr	r3, [r7, #4]
	ldr	r2, .L23+4
	cmp	r3, r2
	bne	.L16
	movs	r3, #1
	str	r3, [r7, #12]
.L16:
	ldr	r3, [r7, #4]
	ldr	r2, .L23+8
	cmp	r3, r2
	bne	.L17
	movs	r3, #2
	str	r3, [r7, #12]
.L17:
	ldr	r3, [r7, #4]
	ldr	r2, .L23+12
	cmp	r3, r2
	bne	.L18
	movs	r3, #3
	str	r3, [r7, #12]
.L18:
	ldr	r3, [r7, #4]
	ldr	r2, .L23+16
	cmp	r3, r2
	bne	.L19
	movs	r3, #4
	str	r3, [r7, #12]
.L19:
	ldr	r3, [r7, #4]
	ldr	r2, .L23+20
	cmp	r3, r2
	bne	.L20
	movs	r3, #5
	str	r3, [r7, #12]
.L20:
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	beq	.L22
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	inverterSet
.L22:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	1073811456
	.word	1073759232
	.word	1073760256
	.word	1073761280
	.word	1073762304
	.word	1073812480
	.size	enableInverter, .-enableInverter
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
