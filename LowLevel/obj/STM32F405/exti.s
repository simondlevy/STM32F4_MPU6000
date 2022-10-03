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
	.file	"exti.c"
	.text
	.global	extiChannelRecs
	.section	.bss.extiChannelRecs,"aw",%nobits
	.align	2
	.type	extiChannelRecs, %object
	.size	extiChannelRecs, 64
extiChannelRecs:
	.space	64
	.section	.rodata.extiGroups,"a"
	.align	2
	.type	extiGroups, %object
	.size	extiGroups, 16
extiGroups:
	.ascii	"\000\001\002\003\004\005\005\005\005\005\006\006\006"
	.ascii	"\006\006\006"
	.section	.bss.extiGroupPriority,"aw",%nobits
	.align	2
	.type	extiGroupPriority, %object
	.size	extiGroupPriority, 7
extiGroupPriority:
	.space	7
	.section	.rodata.extiGroupIRQn,"a"
	.align	2
	.type	extiGroupIRQn, %object
	.size	extiGroupIRQn, 7
extiGroupIRQn:
	.ascii	"\006\007\010\011\012\027("
	.section	.data.triggerLookupTable,"aw"
	.align	2
	.type	triggerLookupTable, %object
	.size	triggerLookupTable, 12
triggerLookupTable:
	.word	8
	.word	12
	.word	16
	.section	.text.handlerInit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	handlerInit, %function
handlerInit:
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
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	handlerInit, .-handlerInit
	.section	.text.config,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	config, %function
config:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r0, [r7, #12]
	bl	IO_GPIOPinIdx
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	blt	.L6
	ldr	r2, .L7
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	ldr	r2, .L7+4
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	IOConfigGPIO
	ldr	r0, [r7, #12]
	bl	IO_EXTI_PortSourceGPIO
	mov	r3, r0
	uxtb	r4, r3
	ldr	r0, [r7, #12]
	bl	IO_EXTI_PinSource
	mov	r3, r0
	uxtb	r3, r3
	mov	r1, r3
	mov	r0, r4
	bl	SYSCFG_EXTILineConfig
	ldr	r0, [r7, #12]
	bl	IO_EXTI_Line
	str	r0, [r7, #32]
	ldr	r0, [r7, #32]
	bl	EXTI_ClearITPendingBit
	ldr	r3, [r7, #32]
	str	r3, [r7, #24]
	movs	r3, #0
	strb	r3, [r7, #28]
	ldrb	r3, [r7, #64]	@ zero_extendqisi2
	ldr	r2, .L7+8
	ldr	r3, [r2, r3, lsl #2]
	uxtb	r3, r3
	strb	r3, [r7, #29]
	movs	r3, #1
	strb	r3, [r7, #30]
	add	r3, r7, #24
	mov	r0, r3
	bl	EXTI_Init
	ldr	r2, .L7+12
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r3, r2
	bge	.L2
	ldr	r3, [r7, #4]
	uxtb	r1, r3
	ldr	r2, .L7+12
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	ldr	r2, .L7+16
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #20]
	ldr	r3, [r7, #4]
	asrs	r3, r3, #6
	uxtb	r3, r3
	strb	r3, [r7, #21]
	movs	r3, #0
	strb	r3, [r7, #22]
	movs	r3, #1
	strb	r3, [r7, #23]
	add	r3, r7, #20
	mov	r0, r3
	bl	NVIC_Init
	b	.L2
.L6:
	nop
.L2:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L8:
	.align	2
.L7:
	.word	extiGroups
	.word	extiChannelRecs
	.word	triggerLookupTable
	.word	extiGroupPriority
	.word	extiGroupIRQn
	.size	config, .-config
	.section	.text.enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	enable, %function
enable:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r0, [r7, #4]
	bl	IO_EXTI_Line
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L13
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L12
	ldr	r3, .L14
	ldr	r2, [r3]
	ldr	r1, .L14
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r1]
	b	.L9
.L12:
	ldr	r3, .L14
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	mvns	r3, r3
	ldr	r1, .L14
	ands	r3, r3, r2
	str	r3, [r1]
	b	.L9
.L13:
	nop
.L9:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	1073822720
	.size	enable, .-enable
	.section	.text.extiInit,"ax",%progbits
	.align	1
	.global	extiInit
	.syntax unified
	.thumb
	.thumb_func
	.type	extiInit, %function
extiInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	mov	r0, #16384
	bl	RCC_APB2PeriphClockCmd
	movs	r2, #64
	movs	r1, #0
	ldr	r0, .L17
	bl	memset
	movs	r2, #7
	movs	r1, #255
	ldr	r0, .L17+4
	bl	memset
	nop
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	extiChannelRecs
	.word	extiGroupPriority
	.size	extiInit, .-extiInit
	.section	.text.EXTI_IRQHandler,"ax",%progbits
	.align	1
	.global	EXTI_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI_IRQHandler, %function
EXTI_IRQHandler:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L22
	ldr	r2, [r3]
	ldr	r3, .L22
	ldr	r3, [r3, #20]
	ands	r3, r3, r2
	ldr	r2, [r7, #4]
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, .L22
	ldr	r3, [r7, #20]
	str	r3, [r2, #20]
	b	.L20
.L21:
	ldr	r3, [r7, #20]
	clz	r3, r3
	rsb	r3, r3, #31
	str	r3, [r7, #16]
	movs	r2, #1
	ldr	r3, [r7, #16]
	lsl	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r2, .L22+4
	ldr	r3, [r7, #16]
	ldr	r3, [r2, r3, lsl #2]
	ldr	r3, [r3]
	ldr	r1, .L22+4
	ldr	r2, [r7, #16]
	ldr	r2, [r1, r2, lsl #2]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #12]
	mvns	r3, r3
	ldr	r2, [r7, #20]
	ands	r3, r3, r2
	str	r3, [r7, #20]
.L20:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L21
	nop
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	1073822720
	.word	extiChannelRecs
	.size	EXTI_IRQHandler, .-EXTI_IRQHandler
	.section	.text.EXTI0_IRQHandler,"ax",%progbits
	.align	1
	.global	EXTI0_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI0_IRQHandler, %function
EXTI0_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r0, #1
	bl	EXTI_IRQHandler
	nop
	pop	{r7, pc}
	.size	EXTI0_IRQHandler, .-EXTI0_IRQHandler
	.section	.text.EXTI1_IRQHandler,"ax",%progbits
	.align	1
	.global	EXTI1_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI1_IRQHandler, %function
EXTI1_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r0, #2
	bl	EXTI_IRQHandler
	nop
	pop	{r7, pc}
	.size	EXTI1_IRQHandler, .-EXTI1_IRQHandler
	.section	.text.EXTI2_IRQHandler,"ax",%progbits
	.align	1
	.global	EXTI2_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI2_IRQHandler, %function
EXTI2_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r0, #4
	bl	EXTI_IRQHandler
	nop
	pop	{r7, pc}
	.size	EXTI2_IRQHandler, .-EXTI2_IRQHandler
	.section	.text.EXTI3_IRQHandler,"ax",%progbits
	.align	1
	.global	EXTI3_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI3_IRQHandler, %function
EXTI3_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r0, #8
	bl	EXTI_IRQHandler
	nop
	pop	{r7, pc}
	.size	EXTI3_IRQHandler, .-EXTI3_IRQHandler
	.section	.text.EXTI4_IRQHandler,"ax",%progbits
	.align	1
	.global	EXTI4_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI4_IRQHandler, %function
EXTI4_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r0, #16
	bl	EXTI_IRQHandler
	nop
	pop	{r7, pc}
	.size	EXTI4_IRQHandler, .-EXTI4_IRQHandler
	.section	.text.EXTI9_5_IRQHandler,"ax",%progbits
	.align	1
	.global	EXTI9_5_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI9_5_IRQHandler, %function
EXTI9_5_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	mov	r0, #992
	bl	EXTI_IRQHandler
	nop
	pop	{r7, pc}
	.size	EXTI9_5_IRQHandler, .-EXTI9_5_IRQHandler
	.section	.text.EXTI15_10_IRQHandler,"ax",%progbits
	.align	1
	.global	EXTI15_10_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI15_10_IRQHandler, %function
EXTI15_10_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	mov	r0, #64512
	bl	EXTI_IRQHandler
	nop
	pop	{r7, pc}
	.size	EXTI15_10_IRQHandler, .-EXTI15_10_IRQHandler
	.section	.text.attachInterrupt,"ax",%progbits
	.align	1
	.global	attachInterrupt
	.syntax unified
	.thumb
	.thumb_func
	.type	attachInterrupt, %function
attachInterrupt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	str	r0, [r7, #12]
	movs	r2, #0
	movs	r1, #35
	ldr	r0, [r7, #12]
	bl	IOInit
	ldr	r1, [r7]
	ldr	r0, .L32
	bl	handlerInit
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #240
	ldr	r1, .L32
	ldr	r0, [r7, #12]
	bl	config
	movs	r1, #1
	ldr	r0, [r7, #12]
	bl	enable
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L33:
	.align	2
.L32:
	.word	exti.0
	.size	attachInterrupt, .-attachInterrupt
	.section	.bss.exti.0,"aw",%nobits
	.align	2
	.type	exti.0, %object
	.size	exti.0, 4
exti.0:
	.space	4
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
