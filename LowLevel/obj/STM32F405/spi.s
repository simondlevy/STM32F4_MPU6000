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
	.file	"spi.c"
	.text
	.section	.text.constrain_u16,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	constrain_u16, %function
constrain_u16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #4]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #2]	@ movhi
	ldrh	r2, [r7, #6]
	ldrh	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L2
	ldrh	r2, [r7, #6]
	ldrh	r3, [r7, #2]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	uxth	r3, r3
	b	.L3
.L2:
	ldrh	r3, [r7, #4]
.L3:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	constrain_u16, .-constrain_u16
	.section	.text.__basepriRestoreMem,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__basepriRestoreMem, %function
__basepriRestoreMem:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	.syntax unified
@ 493 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MSR basepri, r3
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	__basepriRestoreMem, .-__basepriRestoreMem
	.section	.text.__basepriSetMemRetVal,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__basepriSetMemRetVal, %function
__basepriSetMemRetVal:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	.syntax unified
@ 518 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MSR basepri_max, r3
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	__basepriSetMemRetVal, .-__basepriSetMemRetVal
	.section	.rodata.BUS_SPI_FREE,"a"
	.align	2
	.type	BUS_SPI_FREE, %object
	.size	BUS_SPI_FREE, 4
BUS_SPI_FREE:
	.space	4
	.section	.rodata.BUS_SPI_LOCKED,"a"
	.align	2
	.type	BUS_SPI_LOCKED, %object
	.size	BUS_SPI_LOCKED, 4
BUS_SPI_LOCKED:
	.word	4
	.section	.bss.m_spiInfo,"aw",%nobits
	.align	2
	.type	m_spiInfo, %object
	.size	m_spiInfo, 16
m_spiInfo:
	.space	16
	.section	.bss.m_spiBusDevice,"aw",%nobits
	.align	2
	.type	m_spiBusDevice, %object
	.size	m_spiBusDevice, 16
m_spiBusDevice:
	.space	16
	.section	.text.isCcm,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	isCcm, %function
isCcm:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	cmp	r3, #268435456
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	isCcm, .-isCcm
	.section	.data.defaultInit,"aw"
	.align	2
	.type	defaultInit, %object
	.size	defaultInit, 18
defaultInit:
	.short	0
	.short	260
	.short	0
	.short	2
	.short	1
	.short	512
	.short	16
	.short	0
	.short	7
	.section	.text.spiIsBusy,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	spiIsBusy, %function
spiIsBusy:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	movs	r2, #0
	cmp	r3, r2
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	spiIsBusy, .-spiIsBusy
	.section	.text.spiDivisorToBRbits,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	spiDivisorToBRbits, %function
spiDivisorToBRbits:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r0, [r7, #4]
	bl	spiInstanceDenom
	mov	r3, r0
	mov	r2, r3
	ldrh	r3, [r7, #2]
	sdiv	r3, r3, r2
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7, #2]
	mov	r2, #256
	movs	r1, #2
	mov	r0, r3
	bl	constrain_u16
	mov	r3, r0
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7, #2]
	mov	r0, r3
	bl	ffs
	mov	r3, r0
	uxth	r3, r3
	subs	r3, r3, #2
	uxth	r3, r3
	lsls	r3, r3, #3
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	spiDivisorToBRbits, .-spiDivisorToBRbits
	.section	.text.spiSetDivisorBRreg,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	spiSetDivisorBRreg, %function
spiSetDivisorBRreg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #56
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	sxth	r2, r3
	ldrsh	r3, [r7, #14]
	mvns	r3, r3
	sxth	r3, r3
	ands	r3, r3, r2
	sxth	r3, r3
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #2]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	spiDivisorToBRbits
	mov	r3, r0
	mov	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	spiSetDivisorBRreg, .-spiSetDivisorBRreg
	.section	.text.spiInternalReadWriteBufPolled,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	spiInternalReadWriteBufPolled, %function
spiInternalReadWriteBufPolled:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	b	.L16
.L21:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L17
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L18
.L17:
	movs	r3, #255
.L18:
	strb	r3, [r7, #23]
	nop
.L19:
	movs	r1, #2
	ldr	r0, [r7, #12]
	bl	SPI_I2S_GetFlagStatus
	mov	r3, r0
	cmp	r3, #0
	beq	.L19
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SPI_I2S_SendData
	nop
.L20:
	movs	r1, #1
	ldr	r0, [r7, #12]
	bl	SPI_I2S_GetFlagStatus
	mov	r3, r0
	cmp	r3, #0
	beq	.L20
	ldr	r0, [r7, #12]
	bl	SPI_I2S_ReceiveData
	mov	r3, r0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r2, [r7, #23]
	strb	r2, [r3]
.L16:
	ldr	r3, [r7]
	subs	r2, r3, #1
	str	r2, [r7]
	cmp	r3, #0
	bne	.L21
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	spiInternalReadWriteBufPolled, .-spiInternalReadWriteBufPolled
	.section	.text.spiSequenceStart,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	spiSequenceStart, %function
spiSequenceStart:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	strb	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	movs	r1, #0
	ldr	r0, [r7, #20]
	bl	SPI_Cmd
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #4]
	cmp	r2, r3
	beq	.L24
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]
	mov	r1, r3
	mov	r0, r2
	bl	spiSetDivisorBRreg
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7, #24]
	strh	r2, [r3, #4]	@ movhi
.L24:
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #12]	@ zero_extendqisi2
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L25
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #3
	uxth	r2, r3
	ldr	r3, [r7, #20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #20]
	strh	r2, [r3]	@ movhi
	b	.L27
.L26:
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #3
	uxth	r2, r3
	ldr	r3, [r7, #20]
	strh	r2, [r3]	@ movhi
.L27:
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #12]	@ zero_extendqisi2
	ldr	r3, [r7, #24]
	strb	r2, [r3, #6]
.L25:
	movs	r1, #1
	ldr	r0, [r7, #20]
	bl	SPI_Cmd
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	b	.L28
.L32:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	isCcm
	mov	r3, r0
	cmp	r3, #0
	bne	.L33
.L29:
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	mov	r0, r3
	bl	isCcm
	mov	r3, r0
	cmp	r3, #0
	bne	.L33
.L31:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #28]
	adds	r3, r3, #16
	str	r3, [r7, #28]
.L28:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L32
	b	.L33
.L35:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	IOLo
	ldr	r3, [r7, #24]
	ldr	r0, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #8]
	bl	spiInternalReadWriteBufPolled
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	IOHi
.L34:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	add	r2, r3, #16
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
.L33:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L35
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	movs	r2, #0
	str	r2, [r3]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #16]
	bl	spiSequenceStart
	b	.L38
.L36:
	movs	r3, #0
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
.L38:
	nop
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	spiSequenceStart, .-spiSequenceStart
	.section	.text.spiInit,"ax",%progbits
	.align	1
	.global	spiInit
	.syntax unified
	.thumb
	.thumb_func
	.type	spiInit, %function
spiInit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, .L40
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r2, [r7, #7]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldrb	r2, [r7, #6]
	strb	r2, [r3, #5]
	ldr	r3, [r7, #20]
	ldrb	r2, [r7, #5]
	strb	r2, [r3, #6]
	ldr	r3, [r7, #20]
	ldr	r2, .L40+4
	str	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #5
	strb	r2, [r3, #7]
	ldr	r3, [r7, #20]
	movs	r2, #76
	strb	r2, [r3, #8]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3, #12]
	movs	r3, #0
	strb	r3, [r7, #19]
	ldr	r3, .L40
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	movs	r1, #1
	mov	r0, r3
	bl	RCC_ClockCmd
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	movs	r1, #1
	mov	r0, r3
	bl	RCC_ResetCmd
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	ldrb	r3, [r7, #19]
	adds	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #16
	bl	IOInit
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	ldrb	r3, [r7, #19]
	adds	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #17
	bl	IOInit
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	ldrb	r3, [r7, #19]
	adds	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #18
	bl	IOInit
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r2, r3
	movs	r1, #74
	bl	IOConfigGPIOAF
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r2, r3
	movs	r1, #42
	bl	IOConfigGPIOAF
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r2, r3
	movs	r1, #10
	bl	IOConfigGPIOAF
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	SPI_I2S_DeInit
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #3
	mov	r0, r3
	bl	SPI_I2S_DMACmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, .L40+8
	mov	r0, r3
	bl	SPI_Init
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r1, #1
	mov	r0, r3
	bl	SPI_Cmd
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L41:
	.align	2
.L40:
	.word	m_spiInfo
	.word	1073819648
	.word	defaultInit
	.size	spiInit, .-spiInit
	.section	.text._spiWait,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_spiWait, %function
_spiWait:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
.L43:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	movs	r2, #0
	cmp	r3, r2
	bne	.L43
	nop
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	_spiWait, .-_spiWait
	.section	.text._spiSequence,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_spiSequence, %function
_spiSequence:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	.syntax unified
@ 465 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MRS r3, basepri
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	uxtb	r3, r3
	strb	r3, [r7, #15]
	movs	r0, #16
	bl	__basepriSetMemRetVal
	mov	r3, r0
	strb	r3, [r7, #31]
	b	.L46
.L51:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	movs	r2, #4
	cmp	r3, r2
	beq	.L47
	ldr	r0, [r7, #4]
	bl	spiIsBusy
	mov	r3, r0
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L47
	b	.L48
.L49:
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	str	r3, [r7, #24]
.L48:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L49
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	movs	r4, #0
	b	.L50
.L47:
	movs	r3, #0
	strb	r3, [r7, #31]
.L46:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L51
	movs	r4, #1
.L50:
	add	r3, r7, #15
	mov	r0, r3
	bl	__basepriRestoreMem
	cmp	r4, #1
	bne	.L44
	nop
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	spiSequenceStart
.L44:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	_spiSequence, .-_spiSequence
	.section	.text._spiWriteReg,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_spiWriteReg, %function
_spiWriteReg:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	ldrb	r3, [r7, #3]
	strb	r3, [r7, #63]
	add	r3, r7, #63
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #1
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #24]
	adds	r3, r7, #2
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #1
	strb	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #1
	strb	r3, [r7, #56]
	ldr	r0, [r7, #4]
	bl	_spiWait
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	_spiSequence
	ldr	r0, [r7, #4]
	bl	_spiWait
	nop
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_spiWriteReg, .-_spiWriteReg
	.section	.text._spiSetBusInstance,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_spiSetBusInstance, %function
_spiSetBusInstance:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r2, .L56
	str	r2, [r3]
	movs	r0, #35
	bl	delay
	ldr	r3, [r7, #4]
	ldr	r2, .L56+4
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, .L56+8
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #7]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r2, #1
	movs	r1, #31
	mov	r0, r3
	bl	IOInit
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r1, #9
	mov	r0, r3
	bl	IOConfigGPIO
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	IOHi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r2, #1
	movs	r1, #31
	mov	r0, r3
	bl	IOInit
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r1, #9
	mov	r0, r3
	bl	IOConfigGPIO
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	IOHi
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L57:
	.align	2
.L56:
	.word	busDevice.0
	.word	m_spiBusDevice
	.word	m_spiInfo
	.size	_spiSetBusInstance, .-_spiSetBusInstance
	.section	.text._spiSetClkDivisor,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_spiSetClkDivisor, %function
_spiSetClkDivisor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	_spiSetClkDivisor, .-_spiSetClkDivisor
	.section	.text.spiWait,"ax",%progbits
	.align	1
	.global	spiWait
	.syntax unified
	.thumb
	.thumb_func
	.type	spiWait, %function
spiWait:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_spiWait
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	spiWait, .-spiWait
	.section	.text.spiSequence,"ax",%progbits
	.align	1
	.global	spiSequence
	.syntax unified
	.thumb
	.thumb_func
	.type	spiSequence, %function
spiSequence:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	_spiSequence
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	spiSequence, .-spiSequence
	.section	.text.spiSetBusInstance,"ax",%progbits
	.align	1
	.global	spiSetBusInstance
	.syntax unified
	.thumb
	.thumb_func
	.type	spiSetBusInstance, %function
spiSetBusInstance:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	_spiSetBusInstance
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	spiSetBusInstance, .-spiSetBusInstance
	.section	.text.spiSetClkDivisor,"ax",%progbits
	.align	1
	.global	spiSetClkDivisor
	.syntax unified
	.thumb
	.thumb_func
	.type	spiSetClkDivisor, %function
spiSetClkDivisor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7, #2]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	_spiSetClkDivisor
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	spiSetClkDivisor, .-spiSetClkDivisor
	.section	.text.spiWriteReg,"ax",%progbits
	.align	1
	.global	spiWriteReg
	.syntax unified
	.thumb
	.thumb_func
	.type	spiWriteReg, %function
spiWriteReg:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	_spiWriteReg
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	spiWriteReg, .-spiWriteReg
	.section	.text.spiGetRxBuf,"ax",%progbits
	.align	1
	.global	spiGetRxBuf
	.syntax unified
	.thumb
	.thumb_func
	.type	spiGetRxBuf, %function
spiGetRxBuf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	spiGetRxBuf, .-spiGetRxBuf
	.section	.text.spiGetTxBuf,"ax",%progbits
	.align	1
	.global	spiGetTxBuf
	.syntax unified
	.thumb
	.thumb_func
	.type	spiGetTxBuf, %function
spiGetTxBuf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	spiGetTxBuf, .-spiGetTxBuf
	.section	.text.spiSetRxBuf,"ax",%progbits
	.align	1
	.global	spiSetRxBuf
	.syntax unified
	.thumb
	.thumb_func
	.type	spiSetRxBuf, %function
spiSetRxBuf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	spiSetRxBuf, .-spiSetRxBuf
	.section	.text.spiSetTxBuf,"ax",%progbits
	.align	1
	.global	spiSetTxBuf
	.syntax unified
	.thumb
	.thumb_func
	.type	spiSetTxBuf, %function
spiSetTxBuf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	spiSetTxBuf, .-spiSetTxBuf
	.section	.bss._spi1,"aw",%nobits
	.align	2
	.type	_spi1, %object
	.size	_spi1, 28
_spi1:
	.space	28
	.section	.text.spiGetInstance,"ax",%progbits
	.align	1
	.global	spiGetInstance
	.syntax unified
	.thumb
	.thumb_func
	.type	spiGetInstance, %function
spiGetInstance:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, .L72
	bl	_spiSetBusInstance
	ldr	r3, .L72
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L73:
	.align	2
.L72:
	.word	_spi1
	.size	spiGetInstance, .-spiGetInstance
	.section	.bss.busDevice.0,"aw",%nobits
	.align	2
	.type	busDevice.0, %object
	.size	busDevice.0, 16
busDevice.0:
	.space	16
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
