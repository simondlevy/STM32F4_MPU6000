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
	.file	"io.c"
	.text
	.global	ioPortDefs
	.section	.rodata.ioPortDefs,"a"
	.align	2
	.type	ioPortDefs, %object
	.size	ioPortDefs, 6
ioPortDefs:
	.byte	-128
	.byte	-127
	.byte	-126
	.byte	-125
	.byte	-124
	.byte	-123
	.section	.text.IO_Rec,"ax",%progbits
	.align	1
	.global	IO_Rec
	.syntax unified
	.thumb
	.thumb_func
	.type	IO_Rec, %function
IO_Rec:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	IO_Rec, .-IO_Rec
	.section	.text.IO_GPIO,"ax",%progbits
	.align	1
	.global	IO_GPIO
	.syntax unified
	.thumb
	.thumb_func
	.type	IO_GPIO, %function
IO_GPIO:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	IO_Rec
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IO_GPIO, .-IO_GPIO
	.section	.text.IO_Pin,"ax",%progbits
	.align	1
	.global	IO_Pin
	.syntax unified
	.thumb
	.thumb_func
	.type	IO_Pin, %function
IO_Pin:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	IO_Rec
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IO_Pin, .-IO_Pin
	.section	.text.IO_GPIOPortIdx,"ax",%progbits
	.align	1
	.global	IO_GPIOPortIdx
	.syntax unified
	.thumb
	.thumb_func
	.type	IO_GPIOPortIdx, %function
IO_GPIOPortIdx:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L8
	mov	r3, #-1
	b	.L9
.L8:
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r3, r0
	add	r3, r3, #-1090519040
	add	r3, r3, #16646144
	lsrs	r3, r3, #10
.L9:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IO_GPIOPortIdx, .-IO_GPIOPortIdx
	.section	.text.IO_EXTI_PortSourceGPIO,"ax",%progbits
	.align	1
	.global	IO_EXTI_PortSourceGPIO
	.syntax unified
	.thumb
	.thumb_func
	.type	IO_EXTI_PortSourceGPIO, %function
IO_EXTI_PortSourceGPIO:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	IO_GPIOPortIdx
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IO_EXTI_PortSourceGPIO, .-IO_EXTI_PortSourceGPIO
	.section	.text.IO_GPIO_PortSource,"ax",%progbits
	.align	1
	.global	IO_GPIO_PortSource
	.syntax unified
	.thumb
	.thumb_func
	.type	IO_GPIO_PortSource, %function
IO_GPIO_PortSource:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	IO_GPIOPortIdx
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IO_GPIO_PortSource, .-IO_GPIO_PortSource
	.section	.text.IO_GPIOPinIdx,"ax",%progbits
	.align	1
	.global	IO_GPIOPinIdx
	.syntax unified
	.thumb
	.thumb_func
	.type	IO_GPIOPinIdx, %function
IO_GPIOPinIdx:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L15
	mov	r3, #-1
	b	.L16
.L15:
	ldr	r0, [r7, #4]
	bl	IO_Pin
	mov	r3, r0
	clz	r3, r3
	rsb	r3, r3, #31
.L16:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IO_GPIOPinIdx, .-IO_GPIOPinIdx
	.section	.text.IO_EXTI_PinSource,"ax",%progbits
	.align	1
	.global	IO_EXTI_PinSource
	.syntax unified
	.thumb
	.thumb_func
	.type	IO_EXTI_PinSource, %function
IO_EXTI_PinSource:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	IO_GPIOPinIdx
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IO_EXTI_PinSource, .-IO_EXTI_PinSource
	.section	.text.IO_GPIO_PinSource,"ax",%progbits
	.align	1
	.global	IO_GPIO_PinSource
	.syntax unified
	.thumb
	.thumb_func
	.type	IO_GPIO_PinSource, %function
IO_GPIO_PinSource:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	IO_GPIOPinIdx
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IO_GPIO_PinSource, .-IO_GPIO_PinSource
	.section	.text.IO_EXTI_Line,"ax",%progbits
	.align	1
	.global	IO_EXTI_Line
	.syntax unified
	.thumb
	.thumb_func
	.type	IO_EXTI_Line, %function
IO_EXTI_Line:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L22
	movs	r3, #0
	b	.L23
.L22:
	ldr	r0, [r7, #4]
	bl	IO_GPIOPinIdx
	mov	r3, r0
	movs	r2, #1
	lsl	r3, r2, r3
.L23:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IO_EXTI_Line, .-IO_EXTI_Line
	.section	.text.IORead,"ax",%progbits
	.align	1
	.global	IORead
	.syntax unified
	.thumb
	.thumb_func
	.type	IORead, %function
IORead:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L25
	movs	r3, #0
	b	.L26
.L25:
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r3, r0
	ldr	r4, [r3, #16]
	ldr	r0, [r7, #4]
	bl	IO_Pin
	mov	r3, r0
	ands	r3, r3, r4
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L26:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	IORead, .-IORead
	.section	.text.IOWrite,"ax",%progbits
	.align	1
	.global	IOWrite
	.syntax unified
	.thumb
	.thumb_func
	.type	IOWrite, %function
IOWrite:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L31
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L30
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r4, r0
	ldr	r0, [r7, #4]
	bl	IO_Pin
	mov	r3, r0
	strh	r3, [r4, #24]	@ movhi
	b	.L27
.L30:
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r4, r0
	ldr	r0, [r7, #4]
	bl	IO_Pin
	mov	r3, r0
	strh	r3, [r4, #26]	@ movhi
	b	.L27
.L31:
	nop
.L27:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	IOWrite, .-IOWrite
	.section	.text.IOHi,"ax",%progbits
	.align	1
	.global	IOHi
	.syntax unified
	.thumb
	.thumb_func
	.type	IOHi, %function
IOHi:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L35
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r4, r0
	ldr	r0, [r7, #4]
	bl	IO_Pin
	mov	r3, r0
	strh	r3, [r4, #24]	@ movhi
	b	.L32
.L35:
	nop
.L32:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	IOHi, .-IOHi
	.section	.text.IOLo,"ax",%progbits
	.align	1
	.global	IOLo
	.syntax unified
	.thumb
	.thumb_func
	.type	IOLo, %function
IOLo:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L39
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r4, r0
	ldr	r0, [r7, #4]
	bl	IO_Pin
	mov	r3, r0
	strh	r3, [r4, #26]	@ movhi
	b	.L36
.L39:
	nop
.L36:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	IOLo, .-IOLo
	.section	.text.IOToggle,"ax",%progbits
	.align	1
	.global	IOToggle
	.syntax unified
	.thumb
	.thumb_func
	.type	IOToggle, %function
IOToggle:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L44
	ldr	r0, [r7, #4]
	bl	IO_Pin
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r3, r0
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L43
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r3, r0
	ldr	r2, [r7, #12]
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	b	.L40
.L43:
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r3, r0
	ldr	r2, [r7, #12]
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	b	.L40
.L44:
	nop
.L40:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IOToggle, .-IOToggle
	.section	.text.IOInit,"ax",%progbits
	.align	1
	.global	IOInit
	.syntax unified
	.thumb
	.thumb_func
	.type	IOInit, %function
IOInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L48
	ldr	r0, [r7, #4]
	bl	IO_Rec
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #6]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #2]
	strb	r2, [r3, #7]
	b	.L45
.L48:
	nop
.L45:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IOInit, .-IOInit
	.section	.text.IORelease,"ax",%progbits
	.align	1
	.global	IORelease
	.syntax unified
	.thumb
	.thumb_func
	.type	IORelease, %function
IORelease:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L52
	ldr	r0, [r7, #4]
	bl	IO_Rec
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #6]
	b	.L49
.L52:
	nop
.L49:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IORelease, .-IORelease
	.section	.text.IOGetOwner,"ax",%progbits
	.align	1
	.global	IOGetOwner
	.syntax unified
	.thumb
	.thumb_func
	.type	IOGetOwner, %function
IOGetOwner:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L54
	movs	r3, #0
	b	.L55
.L54:
	ldr	r0, [r7, #4]
	bl	IO_Rec
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
.L55:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IOGetOwner, .-IOGetOwner
	.section	.text.IOIsFreeOrPreinit,"ax",%progbits
	.align	1
	.global	IOIsFreeOrPreinit
	.syntax unified
	.thumb
	.thumb_func
	.type	IOIsFreeOrPreinit, %function
IOIsFreeOrPreinit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	IOGetOwner
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L57
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #60
	bne	.L58
.L57:
	movs	r3, #1
	b	.L59
.L58:
	movs	r3, #0
.L59:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IOIsFreeOrPreinit, .-IOIsFreeOrPreinit
	.section	.text.IOConfigGPIO,"ax",%progbits
	.align	1
	.global	IOConfigGPIO
	.syntax unified
	.thumb
	.thumb_func
	.type	IOConfigGPIO, %function
IOConfigGPIO:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L63
	ldr	r0, [r7, #4]
	bl	IO_GPIOPortIdx
	mov	r3, r0
	ldr	r2, .L64
	ldrb	r3, [r2, r3]
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	movs	r1, #1
	mov	r0, r3
	bl	RCC_ClockCmd
	ldr	r0, [r7, #4]
	bl	IO_Pin
	mov	r3, r0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]
	and	r3, r3, #3
	uxtb	r3, r3
	strb	r3, [r7, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r3, r3
	strb	r3, [r7, #17]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #18]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r3, r3
	strb	r3, [r7, #19]
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r2, r0
	add	r3, r7, #12
	mov	r1, r3
	mov	r0, r2
	bl	GPIO_Init
	b	.L60
.L63:
	nop
.L60:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L65:
	.align	2
.L64:
	.word	ioPortDefs
	.size	IOConfigGPIO, .-IOConfigGPIO
	.section	.text.IOConfigGPIOAF,"ax",%progbits
	.align	1
	.global	IOConfigGPIOAF
	.syntax unified
	.thumb
	.thumb_func
	.type	IOConfigGPIOAF, %function
IOConfigGPIOAF:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L69
	ldr	r0, [r7, #4]
	bl	IO_GPIOPortIdx
	mov	r3, r0
	ldr	r2, .L70
	ldrb	r3, [r2, r3]
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	movs	r1, #1
	mov	r0, r3
	bl	RCC_ClockCmd
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r4, r0
	ldr	r0, [r7, #4]
	bl	IO_GPIO_PinSource
	mov	r3, r0
	uxth	r3, r3
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	mov	r1, r3
	mov	r0, r4
	bl	GPIO_PinAFConfig
	ldr	r0, [r7, #4]
	bl	IO_Pin
	mov	r3, r0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]
	and	r3, r3, #3
	uxtb	r3, r3
	strb	r3, [r7, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r3, r3
	strb	r3, [r7, #17]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #18]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r3, r3
	strb	r3, [r7, #19]
	ldr	r0, [r7, #4]
	bl	IO_GPIO
	mov	r2, r0
	add	r3, r7, #12
	mov	r1, r3
	mov	r0, r2
	bl	GPIO_Init
	b	.L66
.L69:
	nop
.L66:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L71:
	.align	2
.L70:
	.word	ioPortDefs
	.size	IOConfigGPIOAF, .-IOConfigGPIOAF
	.section	.rodata.ioDefUsedMask,"a"
	.align	2
	.type	ioDefUsedMask, %object
	.size	ioDefUsedMask, 12
ioDefUsedMask:
	.short	-1
	.short	-1
	.short	-1
	.short	-1
	.short	-1
	.short	-1
	.section	.rodata.ioDefUsedOffset,"a"
	.align	2
	.type	ioDefUsedOffset, %object
	.size	ioDefUsedOffset, 6
ioDefUsedOffset:
	.ascii	"\000\020 0@P"
	.global	ioRecs
	.section	.bss.ioRecs,"aw",%nobits
	.align	2
	.type	ioRecs, %object
	.size	ioRecs, 768
ioRecs:
	.space	768
	.section	.text.ioInitGlobal,"ax",%progbits
	.align	1
	.global	ioInitGlobal
	.syntax unified
	.thumb
	.thumb_func
	.type	ioInitGlobal, %function
ioInitGlobal:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	ldr	r3, .L78
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L73
.L77:
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L74
.L76:
	ldr	r2, .L78+4
	ldr	r3, [r7, #8]
	ldrh	r3, [r2, r3, lsl #1]
	mov	r2, r3
	ldr	r3, [r7, #4]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L75
	ldr	r3, [r7, #8]
	lsls	r3, r3, #10
	add	r3, r3, #1073741824
	add	r3, r3, #131072
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	movs	r2, #1
	ldr	r3, [r7, #4]
	lsl	r3, r2, r3
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	str	r3, [r7, #12]
.L75:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L74:
	ldr	r3, [r7, #4]
	cmp	r3, #15
	bls	.L76
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L73:
	ldr	r3, [r7, #8]
	cmp	r3, #5
	bls	.L77
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L79:
	.align	2
.L78:
	.word	ioRecs
	.word	ioDefUsedMask
	.size	ioInitGlobal, .-ioInitGlobal
	.global	__popcountsi2
	.section	.text.IOGetByTag,"ax",%progbits
	.align	1
	.global	IOGetByTag
	.syntax unified
	.thumb
	.thumb_func
	.type	IOGetByTag, %function
IOGetByTag:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #15
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	blt	.L81
	ldr	r3, [r7, #20]
	cmp	r3, #5
	ble	.L82
.L81:
	movs	r3, #0
	b	.L83
.L82:
	ldr	r2, .L85
	ldr	r3, [r7, #20]
	ldrh	r3, [r2, r3, lsl #1]
	mov	r2, r3
	ldr	r3, [r7, #16]
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L84
	movs	r3, #0
	b	.L83
.L84:
	movs	r2, #1
	ldr	r3, [r7, #16]
	lsl	r3, r2, r3
	subs	r3, r3, #1
	ldr	r1, .L85
	ldr	r2, [r7, #20]
	ldrh	r2, [r1, r2, lsl #1]
	ands	r3, r3, r2
	mov	r0, r3
	bl	__popcountsi2
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r2, .L85+4
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	ldr	r2, .L85+8
	add	r3, r3, r2
.L83:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L86:
	.align	2
.L85:
	.word	ioDefUsedMask
	.word	ioDefUsedOffset
	.word	ioRecs
	.size	IOGetByTag, .-IOGetByTag
	.section	.text.IOTraversePins,"ax",%progbits
	.align	1
	.global	IOTraversePins
	.syntax unified
	.thumb
	.thumb_func
	.type	IOTraversePins, %function
IOTraversePins:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L88
.L89:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	ldr	r2, .L90
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L88:
	ldr	r3, [r7, #12]
	cmp	r3, #95
	ble	.L89
	nop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L91:
	.align	2
.L90:
	.word	ioRecs
	.size	IOTraversePins, .-IOTraversePins
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
