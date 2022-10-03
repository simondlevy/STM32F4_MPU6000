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
	.file	"pinio.c"
	.text
	.section	.bss.pinioRuntime,"aw",%nobits
	.align	2
	.type	pinioRuntime, %object
	.size	pinioRuntime, 32
pinioRuntime:
	.space	32
	.section	.text.pinioInit,"ax",%progbits
	.align	1
	.global	pinioInit
	.syntax unified
	.thumb
	.thumb_func
	.type	pinioInit, %function
pinioInit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L2
.L3:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #24
	add	r3, r3, r7
	movs	r2, #0
	strb	r2, [r3, #-20]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #24
	add	r3, r3, r7
	movs	r2, #1
	strb	r2, [r3, #-16]
	ldrb	r3, [r7, #23]
	adds	r3, r3, #1
	strb	r3, [r7, #23]
.L2:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L3
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L4
.L11:
	adds	r2, r7, #4
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r7, #16]
	uxtb	r3, r3
	adds	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #55
	ldr	r0, [r7, #12]
	bl	IOInit
	add	r2, r7, #8
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #127
	cmp	r3, #1
	bne	.L7
	add	r2, r7, #8
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L8
	ldr	r0, [r7, #12]
	bl	IOHi
.L8:
	movs	r1, #1
	ldr	r0, [r7, #12]
	bl	IOConfigGPIO
	nop
.L7:
	add	r2, r7, #8
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L9
	ldr	r2, .L13
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r0, [r7, #12]
	bl	IOHi
	ldr	r2, .L13
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3, #5]
	b	.L10
.L9:
	ldr	r2, .L13
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r0, [r7, #12]
	bl	IOLo
	ldr	r2, .L13
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3, #5]
.L10:
	ldr	r1, .L13
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #12]
	str	r2, [r1, r3, lsl #3]
	b	.L6
.L12:
	nop
.L6:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L4:
	ldr	r3, [r7, #16]
	cmp	r3, #3
	ble	.L11
	nop
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	pinioRuntime
	.size	pinioInit, .-pinioInit
	.section	.text.pinioSet,"ax",%progbits
	.align	1
	.global	pinioSet
	.syntax unified
	.thumb
	.thumb_func
	.type	pinioSet, %function
pinioSet:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r2, .L18
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r3, [r7, #3]
	eors	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #15]
	ldr	r2, .L18
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #15]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L17
	ldr	r2, .L18
	ldr	r3, [r7, #4]
	ldr	r3, [r2, r3, lsl #3]
	ldrb	r2, [r7, #15]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	IOWrite
	ldr	r2, .L18
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r2, [r7, #15]
	strb	r2, [r3, #5]
.L17:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L19:
	.align	2
.L18:
	.word	pinioRuntime
	.size	pinioSet, .-pinioSet
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
