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
	.file	"usb_core.c"
	.text
	.section	.text.USB_OTG_EnableCommonInt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EnableCommonInt, %function
USB_OTG_EnableCommonInt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r2, #-1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mvn	r2, #1073741824
	str	r2, [r3, #20]
	ldrb	r3, [r7, #15]
	orr	r3, r3, #128
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #13]
	orr	r3, r3, #8
	strb	r3, [r7, #13]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #24]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_EnableCommonInt, .-USB_OTG_EnableCommonInt
	.section	.text.USB_OTG_CoreReset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_CoreReset, %function
USB_OTG_CoreReset:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #19]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
.L5:
	movs	r0, #3
	bl	USB_OTG_BSP_uDelay
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, .L10
	cmp	r3, r2
	bls	.L3
	movs	r3, #0
	b	.L4
.L3:
	ldr	r3, [r7, #12]
	ubfx	r3, r3, #31, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L5
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	orr	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
.L8:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, .L10
	cmp	r3, r2
	bhi	.L9
	ldr	r3, [r7, #12]
	ubfx	r3, r3, #0, #1
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L8
	b	.L7
.L9:
	nop
.L7:
	movs	r0, #3
	bl	USB_OTG_BSP_uDelay
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
.L4:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L11:
	.align	2
.L10:
	.word	200000
	.size	USB_OTG_CoreReset, .-USB_OTG_CoreReset
	.section	.text.USB_OTG_WritePacket,"ax",%progbits
	.align	1
	.global	USB_OTG_WritePacket
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_WritePacket, %function
USB_OTG_WritePacket:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r1
	strb	r3, [r7, #7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #4]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #27]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L13
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	ldrh	r3, [r7, #4]
	adds	r3, r3, #3
	cmp	r3, #0
	bge	.L14
	adds	r3, r3, #3
.L14:
	asrs	r3, r3, #2
	str	r3, [r7, #20]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	adds	r3, r3, #50
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L15
.L16:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L15:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L16
.L13:
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_WritePacket, .-USB_OTG_WritePacket
	.section	.text.USB_OTG_ReadPacket,"ax",%progbits
	.align	1
	.global	USB_OTG_ReadPacket
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_ReadPacket, %function
USB_OTG_ReadPacket:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	str	r3, [r7, #28]
	ldrh	r3, [r7, #6]
	adds	r3, r3, #3
	cmp	r3, #0
	bge	.L19
	adds	r3, r3, #3
.L19:
	asrs	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #208]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L20
.L21:
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L20:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L21
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_ReadPacket, .-USB_OTG_ReadPacket
	.section	.text.USB_OTG_SelectCore,"ax",%progbits
	.align	1
	.global	USB_OTG_SelectCore
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_SelectCore, %function
USB_OTG_SelectCore:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #3]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #2]
	ldr	r3, [r7, #4]
	movs	r2, #64
	strh	r2, [r3, #4]	@ movhi
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L24
	mov	r3, #1342177280
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #11]
	ldr	r3, [r7, #4]
	movs	r2, #8
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	mov	r2, #320
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #8]
	b	.L25
.L24:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L25
	ldr	r3, .L33
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #11]
	ldr	r3, [r7, #4]
	movs	r2, #12
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #6
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	mov	r2, #1280
	strh	r2, [r3, #6]	@ movhi
.L25:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	add	r3, r3, #2048
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L26
.L27:
	ldr	r3, [r7, #20]
	lsls	r2, r3, #5
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r1, [r3, #8]
	ldr	r3, [r7, #20]
	lsls	r2, r3, #5
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r1, [r3, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L26:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r3, r2
	bcc	.L27
	ldr	r3, [r7, #16]
	add	r3, r3, #1024
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, #1088
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #204]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L28
.L29:
	ldr	r3, [r7, #20]
	lsls	r2, r3, #5
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #34
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r1, [r3, #8]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L28:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r3, r2
	bcc	.L29
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L30
.L31:
	ldr	r3, [r7, #20]
	lsls	r2, r3, #12
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	add	r3, r3, #4096
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #50
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r1, [r3, #8]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L30:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r3, r2
	bcc	.L31
	ldr	r3, [r7, #16]
	add	r3, r3, #3584
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #268]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L34:
	.align	2
.L33:
	.word	1074003968
	.size	USB_OTG_SelectCore, .-USB_OTG_SelectCore
	.section	.text.USB_OTG_CoreInit,"ax",%progbits
	.align	1
	.global	USB_OTG_CoreInit
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_CoreInit, %function
USB_OTG_CoreInit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L36
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #14]
	bfc	r3, #0, #1
	strb	r3, [r7, #14]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L37
	ldrb	r3, [r7, #14]
	orr	r3, r3, #16
	strb	r3, [r7, #14]
.L37:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #56]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldrb	r3, [r7, #16]
	bfc	r3, #6, #1
	strb	r3, [r7, #16]
	ldrb	r3, [r7, #18]
	bfc	r3, #6, #1
	strb	r3, [r7, #18]
	ldrb	r3, [r7, #18]
	bfc	r3, #1, #1
	strb	r3, [r7, #18]
	ldrb	r3, [r7, #18]
	bfc	r3, #3, #1
	strb	r3, [r7, #18]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	USB_OTG_CoreReset
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L38
	ldrb	r3, [r7, #8]
	movs	r2, #5
	bfi	r3, r2, #1, #4
	strb	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	orr	r3, r3, #32
	strb	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
	b	.L38
.L36:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldrb	r3, [r7, #16]
	orr	r3, r3, #64
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	USB_OTG_CoreReset
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #14]
	orr	r3, r3, #1
	strb	r3, [r7, #14]
	ldrb	r3, [r7, #14]
	orr	r3, r3, #32
	strb	r3, [r7, #14]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L39
	ldrb	r3, [r7, #14]
	orr	r3, r3, #16
	strb	r3, [r7, #14]
.L39:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #56]
	movs	r0, #20
	bl	USB_OTG_BSP_mDelay
.L38:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L40
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	movs	r2, #5
	bfi	r3, r2, #1, #4
	strb	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	orr	r3, r3, #32
	strb	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
.L40:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_CoreInit, .-USB_OTG_CoreInit
	.section	.text.USB_OTG_EnableGlobalInt,"ax",%progbits
	.align	1
	.global	USB_OTG_EnableGlobalInt
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EnableGlobalInt, %function
USB_OTG_EnableGlobalInt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	orr	r3, r3, #1
	strb	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_EnableGlobalInt, .-USB_OTG_EnableGlobalInt
	.section	.text.USB_OTG_DisableGlobalInt,"ax",%progbits
	.align	1
	.global	USB_OTG_DisableGlobalInt
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_DisableGlobalInt, %function
USB_OTG_DisableGlobalInt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	orr	r3, r3, #1
	strb	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #8]
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ands	r2, r2, r1
	str	r2, [r3, #8]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_DisableGlobalInt, .-USB_OTG_DisableGlobalInt
	.section	.text.USB_OTG_FlushTxFifo,"ax",%progbits
	.align	1
	.global	USB_OTG_FlushTxFifo
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_FlushTxFifo, %function
USB_OTG_FlushTxFifo:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #19]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	orr	r3, r3, #32
	str	r3, [r7, #12]
	ldr	r3, [r7]
	and	r3, r3, #31
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	bfi	r3, r2, #6, #5
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
.L49:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, .L52
	cmp	r3, r2
	bhi	.L51
	ldr	r3, [r7, #12]
	ubfx	r3, r3, #5, #1
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L49
	b	.L48
.L51:
	nop
.L48:
	movs	r0, #3
	bl	USB_OTG_BSP_uDelay
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L53:
	.align	2
.L52:
	.word	200000
	.size	USB_OTG_FlushTxFifo, .-USB_OTG_FlushTxFifo
	.section	.text.USB_OTG_FlushRxFifo,"ax",%progbits
	.align	1
	.global	USB_OTG_FlushRxFifo
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_FlushRxFifo, %function
USB_OTG_FlushRxFifo:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #19]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	orr	r3, r3, #16
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
.L57:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, .L60
	cmp	r3, r2
	bhi	.L59
	ldr	r3, [r7, #12]
	ubfx	r3, r3, #4, #1
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L57
	b	.L56
.L59:
	nop
.L56:
	movs	r0, #3
	bl	USB_OTG_BSP_uDelay
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L61:
	.align	2
.L60:
	.word	200000
	.size	USB_OTG_FlushRxFifo, .-USB_OTG_FlushRxFifo
	.section	.text.USB_OTG_SetCurrentMode,"ax",%progbits
	.align	1
	.global	USB_OTG_SetCurrentMode
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_SetCurrentMode, %function
USB_OTG_SetCurrentMode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #8]
	ldrb	r3, [r7, #11]
	bfc	r3, #5, #1
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]
	bfc	r3, #6, #1
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L63
	ldrb	r3, [r7, #11]
	orr	r3, r3, #32
	strb	r3, [r7, #11]
	b	.L64
.L63:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L64
	ldrb	r3, [r7, #11]
	orr	r3, r3, #64
	strb	r3, [r7, #11]
.L64:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
	movs	r0, #50
	bl	USB_OTG_BSP_mDelay
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_SetCurrentMode, .-USB_OTG_SetCurrentMode
	.section	.text.USB_OTG_GetMode,"ax",%progbits
	.align	1
	.global	USB_OTG_GetMode
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_GetMode, %function
USB_OTG_GetMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_GetMode, .-USB_OTG_GetMode
	.section	.text.USB_OTG_IsDeviceMode,"ax",%progbits
	.align	1
	.global	USB_OTG_IsDeviceMode
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_IsDeviceMode, %function
USB_OTG_IsDeviceMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	USB_OTG_GetMode
	mov	r3, r0
	cmp	r3, #1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_IsDeviceMode, .-USB_OTG_IsDeviceMode
	.section	.text.USB_OTG_IsHostMode,"ax",%progbits
	.align	1
	.global	USB_OTG_IsHostMode
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_IsHostMode, %function
USB_OTG_IsHostMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	USB_OTG_GetMode
	mov	r3, r0
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_IsHostMode, .-USB_OTG_IsHostMode
	.section	.text.USB_OTG_ReadCoreItr,"ax",%progbits
	.align	1
	.global	USB_OTG_ReadCoreItr
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_ReadCoreItr, %function
USB_OTG_ReadCoreItr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_ReadCoreItr, .-USB_OTG_ReadCoreItr
	.section	.text.USB_OTG_ReadOtgItr,"ax",%progbits
	.align	1
	.global	USB_OTG_ReadOtgItr
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_ReadOtgItr, %function
USB_OTG_ReadOtgItr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_ReadOtgItr, .-USB_OTG_ReadOtgItr
	.section	.text.USB_OTG_InitDevSpeed,"ax",%progbits
	.align	1
	.global	USB_OTG_InitDevSpeed
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_InitDevSpeed, %function
USB_OTG_InitDevSpeed:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]
	and	r3, r3, #3
	uxtb	r2, r3
	ldrb	r3, [r7, #12]
	bfi	r3, r2, #0, #2
	strb	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_InitDevSpeed, .-USB_OTG_InitDevSpeed
	.section	.text.USB_OTG_CoreInitDev,"ax",%progbits
	.align	1
	.global	USB_OTG_CoreInitDev
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_CoreInitDev, %function
USB_OTG_CoreInitDev:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #43]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldrb	r3, [r7, #33]
	bfc	r3, #3, #2
	strb	r3, [r7, #33]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L78
	movs	r1, #3
	ldr	r0, [r7, #4]
	bl	USB_OTG_InitDevSpeed
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movs	r2, #128
	str	r2, [r3, #36]
	movs	r3, #32
	strh	r3, [r7, #30]	@ movhi
	movs	r3, #128
	strh	r3, [r7, #28]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #40]
	ldrh	r2, [r7, #28]
	ldrh	r3, [r7, #30]
	add	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #24]	@ movhi
	movs	r3, #64
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #260]
	ldrh	r2, [r7, #24]
	ldrh	r3, [r7, #26]
	add	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #24]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #264]
	ldrh	r2, [r7, #24]
	ldrh	r3, [r7, #26]
	add	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #24]	@ movhi
	movs	r3, #64
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #268]
.L78:
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	USB_OTG_FlushTxFifo
	ldr	r0, [r7, #4]
	bl	USB_OTG_FlushRxFifo
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r2, #-1
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #0
	str	r2, [r3, #28]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L79
.L82:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	bic	r3, r3, #127
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L80
	movs	r3, #0
	str	r3, [r7, #36]
	ldrb	r3, [r7, #39]
	orr	r3, r3, #64
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]
	orr	r3, r3, #8
	strb	r3, [r7, #39]
	b	.L81
.L80:
	movs	r3, #0
	str	r3, [r7, #36]
.L81:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	movs	r2, #255
	str	r2, [r3, #8]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L79:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #44]
	cmp	r3, r2
	bcc	.L82
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L83
.L86:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #44]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	bic	r3, r3, #127
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L84
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #15]
	orr	r3, r3, #64
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	orr	r3, r3, #8
	strb	r3, [r7, #15]
	b	.L85
.L84:
	movs	r3, #0
	str	r3, [r7, #12]
.L85:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #44]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #44]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #44]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	movs	r2, #255
	str	r2, [r3, #8]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L83:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #44]
	cmp	r3, r2
	bcc	.L86
	movs	r3, #0
	str	r3, [r7, #20]
	ldrb	r3, [r7, #21]
	orr	r3, r3, #1
	strb	r3, [r7, #21]
	ldr	r1, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r1
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L87
	movs	r3, #0
	str	r3, [r7, #16]
	ldrb	r3, [r7, #16]
	orr	r3, r3, #1
	strb	r3, [r7, #16]
	ldrb	r3, [r7, #16]
	orr	r3, r3, #2
	strb	r3, [r7, #16]
	ldrh	r3, [r7, #16]	@ movhi
	movs	r2, #64
	bfi	r3, r2, #2, #9
	strh	r3, [r7, #16]	@ movhi
	ldrb	r3, [r7, #18]
	orr	r3, r3, #1
	strb	r3, [r7, #18]
	ldrh	r3, [r7, #18]	@ movhi
	movs	r2, #64
	bfi	r3, r2, #1, #9
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #16]
	str	r2, [r3, #48]
.L87:
	ldr	r0, [r7, #4]
	bl	USB_OTG_EnableDevInt
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_CoreInitDev, .-USB_OTG_CoreInitDev
	.section	.text.USB_OTG_EnableDevInt,"ax",%progbits
	.align	1
	.global	USB_OTG_EnableDevInt
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EnableDevInt, %function
USB_OTG_EnableDevInt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mvn	r2, #1073741824
	str	r2, [r3, #20]
	ldr	r0, [r7, #4]
	bl	USB_OTG_EnableCommonInt
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L90
	ldrb	r3, [r7, #8]
	orr	r3, r3, #16
	strb	r3, [r7, #8]
.L90:
	ldrb	r3, [r7, #9]
	orr	r3, r3, #8
	strb	r3, [r7, #9]
	ldrb	r3, [r7, #9]
	orr	r3, r3, #16
	strb	r3, [r7, #9]
	ldrb	r3, [r7, #9]
	orr	r3, r3, #32
	strb	r3, [r7, #9]
	ldrb	r3, [r7, #10]
	orr	r3, r3, #4
	strb	r3, [r7, #10]
	ldrb	r3, [r7, #10]
	orr	r3, r3, #8
	strb	r3, [r7, #10]
	ldrb	r3, [r7, #8]
	orr	r3, r3, #8
	strb	r3, [r7, #8]
	ldrb	r3, [r7, #10]
	orr	r3, r3, #16
	strb	r3, [r7, #10]
	ldrb	r3, [r7, #10]
	orr	r3, r3, #32
	strb	r3, [r7, #10]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r1
	str	r2, [r3, #24]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_EnableDevInt, .-USB_OTG_EnableDevInt
	.section	.text.USB_OTG_GetDeviceSpeed,"ax",%progbits
	.align	1
	.global	USB_OTG_GetDeviceSpeed
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_GetDeviceSpeed, %function
USB_OTG_GetDeviceSpeed:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	ubfx	r3, r3, #1, #2
	uxtb	r3, r3
	cmp	r3, #3
	bhi	.L93
	adr	r2, .L95
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L95:
	.word	.L97+1
	.word	.L94+1
	.word	.L96+1
	.word	.L94+1
	.p2align 1
.L97:
	movs	r3, #3
	strb	r3, [r7, #15]
	b	.L98
.L94:
	movs	r3, #2
	strb	r3, [r7, #15]
	b	.L98
.L96:
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L98
.L93:
	movs	r3, #2
	strb	r3, [r7, #15]
	nop
.L98:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_GetDeviceSpeed, .-USB_OTG_GetDeviceSpeed
	.section	.text.USB_OTG_EP0Activate,"ax",%progbits
	.align	1
	.global	USB_OTG_EP0Activate
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EP0Activate, %function
USB_OTG_EP0Activate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #16]
	ubfx	r3, r3, #1, #2
	uxtb	r3, r3
	cmp	r3, #3
	beq	.L101
	cmp	r3, #3
	bgt	.L102
	cmp	r3, #1
	bgt	.L103
	cmp	r3, #0
	bge	.L101
	b	.L102
.L103:
	cmp	r3, #2
	beq	.L104
	b	.L102
.L101:
	ldrh	r3, [r7, #12]	@ movhi
	bfc	r3, #0, #11
	strh	r3, [r7, #12]	@ movhi
	b	.L105
.L104:
	ldrh	r3, [r7, #12]	@ movhi
	movs	r2, #3
	bfi	r3, r2, #0, #11
	strh	r3, [r7, #12]	@ movhi
	b	.L105
.L102:
	ldrh	r3, [r7, #12]	@ movhi
	bfc	r3, #0, #11
	strh	r3, [r7, #12]	@ movhi
	nop
.L105:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldrb	r3, [r7, #9]
	orr	r3, r3, #1
	strb	r3, [r7, #9]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_EP0Activate, .-USB_OTG_EP0Activate
	.section	.text.USB_OTG_EPActivate,"ax",%progbits
	.align	1
	.global	USB_OTG_EPActivate
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EPActivate, %function
USB_OTG_EPActivate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #19]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L108
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movs	r3, #1
	lsls	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #8]	@ movhi
	b	.L109
.L108:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movs	r3, #1
	lsls	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
.L109:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #13]	@ zero_extendqisi2
	bic	r3, r3, #127
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L110
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ubfx	r3, r3, #0, #11
	uxth	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	bfi	r3, r2, #0, #11
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	and	r3, r3, #3
	uxtb	r2, r3
	ldrb	r3, [r7, #14]
	bfi	r3, r2, #2, #2
	strb	r3, [r7, #14]
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	and	r3, r3, #15
	uxtb	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	bfi	r3, r2, #6, #4
	strh	r3, [r7, #14]	@ movhi
	ldrb	r3, [r7, #15]
	orr	r3, r3, #16
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #13]
	orr	r3, r3, #128
	strb	r3, [r7, #13]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	str	r2, [r3]
.L110:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3, #28]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r1
	str	r2, [r3, #28]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_EPActivate, .-USB_OTG_EPActivate
	.section	.text.USB_OTG_EPDeactivate,"ax",%progbits
	.align	1
	.global	USB_OTG_EPDeactivate
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EPDeactivate, %function
USB_OTG_EPDeactivate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #19]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L113
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movs	r3, #1
	lsls	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #8]	@ movhi
	b	.L114
.L113:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movs	r3, #1
	lsls	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
.L114:
	ldrb	r3, [r7, #13]
	bfc	r3, #7, #1
	strb	r3, [r7, #13]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #8]
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ands	r2, r2, r1
	str	r2, [r3, #28]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_EPDeactivate, .-USB_OTG_EPDeactivate
	.section	.text.USB_OTG_EPStartXfer,"ax",%progbits
	.align	1
	.global	USB_OTG_EPStartXfer
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EPStartXfer, %function
USB_OTG_EPStartXfer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #31]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L117
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #16]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L118
	ldr	r3, [r7, #16]
	bfc	r3, #0, #19
	str	r3, [r7, #16]
	ldrh	r3, [r7, #18]	@ movhi
	movs	r2, #1
	bfi	r3, r2, #3, #10
	strh	r3, [r7, #18]	@ movhi
	b	.L119
.L118:
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	ubfx	r2, r3, #0, #19
	ldr	r3, [r7, #16]
	bfi	r3, r2, #0, #19
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	udiv	r3, r2, r3
	ubfx	r3, r3, #0, #10
	uxth	r2, r3
	ldrh	r3, [r7, #18]	@ movhi
	bfi	r3, r2, #3, #10
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L119
	ldrb	r3, [r7, #19]
	movs	r2, #1
	bfi	r3, r2, #5, #2
	strb	r3, [r7, #19]
.L119:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #16]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L120
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r2, [r7]
	ldr	r2, [r2, #16]
	str	r2, [r3, #20]
	b	.L121
.L120:
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L121
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L121
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movs	r3, #1
	lsls	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #24]
	orrs	r2, r2, r1
	str	r2, [r3, #52]
.L121:
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L122
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ubfx	r3, r3, #8, #14
	uxth	r3, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L123
	ldrb	r3, [r7, #23]
	orr	r3, r3, #32
	strb	r3, [r7, #23]
	b	.L122
.L123:
	ldrb	r3, [r7, #23]
	orr	r3, r3, #16
	strb	r3, [r7, #23]
.L122:
	ldrb	r3, [r7, #23]
	orr	r3, r3, #4
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]
	orr	r3, r3, #128
	strb	r3, [r7, #23]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L124
	ldr	r3, [r7]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	uxth	r3, r3
	ldr	r0, [r7, #4]
	bl	USB_OTG_WritePacket
	b	.L124
.L117:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L125
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ubfx	r2, r3, #0, #19
	ldr	r3, [r7, #16]
	bfi	r3, r2, #0, #19
	str	r3, [r7, #16]
	ldrh	r3, [r7, #18]	@ movhi
	movs	r2, #1
	bfi	r3, r2, #3, #10
	strh	r3, [r7, #18]	@ movhi
	b	.L126
.L125:
	ldr	r3, [r7]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	udiv	r3, r2, r3
	ubfx	r3, r3, #0, #10
	uxth	r2, r3
	ldrh	r3, [r7, #18]	@ movhi
	bfi	r3, r2, #3, #10
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r7, #18]	@ movhi
	ubfx	r3, r3, #3, #10
	uxth	r3, r3
	ubfx	r3, r3, #0, #19
	ldr	r2, [r7]
	ldr	r2, [r2, #8]
	ubfx	r2, r2, #0, #19
	mul	r2, r3, r2
	ubfx	r2, r2, #0, #19
	ldr	r3, [r7, #16]
	bfi	r3, r2, #0, #19
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ubfx	r3, r3, #0, #19
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #20]
.L126:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L127
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7]
	ldr	r2, [r2, #16]
	str	r2, [r3, #20]
.L127:
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L128
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L129
	ldrb	r3, [r7, #23]
	orr	r3, r3, #32
	strb	r3, [r7, #23]
	b	.L128
.L129:
	ldrb	r3, [r7, #23]
	orr	r3, r3, #16
	strb	r3, [r7, #23]
.L128:
	ldrb	r3, [r7, #23]
	orr	r3, r3, #4
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]
	orr	r3, r3, #128
	strb	r3, [r7, #23]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L124:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_EPStartXfer, .-USB_OTG_EPStartXfer
	.section	.text.USB_OTG_EP0StartXfer,"ax",%progbits
	.align	1
	.global	USB_OTG_EP0StartXfer
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EP0StartXfer, %function
USB_OTG_EP0StartXfer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #31]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L132
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L133
	ldrb	r3, [r7, #12]
	bfc	r3, #0, #7
	strb	r3, [r7, #12]
	ldrb	r3, [r7, #14]
	orr	r3, r3, #8
	strb	r3, [r7, #14]
	b	.L134
.L133:
	ldr	r3, [r7]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L135
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	str	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	and	r3, r3, #127
	uxtb	r2, r3
	ldrb	r3, [r7, #12]
	bfi	r3, r2, #0, #7
	strb	r3, [r7, #12]
	b	.L136
.L135:
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	and	r3, r3, #127
	uxtb	r2, r3
	ldrb	r3, [r7, #12]
	bfi	r3, r2, #0, #7
	strb	r3, [r7, #12]
.L136:
	ldrb	r3, [r7, #14]
	orr	r3, r3, #8
	strb	r3, [r7, #14]
.L134:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L137
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r2, [r7]
	ldr	r2, [r2, #16]
	str	r2, [r3, #20]
.L137:
	ldrb	r3, [r7, #19]
	orr	r3, r3, #4
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]
	orr	r3, r3, #128
	strb	r3, [r7, #19]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L138
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L138
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movs	r3, #1
	lsls	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #24]
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #24]
	orrs	r2, r2, r1
	str	r2, [r3, #52]
	b	.L138
.L132:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L139
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	and	r3, r3, #127
	uxtb	r2, r3
	ldrb	r3, [r7, #12]
	bfi	r3, r2, #0, #7
	strb	r3, [r7, #12]
	ldrb	r3, [r7, #14]
	orr	r3, r3, #8
	strb	r3, [r7, #14]
	b	.L140
.L139:
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	str	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	and	r3, r3, #127
	uxtb	r2, r3
	ldrb	r3, [r7, #12]
	bfi	r3, r2, #0, #7
	strb	r3, [r7, #12]
	ldrb	r3, [r7, #14]
	orr	r3, r3, #8
	strb	r3, [r7, #14]
.L140:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L141
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7]
	ldr	r2, [r2, #16]
	str	r2, [r3, #20]
.L141:
	ldrb	r3, [r7, #19]
	orr	r3, r3, #4
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]
	orr	r3, r3, #128
	strb	r3, [r7, #19]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3]
.L138:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_EP0StartXfer, .-USB_OTG_EP0StartXfer
	.section	.text.USB_OTG_EPSetStall,"ax",%progbits
	.align	1
	.global	USB_OTG_EPSetStall
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EPSetStall, %function
USB_OTG_EPSetStall:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L144
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	bic	r3, r3, #127
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L145
	ldrb	r3, [r7, #15]
	orr	r3, r3, #64
	strb	r3, [r7, #15]
.L145:
	ldrb	r3, [r7, #14]
	orr	r3, r3, #32
	strb	r3, [r7, #14]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	str	r2, [r3]
	b	.L146
.L144:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #14]
	orr	r3, r3, #32
	strb	r3, [r7, #14]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	str	r2, [r3]
.L146:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_EPSetStall, .-USB_OTG_EPSetStall
	.section	.text.USB_OTG_EPClearStall,"ax",%progbits
	.align	1
	.global	USB_OTG_EPClearStall
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EPClearStall, %function
USB_OTG_EPClearStall:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #19]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L149
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	b	.L150
.L149:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
.L150:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #14]
	bfc	r3, #5, #1
	strb	r3, [r7, #14]
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L151
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L152
.L151:
	ldrb	r3, [r7, #15]
	orr	r3, r3, #16
	strb	r3, [r7, #15]
.L152:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_EPClearStall, .-USB_OTG_EPClearStall
	.section	.text.USB_OTG_ReadDevAllOutEp_itr,"ax",%progbits
	.align	1
	.global	USB_OTG_ReadDevAllOutEp_itr
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_ReadDevAllOutEp_itr, %function
USB_OTG_ReadDevAllOutEp_itr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_ReadDevAllOutEp_itr, .-USB_OTG_ReadDevAllOutEp_itr
	.section	.text.USB_OTG_ReadDevOutEP_itr,"ax",%progbits
	.align	1
	.global	USB_OTG_ReadDevOutEP_itr
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_ReadDevOutEP_itr, %function
USB_OTG_ReadDevOutEP_itr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_ReadDevOutEP_itr, .-USB_OTG_ReadDevOutEP_itr
	.section	.text.USB_OTG_ReadDevAllInEPItr,"ax",%progbits
	.align	1
	.global	USB_OTG_ReadDevAllInEPItr
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_ReadDevAllInEPItr, %function
USB_OTG_ReadDevAllInEPItr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_ReadDevAllInEPItr, .-USB_OTG_ReadDevAllInEPItr
	.section	.text.USB_OTG_EP0_OutStart,"ax",%progbits
	.align	1
	.global	USB_OTG_EP0_OutStart
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_EP0_OutStart, %function
USB_OTG_EP0_OutStart:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #15]
	orr	r3, r3, #96
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #14]
	orr	r3, r3, #8
	strb	r3, [r7, #14]
	ldrb	r3, [r7, #12]
	movs	r2, #24
	bfi	r3, r2, #0, #7
	strb	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L162
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	addw	r2, r3, #1484
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldrb	r3, [r7, #11]
	orr	r3, r3, #128
	strb	r3, [r7, #11]
	mov	r3, #-2147450880
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	ldr	r2, [r7, #8]
	str	r2, [r3]
.L162:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_EP0_OutStart, .-USB_OTG_EP0_OutStart
	.section	.text.USB_OTG_ActiveRemoteWakeup,"ax",%progbits
	.align	1
	.global	USB_OTG_ActiveRemoteWakeup
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_ActiveRemoteWakeup, %function
USB_OTG_ActiveRemoteWakeup:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #280]
	cmp	r3, #0
	beq	.L166
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldrb	r3, [r7, #16]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L166
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L165
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	bfc	r3, #1, #1
	strb	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	bfc	r3, #0, #1
	strb	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L165:
	movs	r3, #0
	str	r3, [r7, #20]
	ldrb	r3, [r7, #20]
	orr	r3, r3, #1
	strb	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	movs	r0, #5
	bl	USB_OTG_BSP_mDelay
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #20]
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ands	r2, r2, r1
	str	r2, [r3, #4]
.L166:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_ActiveRemoteWakeup, .-USB_OTG_ActiveRemoteWakeup
	.section	.text.USB_OTG_UngateClock,"ax",%progbits
	.align	1
	.global	USB_OTG_UngateClock
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_UngateClock, %function
USB_OTG_UngateClock:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L170
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L170
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	bfc	r3, #1, #1
	strb	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	bfc	r3, #0, #1
	strb	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	ldr	r2, [r7, #8]
	str	r2, [r3]
.L170:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_UngateClock, .-USB_OTG_UngateClock
	.section	.text.USB_OTG_StopDevice,"ax",%progbits
	.align	1
	.global	USB_OTG_StopDevice
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_StopDevice, %function
USB_OTG_StopDevice:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #274]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L172
.L173:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	movs	r2, #255
	str	r2, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	movs	r2, #255
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L172:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r3, r2
	bcc	.L173
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r2, #-1
	str	r2, [r3, #24]
	ldr	r0, [r7, #4]
	bl	USB_OTG_FlushRxFifo
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	USB_OTG_FlushTxFifo
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_StopDevice, .-USB_OTG_StopDevice
	.section	.text.USB_OTG_GetEPStatus,"ax",%progbits
	.align	1
	.global	USB_OTG_GetEPStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_GetEPStatus, %function
USB_OTG_GetEPStatus:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L175
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	and	r3, r3, #32
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L176
	movs	r3, #16
	str	r3, [r7, #20]
	b	.L177
.L176:
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	and	r3, r3, #2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L178
	movs	r3, #32
	str	r3, [r7, #20]
	b	.L177
.L178:
	movs	r3, #48
	str	r3, [r7, #20]
	b	.L177
.L175:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	and	r3, r3, #32
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L179
	mov	r3, #4096
	str	r3, [r7, #20]
	b	.L177
.L179:
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	and	r3, r3, #2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L180
	mov	r3, #8192
	str	r3, [r7, #20]
	b	.L177
.L180:
	mov	r3, #12288
	str	r3, [r7, #20]
.L177:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_GetEPStatus, .-USB_OTG_GetEPStatus
	.section	.text.USB_OTG_SetEPStatus,"ax",%progbits
	.align	1
	.global	USB_OTG_SetEPStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_SetEPStatus, %function
USB_OTG_SetEPStatus:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L183
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L184
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	USB_OTG_EPSetStall
	b	.L182
.L184:
	ldr	r3, [r7, #4]
	cmp	r3, #32
	bne	.L186
	ldrb	r3, [r7, #19]
	orr	r3, r3, #8
	strb	r3, [r7, #19]
	b	.L187
.L186:
	ldr	r3, [r7, #4]
	cmp	r3, #48
	bne	.L188
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	and	r3, r3, #32
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L189
	ldr	r3, [r7, #8]
	movs	r2, #0
	strb	r2, [r3, #5]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	USB_OTG_EPClearStall
	b	.L182
.L189:
	ldrb	r3, [r7, #19]
	orr	r3, r3, #4
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #17]
	orr	r3, r3, #128
	strb	r3, [r7, #17]
	ldrb	r3, [r7, #19]
	orr	r3, r3, #128
	strb	r3, [r7, #19]
	b	.L187
.L188:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L187
	ldrb	r3, [r7, #17]
	bfc	r3, #7, #1
	strb	r3, [r7, #17]
	b	.L187
.L183:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	cmp	r3, #4096
	bne	.L190
	ldrb	r3, [r7, #18]
	orr	r3, r3, #32
	strb	r3, [r7, #18]
	b	.L187
.L190:
	ldr	r3, [r7, #4]
	cmp	r3, #8192
	bne	.L191
	ldrb	r3, [r7, #19]
	orr	r3, r3, #8
	strb	r3, [r7, #19]
	b	.L187
.L191:
	ldr	r3, [r7, #4]
	cmp	r3, #12288
	bne	.L192
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	and	r3, r3, #32
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L193
	ldr	r3, [r7, #8]
	movs	r2, #0
	strb	r2, [r3, #5]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	USB_OTG_EPClearStall
	b	.L182
.L193:
	ldrb	r3, [r7, #19]
	orr	r3, r3, #4
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #17]
	orr	r3, r3, #128
	strb	r3, [r7, #17]
	ldrb	r3, [r7, #19]
	orr	r3, r3, #128
	strb	r3, [r7, #19]
	b	.L187
.L192:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L187
	ldrb	r3, [r7, #17]
	bfc	r3, #7, #1
	strb	r3, [r7, #17]
.L187:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	str	r2, [r3]
.L182:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_SetEPStatus, .-USB_OTG_SetEPStatus
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
