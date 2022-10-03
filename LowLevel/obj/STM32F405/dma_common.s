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
	.file	"dma_common.c"
	.text
	.section	.text.dmaAllocate,"ax",%progbits
	.align	1
	.global	dmaAllocate
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaAllocate, %function
dmaAllocate:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	dmaGetOwner
	mov	r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L2
	movs	r3, #0
	b	.L3
.L2:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r1, .L4
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #28
	ldrb	r2, [r7, #6]
	strb	r2, [r3]
	ldr	r1, .L4
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #29
	ldrb	r2, [r7, #5]
	strb	r2, [r3]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	dmaDescriptors
	.size	dmaAllocate, .-dmaAllocate
	.section	.text.dmaGetOwner,"ax",%progbits
	.align	1
	.global	dmaGetOwner
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaGetOwner, %function
dmaGetOwner:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	ldr	r2, .L8
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	dmaDescriptors
	.size	dmaGetOwner, .-dmaGetOwner
	.section	.text.dmaGetIdentifier,"ax",%progbits
	.align	1
	.global	dmaGetIdentifier
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaGetIdentifier, %function
dmaGetIdentifier:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L11
.L14:
	ldr	r1, .L15
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L12
	ldr	r3, [r7, #12]
	uxtb	r3, r3
	adds	r3, r3, #1
	uxtb	r3, r3
	b	.L13
.L12:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L11:
	ldr	r3, [r7, #12]
	cmp	r3, #15
	ble	.L14
	movs	r3, #0
.L13:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L16:
	.align	2
.L15:
	.word	dmaDescriptors
	.size	dmaGetIdentifier, .-dmaGetIdentifier
	.section	.text.dmaGetDescriptorByIdentifier,"ax",%progbits
	.align	1
	.global	dmaGetDescriptorByIdentifier
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaGetDescriptorByIdentifier, %function
dmaGetDescriptorByIdentifier:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L19
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L20:
	.align	2
.L19:
	.word	dmaDescriptors
	.size	dmaGetDescriptorByIdentifier, .-dmaGetDescriptorByIdentifier
	.section	.text.dmaGetChannel,"ax",%progbits
	.align	1
	.global	dmaGetChannel
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaGetChannel, %function
dmaGetChannel:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	lsls	r3, r3, #24
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	dmaGetChannel, .-dmaGetChannel
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
