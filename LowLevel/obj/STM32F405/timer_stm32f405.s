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
	.file	"timer_stm32f405.c"
	.text
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
	.global	timerConfig
	.section	.bss.timerConfig,"aw",%nobits
	.align	2
	.type	timerConfig, %object
	.size	timerConfig, 616
timerConfig:
	.space	616
	.global	timerChannelInfo
	.section	.bss.timerChannelInfo,"aw",%nobits
	.align	2
	.type	timerChannelInfo, %object
	.size	timerChannelInfo, 78
timerChannelInfo:
	.space	78
	.global	timerInfo
	.section	.bss.timerInfo,"aw",%nobits
	.align	2
	.type	timerInfo, %object
	.size	timerInfo, 14
timerInfo:
	.space	14
	.section	.text.lookupTimerIndex,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	lookupTimerIndex, %function
lookupTimerIndex:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #10
	sub	r3, r3, #1048576
	cmp	r3, #82
	bhi	.L5
	adr	r2, .L7
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L7:
	.word	.L20+1
	.word	.L19+1
	.word	.L18+1
	.word	.L17+1
	.word	.L16+1
	.word	.L15+1
	.word	.L14+1
	.word	.L13+1
	.word	.L12+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L11+1
	.word	.L10+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L5+1
	.word	.L9+1
	.word	.L8+1
	.word	.L6+1
	.p2align 1
.L11:
	movs	r3, #0
	b	.L21
.L20:
	movs	r3, #1
	b	.L21
.L19:
	movs	r3, #2
	b	.L21
.L18:
	movs	r3, #3
	b	.L21
.L17:
	movs	r3, #4
	b	.L21
.L16:
	movs	r3, #5
	b	.L21
.L15:
	movs	r3, #6
	b	.L21
.L10:
	movs	r3, #7
	b	.L21
.L9:
	movs	r3, #8
	b	.L21
.L8:
	movs	r3, #9
	b	.L21
.L6:
	movs	r3, #10
	b	.L21
.L14:
	movs	r3, #11
	b	.L21
.L13:
	movs	r3, #12
	b	.L21
.L12:
	movs	r3, #13
	b	.L21
.L5:
	movs	r3, #254
.L21:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	lookupTimerIndex, .-lookupTimerIndex
	.global	usedTimers
	.section	.rodata.usedTimers,"a"
	.align	2
	.type	usedTimers, %object
	.size	usedTimers, 56
usedTimers:
	.word	1073807360
	.word	1073741824
	.word	1073742848
	.word	1073743872
	.word	1073744896
	.word	1073745920
	.word	1073746944
	.word	1073808384
	.word	1073823744
	.word	1073824768
	.word	1073825792
	.word	1073747968
	.word	1073748992
	.word	1073750016
	.global	timerNumbers
	.section	.rodata.timerNumbers,"a"
	.align	2
	.type	timerNumbers, %object
	.size	timerNumbers, 14
timerNumbers:
	.ascii	"\001\002\003\004\005\006\007\010\011\012\013\014\015"
	.ascii	"\016"
	.section	.text.timerGetNumberByIndex,"ax",%progbits
	.align	1
	.global	timerGetNumberByIndex
	.syntax unified
	.thumb
	.thumb_func
	.type	timerGetNumberByIndex, %function
timerGetNumberByIndex:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #13
	bhi	.L23
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r2, .L25
	ldrsb	r3, [r2, r3]
	b	.L24
.L23:
	movs	r3, #0
.L24:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L26:
	.align	2
.L25:
	.word	timerNumbers
	.size	timerGetNumberByIndex, .-timerGetNumberByIndex
	.section	.text.timerGetTIMNumber,"ax",%progbits
	.align	1
	.global	timerGetTIMNumber
	.syntax unified
	.thumb
	.thumb_func
	.type	timerGetTIMNumber, %function
timerGetTIMNumber:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	lookupTimerIndex
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	bl	timerGetNumberByIndex
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerGetTIMNumber, .-timerGetTIMNumber
	.section	.text.lookupChannelIndex,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	lookupChannelIndex, %function
lookupChannelIndex:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	lsrs	r3, r3, #2
	uxth	r3, r3
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	lookupChannelIndex, .-lookupChannelIndex
	.section	.text.timerLookupChannelIndex,"ax",%progbits
	.align	1
	.global	timerLookupChannelIndex
	.syntax unified
	.thumb
	.thumb_func
	.type	timerLookupChannelIndex, %function
timerLookupChannelIndex:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	mov	r0, r3
	bl	lookupChannelIndex
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerLookupChannelIndex, .-timerLookupChannelIndex
	.section	.text.timerRCC,"ax",%progbits
	.align	1
	.global	timerRCC
	.syntax unified
	.thumb
	.thumb_func
	.type	timerRCC, %function
timerRCC:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L34
.L37:
	ldr	r2, .L38
	ldr	r3, [r7, #12]
	ldr	r3, [r2, r3, lsl #3]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L35
	ldr	r2, .L38
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	b	.L36
.L35:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L34:
	ldr	r3, [r7, #12]
	cmp	r3, #13
	ble	.L37
	movs	r3, #0
.L36:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L39:
	.align	2
.L38:
	.word	timerDefinitions
	.size	timerRCC, .-timerRCC
	.section	.text.timerInputIrq,"ax",%progbits
	.align	1
	.global	timerInputIrq
	.syntax unified
	.thumb
	.thumb_func
	.type	timerInputIrq, %function
timerInputIrq:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L41
.L44:
	ldr	r2, .L45
	ldr	r3, [r7, #12]
	ldr	r3, [r2, r3, lsl #3]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L42
	ldr	r2, .L45
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	b	.L43
.L42:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L41:
	ldr	r3, [r7, #12]
	cmp	r3, #13
	ble	.L44
	movs	r3, #0
.L43:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L46:
	.align	2
.L45:
	.word	timerDefinitions
	.size	timerInputIrq, .-timerInputIrq
	.section	.text.timerNVICConfigure,"ax",%progbits
	.align	1
	.global	timerNVICConfigure
	.syntax unified
	.thumb
	.thumb_func
	.type	timerNVICConfigure, %function
timerNVICConfigure:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]
	strb	r3, [r7, #12]
	movs	r3, #1
	strb	r3, [r7, #13]
	movs	r3, #0
	strb	r3, [r7, #14]
	movs	r3, #1
	strb	r3, [r7, #15]
	add	r3, r7, #12
	mov	r0, r3
	bl	NVIC_Init
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerNVICConfigure, .-timerNVICConfigure
	.section	.text.configTimeBase,"ax",%progbits
	.align	1
	.global	configTimeBase
	.syntax unified
	.thumb
	.thumb_func
	.type	configTimeBase, %function
configTimeBase:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	add	r3, r7, #20
	mov	r0, r3
	bl	TIM_TimeBaseStructInit
	ldrh	r3, [r7, #10]
	subs	r3, r3, #1
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r0, [r7, #12]
	bl	timerClock
	mov	r2, r0
	ldr	r3, [r7, #4]
	udiv	r3, r2, r3
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #20]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #28]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	TIM_TimeBaseInit
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	configTimeBase, .-configTimeBase
	.section	.text.timerConfigure,"ax",%progbits
	.align	1
	.global	timerConfigure
	.syntax unified
	.thumb
	.thumb_func
	.type	timerConfigure, %function
timerConfigure:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrh	r1, [r7, #10]
	ldr	r2, [r7, #4]
	mov	r0, r3
	bl	configTimeBase
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r1, #1
	mov	r0, r3
	bl	TIM_Cmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	timerInputIrq
	mov	r3, r0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	bl	timerNVICConfigure
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #27
	beq	.L50
	cmp	r3, #46
	beq	.L51
	b	.L53
.L50:
	movs	r0, #25
	bl	timerNVICConfigure
	b	.L52
.L51:
	movs	r0, #44
	bl	timerNVICConfigure
	nop
.L52:
.L53:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerConfigure, .-timerConfigure
	.section	.text.timerChInit,"ax",%progbits
	.align	1
	.global	timerChInit
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChInit, %function
timerChInit:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1
	strb	r3, [r7, #11]
	mov	r3, r2
	strb	r3, [r7, #10]
	ldr	r3, [r7, #12]
	ldr	r2, .L60
	subs	r3, r3, r2
	asrs	r3, r3, #5
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #77
	bhi	.L58
	ldr	r2, .L60+4
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldrb	r2, [r7, #11]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	lookupTimerIndex
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #13
	bhi	.L59
	ldr	r2, .L60+8
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r3, r2
	bge	.L54
	ldr	r2, .L60+12
	ldr	r3, [r7, #24]
	ldr	r3, [r2, r3, lsl #2]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	configTimeBase
	ldr	r2, .L60+12
	ldr	r3, [r7, #24]
	ldr	r3, [r2, r3, lsl #2]
	movs	r1, #1
	mov	r0, r3
	bl	TIM_Cmd
	ldrb	r3, [r7, #10]
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
	ldr	r3, [r7, #4]
	uxtb	r1, r3
	ldr	r2, .L60+8
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	b	.L54
.L58:
	nop
	b	.L54
.L59:
	nop
.L54:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L61:
	.align	2
.L60:
	.word	fullTimerHardware
	.word	timerChannelInfo
	.word	timerInfo
	.word	usedTimers
	.size	timerChInit, .-timerChInit
	.section	.text.timerChCCHandlerInit,"ax",%progbits
	.align	1
	.global	timerChCCHandlerInit
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChCCHandlerInit, %function
timerChCCHandlerInit:
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
	.size	timerChCCHandlerInit, .-timerChCCHandlerInit
	.section	.text.timerChOvrHandlerInit,"ax",%progbits
	.align	1
	.global	timerChOvrHandlerInit
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChOvrHandlerInit, %function
timerChOvrHandlerInit:
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
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	timerChOvrHandlerInit, .-timerChOvrHandlerInit
	.section	.text.timerChConfig_UpdateOverflow,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChConfig_UpdateOverflow, %function
timerChConfig_UpdateOverflow:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #36
	str	r3, [r7, #28]
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
	movs	r0, #80
	bl	__basepriSetMemRetVal
	mov	r3, r0
	strb	r3, [r7, #27]
	b	.L66
.L71:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #4
	str	r3, [r7, #28]
.L67:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L68
.L70:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L69
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	str	r2, [r3]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	adds	r3, r3, #4
	str	r3, [r7, #28]
.L69:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L68:
	ldr	r3, [r7, #20]
	cmp	r3, #3
	ble	.L70
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	strb	r3, [r7, #27]
.L66:
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L71
	add	r3, r7, #15
	mov	r0, r3
	bl	__basepriRestoreMem
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #1
	ldr	r0, [r7]
	bl	TIM_ITConfig
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerChConfig_UpdateOverflow, .-timerChConfig_UpdateOverflow
	.section	.text.timerChConfigCallbacks,"ax",%progbits
	.align	1
	.global	timerChConfigCallbacks
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChConfigCallbacks, %function
timerChConfigCallbacks:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	lookupTimerIndex
	mov	r3, r0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #13
	bhi	.L77
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	uxth	r3, r3
	mov	r0, r3
	bl	lookupChannelIndex
	mov	r3, r0
	strb	r3, [r7, #22]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L75
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	uxtb	r3, r3
	mov	r2, r3
	movs	r3, #2
	lsls	r3, r3, r2
	uxth	r3, r3
	movs	r2, #0
	mov	r1, r3
	bl	TIM_ITConfig
.L75:
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldrb	r1, [r7, #22]	@ zero_extendqisi2
	ldr	r0, .L78
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldrb	r1, [r7, #22]	@ zero_extendqisi2
	ldr	r0, .L78
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L76
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	uxtb	r3, r3
	mov	r2, r3
	movs	r3, #2
	lsls	r3, r3, r2
	uxth	r3, r3
	movs	r2, #1
	mov	r1, r3
	bl	TIM_ITConfig
.L76:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	movs	r2, #44
	mul	r3, r2, r3
	ldr	r2, .L78
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	timerChConfig_UpdateOverflow
	b	.L72
.L77:
	nop
.L72:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L79:
	.align	2
.L78:
	.word	timerConfig
	.size	timerChConfigCallbacks, .-timerChConfigCallbacks
	.section	.text.timerConfigUpdateCallback,"ax",%progbits
	.align	1
	.global	timerConfigUpdateCallback
	.syntax unified
	.thumb
	.thumb_func
	.type	timerConfigUpdateCallback, %function
timerConfigUpdateCallback:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	lookupTimerIndex
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #13
	bhi	.L83
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	ldr	r2, .L84
	movs	r1, #44
	mul	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r7]
	str	r2, [r3]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	movs	r2, #44
	mul	r3, r2, r3
	ldr	r2, .L84
	add	r3, r3, r2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	timerChConfig_UpdateOverflow
	b	.L80
.L83:
	nop
.L80:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L85:
	.align	2
.L84:
	.word	timerConfig
	.size	timerConfigUpdateCallback, .-timerConfigUpdateCallback
	.section	.text.timerChConfigCallbacksDual,"ax",%progbits
	.align	1
	.global	timerChConfigCallbacksDual
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChConfigCallbacksDual, %function
timerChConfigCallbacksDual:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	lookupTimerIndex
	mov	r3, r0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #13
	bhi	.L93
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	uxth	r3, r3
	bic	r3, r3, #4
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r3, r3
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r7, #20]
	mov	r0, r3
	bl	lookupChannelIndex
	mov	r3, r0
	strb	r3, [r7, #17]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L89
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldrh	r3, [r7, #20]
	lsrs	r3, r3, #2
	uxth	r3, r3
	mov	r2, r3
	movs	r3, #2
	lsls	r3, r3, r2
	uxth	r3, r3
	movs	r2, #0
	mov	r1, r3
	bl	TIM_ITConfig
.L89:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L90
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldrh	r3, [r7, #18]
	lsrs	r3, r3, #2
	uxth	r3, r3
	mov	r2, r3
	movs	r3, #2
	lsls	r3, r3, r2
	uxth	r3, r3
	movs	r2, #0
	mov	r1, r3
	bl	TIM_ITConfig
.L90:
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldrb	r1, [r7, #17]	@ zero_extendqisi2
	ldr	r0, .L94
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	adds	r1, r3, #1
	ldr	r0, .L94
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldrb	r1, [r7, #17]	@ zero_extendqisi2
	ldr	r0, .L94
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	adds	r1, r3, #1
	ldr	r0, .L94
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r0
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L91
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldrh	r3, [r7, #20]
	lsrs	r3, r3, #2
	uxth	r3, r3
	mov	r1, r3
	movs	r3, #2
	lsls	r3, r3, r1
	uxth	r3, r3
	mov	r1, r3
	mov	r0, r2
	bl	TIM_ClearFlag
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldrh	r3, [r7, #20]
	lsrs	r3, r3, #2
	uxth	r3, r3
	mov	r2, r3
	movs	r3, #2
	lsls	r3, r3, r2
	uxth	r3, r3
	movs	r2, #1
	mov	r1, r3
	bl	TIM_ITConfig
.L91:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L92
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldrh	r3, [r7, #18]
	lsrs	r3, r3, #2
	uxth	r3, r3
	mov	r1, r3
	movs	r3, #2
	lsls	r3, r3, r1
	uxth	r3, r3
	mov	r1, r3
	mov	r0, r2
	bl	TIM_ClearFlag
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldrh	r3, [r7, #18]
	lsrs	r3, r3, #2
	uxth	r3, r3
	mov	r2, r3
	movs	r3, #2
	lsls	r3, r3, r2
	uxth	r3, r3
	movs	r2, #1
	mov	r1, r3
	bl	TIM_ITConfig
.L92:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	movs	r2, #44
	mul	r3, r2, r3
	ldr	r2, .L94
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	timerChConfig_UpdateOverflow
	b	.L86
.L93:
	nop
.L86:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L95:
	.align	2
.L94:
	.word	timerConfig
	.size	timerChConfigCallbacksDual, .-timerChConfigCallbacksDual
	.section	.text.timerChITConfigDualLo,"ax",%progbits
	.align	1
	.global	timerChITConfigDualLo
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChITConfigDualLo, %function
timerChITConfigDualLo:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	bic	r3, r3, #4
	cmp	r3, #0
	bge	.L97
	adds	r3, r3, #3
.L97:
	asrs	r3, r3, #2
	mov	r2, r3
	movs	r3, #2
	lsls	r3, r3, r2
	uxth	r3, r3
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	bl	TIM_ITConfig
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerChITConfigDualLo, .-timerChITConfigDualLo
	.section	.text.timerChITConfig,"ax",%progbits
	.align	1
	.global	timerChITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChITConfig, %function
timerChITConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	uxtb	r3, r3
	mov	r2, r3
	movs	r3, #2
	lsls	r3, r3, r2
	uxth	r3, r3
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	bl	TIM_ITConfig
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerChITConfig, .-timerChITConfig
	.section	.text.timerChClearCCFlag,"ax",%progbits
	.align	1
	.global	timerChClearCCFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChClearCCFlag, %function
timerChClearCCFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	uxtb	r3, r3
	mov	r1, r3
	movs	r3, #2
	lsls	r3, r3, r1
	uxth	r3, r3
	mov	r1, r3
	mov	r0, r2
	bl	TIM_ClearFlag
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerChClearCCFlag, .-timerChClearCCFlag
	.section	.text.timerChConfigGPIO,"ax",%progbits
	.align	1
	.global	timerChConfigGPIO
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChConfigGPIO, %function
timerChConfigGPIO:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	mov	r3, r0
	movs	r2, #0
	movs	r1, #14
	mov	r0, r3
	bl	IOInit
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	mov	r2, r0
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	mov	r0, r2
	bl	IOConfigGPIO
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerChConfigGPIO, .-timerChConfigGPIO
	.section	.text.getFilter,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	getFilter, %function
getFilter:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	str	r3, [r7, #12]
	b	.L102
.L105:
	ldr	r2, .L106
	ldr	r3, [r7, #12]
	ldr	r3, [r2, r3, lsl #2]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bcs	.L103
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	b	.L104
.L103:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L102:
	ldr	r3, [r7, #12]
	cmp	r3, #15
	bls	.L105
	movs	r3, #15
.L104:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L107:
	.align	2
.L106:
	.word	ftab.0
	.size	getFilter, .-getFilter
	.section	.text.timerChConfigIC,"ax",%progbits
	.align	1
	.global	timerChConfigIC
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChConfigIC, %function
timerChConfigIC:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	add	r3, r7, #20
	mov	r0, r3
	bl	TIM_ICStructInit
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	uxth	r3, r3
	strh	r3, [r7, #20]	@ movhi
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L109
	movs	r3, #0
	b	.L110
.L109:
	movs	r3, #2
.L110:
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #24]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
	ldr	r0, [r7, #4]
	bl	getFilter
	mov	r3, r0
	uxth	r3, r3
	strh	r3, [r7, #28]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	TIM_ICInit
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerChConfigIC, .-timerChConfigIC
	.section	.text.timerChConfigICDual,"ax",%progbits
	.align	1
	.global	timerChConfigICDual
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChConfigICDual, %function
timerChConfigICDual:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L112
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r3, r3
	b	.L113
.L112:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L113:
	strb	r3, [r7, #31]
	add	r3, r7, #20
	mov	r0, r3
	bl	TIM_ICStructInit
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	uxth	r3, r3
	strh	r3, [r7, #20]	@ movhi
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L114
	movs	r3, #0
	b	.L115
.L114:
	movs	r3, #2
.L115:
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #24]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
	ldr	r0, [r7, #4]
	bl	getFilter
	mov	r3, r0
	uxth	r3, r3
	strh	r3, [r7, #28]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	TIM_ICInit
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	eor	r3, r3, #4
	uxtb	r3, r3
	uxth	r3, r3
	strh	r3, [r7, #20]	@ movhi
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L116
	movs	r3, #2
	b	.L117
.L116:
	movs	r3, #0
.L117:
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #2
	strh	r3, [r7, #24]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	TIM_ICInit
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerChConfigICDual, .-timerChConfigICDual
	.section	.text.timerChICPolarity,"ax",%progbits
	.align	1
	.global	timerChICPolarity
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChICPolarity, %function
timerChICPolarity:
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
	ldr	r3, [r3]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r2, r3
	movs	r3, #2
	lsls	r3, r3, r2
	mvns	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L119
	movs	r2, #0
	b	.L120
.L119:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r2, r3
	movs	r3, #2
	lsls	r3, r3, r2
	mov	r2, r3
.L120:
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	uxth	r2, r2
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	timerChICPolarity, .-timerChICPolarity
	.section	.text.timerChCCRHi,"ax",%progbits
	.align	1
	.global	timerChCCRHi
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChCCRHi, %function
timerChCCRHi:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #52
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #5]	@ zero_extendqisi2
	orr	r2, r2, #4
	uxtb	r2, r2
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	timerChCCRHi, .-timerChCCRHi
	.section	.text.timerChCCRLo,"ax",%progbits
	.align	1
	.global	timerChCCRLo
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChCCRLo, %function
timerChCCRLo:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r3, #52
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	bic	r3, r3, #4
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	timerChCCRLo, .-timerChCCRLo
	.section	.text.timerChCCR,"ax",%progbits
	.align	1
	.global	timerChCCR
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChCCR, %function
timerChCCR:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #52
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #5]	@ zero_extendqisi2
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	timerChCCR, .-timerChCCR
	.section	.text.timerChConfigOC,"ax",%progbits
	.align	1
	.global	timerChConfigOC
	.syntax unified
	.thumb
	.thumb_func
	.type	timerChConfigOC, %function
timerChConfigOC:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	add	r3, r7, #12
	mov	r0, r3
	bl	TIM_OCStructInit
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L128
	movs	r3, #32
	strh	r3, [r7, #12]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L129
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #2]
	ldrb	r3, [r7, #2]
	and	r3, r3, #1
	strb	r3, [r7, #2]
.L129:
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L130
	movs	r3, #0
	b	.L131
.L130:
	movs	r3, #2
.L131:
	strh	r3, [r7, #24]	@ movhi
	b	.L132
.L128:
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
.L132:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #12
	bhi	.L139
	adr	r2, .L135
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L135:
	.word	.L138+1
	.word	.L139+1
	.word	.L139+1
	.word	.L139+1
	.word	.L137+1
	.word	.L139+1
	.word	.L139+1
	.word	.L139+1
	.word	.L136+1
	.word	.L139+1
	.word	.L139+1
	.word	.L139+1
	.word	.L134+1
	.p2align 1
.L138:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	TIM_OC1Init
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #0
	mov	r0, r3
	bl	TIM_OC1PreloadConfig
	b	.L133
.L137:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	TIM_OC2Init
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #0
	mov	r0, r3
	bl	TIM_OC2PreloadConfig
	b	.L133
.L136:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	TIM_OC3Init
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #0
	mov	r0, r3
	bl	TIM_OC3PreloadConfig
	b	.L133
.L134:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	TIM_OC4Init
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #0
	mov	r0, r3
	bl	TIM_OC4PreloadConfig
	nop
.L133:
.L139:
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerChConfigOC, .-timerChConfigOC
	.section	.text.timCCxHandler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	timCCxHandler, %function
timCCxHandler:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	ands	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #24]
	b	.L142
.L153:
	ldr	r3, [r7, #24]
	clz	r3, r3
	str	r3, [r7, #16]
	mov	r2, #-2147483648
	ldr	r3, [r7, #16]
	lsr	r3, r2, r3
	mvns	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	subs	r3, r3, #27
	cmp	r3, #4
	bhi	.L142
	adr	r2, .L144
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L144:
	.word	.L148+1
	.word	.L147+1
	.word	.L146+1
	.word	.L145+1
	.word	.L143+1
	.p2align 1
.L143:
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L149
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	uxth	r3, r3
	subs	r3, r3, #1
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #40]
	b	.L150
.L149:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	strh	r3, [r7, #30]	@ movhi
.L150:
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	str	r3, [r7, #20]
	b	.L151
.L152:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldrh	r2, [r7, #30]
	mov	r1, r2
	ldr	r0, [r7, #20]
	blx	r3
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
.L151:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L152
	b	.L142
.L145:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #52]
	uxth	r2, r2
	mov	r1, r2
	blx	r3
	b	.L142
.L146:
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r0, [r2, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #56]
	uxth	r2, r2
	mov	r1, r2
	blx	r3
	b	.L142
.L147:
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r0, [r2, #12]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #60]
	uxth	r2, r2
	mov	r1, r2
	blx	r3
	b	.L142
.L148:
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r0, [r2, #16]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #64]
	uxth	r2, r2
	mov	r1, r2
	blx	r3
	nop
.L142:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L153
	nop
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timCCxHandler, .-timCCxHandler
	.section	.text.timUpdateHandler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	timUpdateHandler, %function
timUpdateHandler:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	ands	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #24]
	b	.L156
.L161:
	ldr	r3, [r7, #24]
	clz	r3, r3
	str	r3, [r7, #16]
	mov	r2, #-2147483648
	ldr	r3, [r7, #16]
	lsr	r3, r2, r3
	mvns	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r3, #31
	bne	.L156
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L157
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	uxth	r3, r3
	subs	r3, r3, #1
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #40]
	b	.L158
.L157:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	strh	r3, [r7, #30]	@ movhi
.L158:
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	str	r3, [r7, #20]
	b	.L159
.L160:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldrh	r2, [r7, #30]
	mov	r1, r2
	ldr	r0, [r7, #20]
	blx	r3
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
.L159:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L160
	nop
.L156:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L161
	nop
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timUpdateHandler, .-timUpdateHandler
	.section	.text.TIM1_CC_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM1_CC_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM1_CC_IRQHandler, %function
TIM1_CC_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L163
	ldr	r0, .L163+4
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L164:
	.align	2
.L163:
	.word	timerConfig
	.word	1073807360
	.size	TIM1_CC_IRQHandler, .-TIM1_CC_IRQHandler
	.section	.text.TIM1_UP_TIM10_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM1_UP_TIM10_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM1_UP_TIM10_IRQHandler, %function
TIM1_UP_TIM10_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L166
	ldr	r0, .L166+4
	bl	timCCxHandler
	ldr	r1, .L166+8
	ldr	r0, .L166+12
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L167:
	.align	2
.L166:
	.word	timerConfig
	.word	1073807360
	.word	timerConfig+396
	.word	1073824768
	.size	TIM1_UP_TIM10_IRQHandler, .-TIM1_UP_TIM10_IRQHandler
	.section	.text.TIM2_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM2_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM2_IRQHandler, %function
TIM2_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L169
	mov	r0, #1073741824
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L170:
	.align	2
.L169:
	.word	timerConfig+44
	.size	TIM2_IRQHandler, .-TIM2_IRQHandler
	.section	.text.TIM3_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM3_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM3_IRQHandler, %function
TIM3_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L172
	ldr	r0, .L172+4
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L173:
	.align	2
.L172:
	.word	timerConfig+88
	.word	1073742848
	.size	TIM3_IRQHandler, .-TIM3_IRQHandler
	.section	.text.TIM4_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM4_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM4_IRQHandler, %function
TIM4_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L175
	ldr	r0, .L175+4
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L176:
	.align	2
.L175:
	.word	timerConfig+132
	.word	1073743872
	.size	TIM4_IRQHandler, .-TIM4_IRQHandler
	.section	.text.TIM5_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM5_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM5_IRQHandler, %function
TIM5_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L178
	ldr	r0, .L178+4
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L179:
	.align	2
.L178:
	.word	timerConfig+176
	.word	1073744896
	.size	TIM5_IRQHandler, .-TIM5_IRQHandler
	.section	.text.TIM6_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM6_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM6_IRQHandler, %function
TIM6_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L181
	ldr	r0, .L181+4
	bl	timUpdateHandler
	nop
	pop	{r7, pc}
.L182:
	.align	2
.L181:
	.word	timerConfig+220
	.word	1073745920
	.size	TIM6_IRQHandler, .-TIM6_IRQHandler
	.section	.text.TIM8_CC_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM8_CC_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM8_CC_IRQHandler, %function
TIM8_CC_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L184
	ldr	r0, .L184+4
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L185:
	.align	2
.L184:
	.word	timerConfig+308
	.word	1073808384
	.size	TIM8_CC_IRQHandler, .-TIM8_CC_IRQHandler
	.section	.text.TIM8_UP_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM8_UP_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM8_UP_IRQHandler, %function
TIM8_UP_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L187
	ldr	r0, .L187+4
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L188:
	.align	2
.L187:
	.word	timerConfig+308
	.word	1073808384
	.size	TIM8_UP_IRQHandler, .-TIM8_UP_IRQHandler
	.section	.text.TIM8_UP_TIM13_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM8_UP_TIM13_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM8_UP_TIM13_IRQHandler, %function
TIM8_UP_TIM13_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L190
	ldr	r0, .L190+4
	bl	timCCxHandler
	ldr	r1, .L190+8
	ldr	r0, .L190+12
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L191:
	.align	2
.L190:
	.word	timerConfig+308
	.word	1073808384
	.word	timerConfig+528
	.word	1073748992
	.size	TIM8_UP_TIM13_IRQHandler, .-TIM8_UP_TIM13_IRQHandler
	.section	.text.TIM1_BRK_TIM9_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM1_BRK_TIM9_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM1_BRK_TIM9_IRQHandler, %function
TIM1_BRK_TIM9_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L193
	ldr	r0, .L193+4
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L194:
	.align	2
.L193:
	.word	timerConfig+352
	.word	1073823744
	.size	TIM1_BRK_TIM9_IRQHandler, .-TIM1_BRK_TIM9_IRQHandler
	.section	.text.TIM1_TRG_COM_TIM11_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM1_TRG_COM_TIM11_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM1_TRG_COM_TIM11_IRQHandler, %function
TIM1_TRG_COM_TIM11_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L196
	ldr	r0, .L196+4
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L197:
	.align	2
.L196:
	.word	timerConfig+440
	.word	1073825792
	.size	TIM1_TRG_COM_TIM11_IRQHandler, .-TIM1_TRG_COM_TIM11_IRQHandler
	.section	.text.TIM8_BRK_TIM12_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM8_BRK_TIM12_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM8_BRK_TIM12_IRQHandler, %function
TIM8_BRK_TIM12_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L199
	ldr	r0, .L199+4
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L200:
	.align	2
.L199:
	.word	timerConfig+484
	.word	1073747968
	.size	TIM8_BRK_TIM12_IRQHandler, .-TIM8_BRK_TIM12_IRQHandler
	.section	.text.TIM8_TRG_COM_TIM14_IRQHandler,"ax",%progbits
	.align	1
	.global	TIM8_TRG_COM_TIM14_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM8_TRG_COM_TIM14_IRQHandler, %function
TIM8_TRG_COM_TIM14_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r1, .L202
	ldr	r0, .L202+4
	bl	timCCxHandler
	nop
	pop	{r7, pc}
.L203:
	.align	2
.L202:
	.word	timerConfig+572
	.word	1073750016
	.size	TIM8_TRG_COM_TIM14_IRQHandler, .-TIM8_TRG_COM_TIM14_IRQHandler
	.section	.text.timerInit,"ax",%progbits
	.align	1
	.global	timerInit
	.syntax unified
	.thumb
	.thumb_func
	.type	timerInit, %function
timerInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r2, #616
	movs	r1, #0
	ldr	r0, .L211
	bl	memset
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L205
.L206:
	ldr	r2, .L211+4
	ldr	r3, [r7, #12]
	lsls	r3, r3, #5
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	timerRCC
	mov	r3, r0
	movs	r1, #1
	mov	r0, r3
	bl	RCC_ClockCmd
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L205:
	ldr	r3, [r7, #12]
	cmp	r3, #77
	bls	.L206
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L207
.L208:
	ldr	r2, .L211+8
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L207:
	ldr	r3, [r7, #8]
	cmp	r3, #77
	bls	.L208
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L209
.L210:
	ldr	r2, .L211+12
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L209:
	ldr	r3, [r7, #4]
	cmp	r3, #13
	bls	.L210
	nop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L212:
	.align	2
.L211:
	.word	timerConfig
	.word	fullTimerHardware
	.word	timerChannelInfo
	.word	timerInfo
	.size	timerInit, .-timerInit
	.section	.text.timerStart,"ax",%progbits
	.align	1
	.global	timerStart
	.syntax unified
	.thumb
	.thumb_func
	.type	timerStart, %function
timerStart:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	timerStart, .-timerStart
	.section	.text.timerForceOverflow,"ax",%progbits
	.align	1
	.global	timerForceOverflow
	.syntax unified
	.thumb
	.thumb_func
	.type	timerForceOverflow, %function
timerForceOverflow:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	lookupTimerIndex
	mov	r3, r0
	strb	r3, [r7, #22]
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
	movs	r0, #80
	bl	__basepriSetMemRetVal
	mov	r3, r0
	strb	r3, [r7, #23]
	b	.L216
.L217:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldr	r1, .L218
	movs	r0, #44
	mul	r3, r0, r3
	add	r3, r3, r1
	adds	r3, r3, #40
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
.L216:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L217
	add	r3, r7, #15
	mov	r0, r3
	bl	__basepriRestoreMem
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L219:
	.align	2
.L218:
	.word	timerConfig
	.size	timerForceOverflow, .-timerForceOverflow
	.section	.text.timerOCInit,"ax",%progbits
	.align	1
	.global	timerOCInit
	.syntax unified
	.thumb
	.thumb_func
	.type	timerOCInit, %function
timerOCInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #12
	bhi	.L227
	adr	r2, .L223
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L223:
	.word	.L226+1
	.word	.L227+1
	.word	.L227+1
	.word	.L227+1
	.word	.L225+1
	.word	.L227+1
	.word	.L227+1
	.word	.L227+1
	.word	.L224+1
	.word	.L227+1
	.word	.L227+1
	.word	.L227+1
	.word	.L222+1
	.p2align 1
.L226:
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	TIM_OC1Init
	b	.L221
.L225:
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	TIM_OC2Init
	b	.L221
.L224:
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	TIM_OC3Init
	b	.L221
.L222:
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	TIM_OC4Init
	nop
.L221:
.L227:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerOCInit, .-timerOCInit
	.section	.text.timerOCPreloadConfig,"ax",%progbits
	.align	1
	.global	timerOCPreloadConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	timerOCPreloadConfig, %function
timerOCPreloadConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #12
	bhi	.L236
	adr	r2, .L232
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L232:
	.word	.L235+1
	.word	.L236+1
	.word	.L236+1
	.word	.L236+1
	.word	.L234+1
	.word	.L236+1
	.word	.L236+1
	.word	.L236+1
	.word	.L233+1
	.word	.L236+1
	.word	.L236+1
	.word	.L236+1
	.word	.L231+1
	.p2align 1
.L235:
	ldrh	r3, [r7]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_OC1PreloadConfig
	b	.L230
.L234:
	ldrh	r3, [r7]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_OC2PreloadConfig
	b	.L230
.L233:
	ldrh	r3, [r7]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_OC3PreloadConfig
	b	.L230
.L231:
	ldrh	r3, [r7]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_OC4PreloadConfig
	nop
.L230:
.L236:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerOCPreloadConfig, .-timerOCPreloadConfig
	.section	.text.timerCCR,"ax",%progbits
	.align	1
	.global	timerCCR
	.syntax unified
	.thumb
	.thumb_func
	.type	timerCCR, %function
timerCCR:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	add	r2, r3, #52
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	timerCCR, .-timerCCR
	.section	.text.timerDmaSource,"ax",%progbits
	.align	1
	.global	timerDmaSource
	.syntax unified
	.thumb
	.thumb_func
	.type	timerDmaSource, %function
timerDmaSource:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #12
	bhi	.L241
	adr	r2, .L243
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L243:
	.word	.L246+1
	.word	.L241+1
	.word	.L241+1
	.word	.L241+1
	.word	.L245+1
	.word	.L241+1
	.word	.L241+1
	.word	.L241+1
	.word	.L244+1
	.word	.L241+1
	.word	.L241+1
	.word	.L241+1
	.word	.L242+1
	.p2align 1
.L246:
	mov	r3, #512
	b	.L247
.L245:
	mov	r3, #1024
	b	.L247
.L244:
	mov	r3, #2048
	b	.L247
.L242:
	mov	r3, #4096
	b	.L247
.L241:
	movs	r3, #0
.L247:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	timerDmaSource, .-timerDmaSource
	.section	.text.timerGetPrescalerByDesiredMhz,"ax",%progbits
	.align	1
	.global	timerGetPrescalerByDesiredMhz
	.syntax unified
	.thumb
	.thumb_func
	.type	timerGetPrescalerByDesiredMhz, %function
timerGetPrescalerByDesiredMhz:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7, #2]
	ldr	r2, .L250
	mul	r3, r2, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	timerGetPrescalerByDesiredHertz
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L251:
	.align	2
.L250:
	.word	1000000
	.size	timerGetPrescalerByDesiredMhz, .-timerGetPrescalerByDesiredMhz
	.section	.text.timerGetPeriodByPrescaler,"ax",%progbits
	.align	1
	.global	timerGetPeriodByPrescaler
	.syntax unified
	.thumb
	.thumb_func
	.type	timerGetPeriodByPrescaler, %function
timerGetPeriodByPrescaler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r0, [r7, #12]
	bl	timerClock
	mov	r2, r0
	ldrh	r3, [r7, #10]
	adds	r3, r3, #1
	udiv	r2, r2, r3
	ldr	r3, [r7, #4]
	udiv	r3, r2, r3
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerGetPeriodByPrescaler, .-timerGetPeriodByPrescaler
	.section	.text.timerGetPrescalerByDesiredHertz,"ax",%progbits
	.align	1
	.global	timerGetPrescalerByDesiredHertz
	.syntax unified
	.thumb
	.thumb_func
	.type	timerGetPrescalerByDesiredHertz, %function
timerGetPrescalerByDesiredHertz:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	timerClock
	mov	r2, r0
	ldr	r3, [r7]
	cmp	r3, r2
	bls	.L255
	movs	r3, #0
	b	.L256
.L255:
	ldr	r0, [r7, #4]
	bl	timerClock
	mov	r2, r0
	ldr	r3, [r7]
	lsrs	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7]
	udiv	r3, r2, r3
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r3, r3
.L256:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	timerGetPrescalerByDesiredHertz, .-timerGetPrescalerByDesiredHertz
	.section	.text.timerClock,"ax",%progbits
	.align	1
	.global	timerClock
	.syntax unified
	.thumb
	.thumb_func
	.type	timerClock, %function
timerClock:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L261
	cmp	r3, r2
	beq	.L258
	ldr	r3, [r7, #4]
	ldr	r2, .L261+4
	cmp	r3, r2
	beq	.L258
	ldr	r3, [r7, #4]
	ldr	r2, .L261+8
	cmp	r3, r2
	beq	.L258
	ldr	r3, [r7, #4]
	ldr	r2, .L261+12
	cmp	r3, r2
	beq	.L258
	ldr	r3, [r7, #4]
	ldr	r2, .L261+16
	cmp	r3, r2
	bne	.L259
.L258:
	ldr	r3, .L261+20
	ldr	r3, [r3]
	b	.L260
.L259:
	ldr	r3, .L261+20
	ldr	r3, [r3]
	lsrs	r3, r3, #1
.L260:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L262:
	.align	2
.L261:
	.word	1073808384
	.word	1073807360
	.word	1073823744
	.word	1073824768
	.word	1073825792
	.word	SystemCoreClock
	.size	timerClock, .-timerClock
	.global	timerDefinitions
	.section	.rodata.timerDefinitions,"a"
	.align	2
	.type	timerDefinitions, %object
	.size	timerDefinitions, 112
timerDefinitions:
	.word	1073807360
	.byte	64
	.byte	27
	.space	2
	.word	1073741824
	.byte	96
	.byte	28
	.space	2
	.word	1073742848
	.byte	97
	.byte	29
	.space	2
	.word	1073743872
	.byte	98
	.byte	30
	.space	2
	.word	1073744896
	.byte	99
	.byte	50
	.space	2
	.word	1073745920
	.byte	100
	.byte	0
	.space	2
	.word	1073746944
	.byte	101
	.byte	0
	.space	2
	.word	1073808384
	.byte	65
	.byte	46
	.space	2
	.word	1073823744
	.byte	80
	.byte	24
	.space	2
	.word	1073824768
	.byte	81
	.byte	25
	.space	2
	.word	1073825792
	.byte	82
	.byte	26
	.space	2
	.word	1073747968
	.byte	102
	.byte	43
	.space	2
	.word	1073748992
	.byte	103
	.byte	44
	.space	2
	.word	1073750016
	.byte	104
	.byte	45
	.space	2
	.global	fullTimerHardware
	.section	.rodata.fullTimerHardware,"a"
	.align	2
	.type	fullTimerHardware, %object
	.size	fullTimerHardware, 2496
fullTimerHardware:
	.word	1073741824
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073897608
	.word	100663296
	.word	1073897656
	.word	100663296
	.byte	8
	.space	3
	.word	1073741824
	.byte	17
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073897632
	.word	100663296
	.word	1073897656
	.word	100663296
	.byte	8
	.space	3
	.word	1073741824
	.byte	18
	.byte	8
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073897512
	.word	100663296
	.word	1073897656
	.word	100663296
	.byte	8
	.space	3
	.word	1073741824
	.byte	19
	.byte	12
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073897656
	.word	100663296
	.word	1073897656
	.word	100663296
	.byte	8
	.space	3
	.word	1073741824
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073897608
	.word	100663296
	.word	1073897656
	.word	100663296
	.byte	8
	.space	3
	.word	1073807360
	.byte	23
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	25
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	26
	.byte	8
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	27
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073741824
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073897608
	.word	100663296
	.word	1073897656
	.word	100663296
	.byte	8
	.space	3
	.word	1073744896
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897536
	.word	201326592
	.word	1073897488
	.word	201326592
	.byte	1
	.space	3
	.word	1073744896
	.byte	17
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897584
	.word	201326592
	.word	1073897488
	.word	201326592
	.byte	1
	.space	3
	.word	1073744896
	.byte	18
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897488
	.word	201326592
	.word	1073897488
	.word	201326592
	.byte	1
	.space	3
	.word	1073744896
	.byte	19
	.byte	12
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897512
	.word	201326592
	.word	1073897488
	.word	201326592
	.byte	1
	.space	3
	.word	1073742848
	.byte	22
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897584
	.word	167772160
	.word	1073897536
	.word	167772160
	.byte	3
	.space	3
	.word	1073742848
	.byte	23
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897608
	.word	167772160
	.word	1073897536
	.word	167772160
	.byte	3
	.space	3
	.word	1073823744
	.byte	18
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073823744
	.byte	19
	.byte	4
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073808384
	.byte	21
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.space	3
	.word	1073898560
	.word	0
	.word	1073898536
	.word	234881024
	.byte	10
	.space	3
	.word	1073808384
	.byte	23
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.space	3
	.word	1073898560
	.word	0
	.word	1073898536
	.word	234881024
	.byte	10
	.space	3
	.word	1073748992
	.byte	22
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073750016
	.byte	23
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073807360
	.byte	32
	.byte	4
	.byte	0
	.byte	2
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	33
	.byte	8
	.byte	0
	.byte	2
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073741824
	.byte	35
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073897632
	.word	100663296
	.word	1073897656
	.word	100663296
	.byte	8
	.space	3
	.word	1073741824
	.byte	42
	.byte	8
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073897512
	.word	100663296
	.word	1073897656
	.word	100663296
	.byte	8
	.space	3
	.word	1073741824
	.byte	43
	.byte	12
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073897656
	.word	100663296
	.word	1073897656
	.word	100663296
	.byte	8
	.space	3
	.word	1073807360
	.byte	45
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	46
	.byte	4
	.byte	0
	.byte	2
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	47
	.byte	8
	.byte	0
	.byte	2
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073742848
	.byte	32
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897656
	.word	167772160
	.word	1073897536
	.word	167772160
	.byte	3
	.space	3
	.word	1073742848
	.byte	33
	.byte	12
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897536
	.word	167772160
	.word	1073897536
	.word	167772160
	.byte	3
	.space	3
	.word	1073742848
	.byte	36
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897584
	.word	167772160
	.word	1073897536
	.word	167772160
	.byte	3
	.space	3
	.word	1073742848
	.byte	37
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897608
	.word	167772160
	.word	1073897536
	.word	167772160
	.byte	3
	.space	3
	.word	1073743872
	.byte	38
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897488
	.word	67108864
	.word	1073897632
	.word	67108864
	.byte	7
	.space	3
	.word	1073743872
	.byte	39
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897560
	.word	67108864
	.word	1073897632
	.word	67108864
	.byte	7
	.space	3
	.word	1073743872
	.byte	40
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897656
	.word	67108864
	.word	1073897632
	.word	67108864
	.byte	7
	.space	3
	.word	1073743872
	.byte	41
	.byte	12
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	1073897632
	.word	67108864
	.byte	7
	.space	3
	.word	1073808384
	.byte	32
	.byte	4
	.byte	0
	.byte	2
	.byte	3
	.space	3
	.word	1073898560
	.word	0
	.word	1073898536
	.word	234881024
	.byte	10
	.space	3
	.word	1073808384
	.byte	33
	.byte	8
	.byte	0
	.byte	2
	.byte	3
	.space	3
	.word	1073898560
	.word	0
	.word	1073898536
	.word	234881024
	.byte	10
	.space	3
	.word	1073824768
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073825792
	.byte	41
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073808384
	.byte	46
	.byte	4
	.byte	0
	.byte	2
	.byte	3
	.space	3
	.word	1073898560
	.word	0
	.word	1073898536
	.word	234881024
	.byte	10
	.space	3
	.word	1073808384
	.byte	47
	.byte	8
	.byte	0
	.byte	2
	.byte	3
	.space	3
	.word	1073898560
	.word	0
	.word	1073898536
	.word	234881024
	.byte	10
	.space	3
	.word	1073747968
	.byte	46
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073747968
	.byte	47
	.byte	4
	.byte	0
	.byte	0
	.byte	9
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073742848
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897584
	.word	167772160
	.word	1073897536
	.word	167772160
	.byte	3
	.space	3
	.word	1073742848
	.byte	55
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897608
	.word	167772160
	.word	1073897536
	.word	167772160
	.byte	3
	.space	3
	.word	1073742848
	.byte	56
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897656
	.word	167772160
	.word	1073897536
	.word	167772160
	.byte	3
	.space	3
	.word	1073742848
	.byte	57
	.byte	12
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897536
	.word	167772160
	.word	1073897536
	.word	167772160
	.byte	3
	.space	3
	.word	1073808384
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	1073898560
	.word	0
	.word	1073898536
	.word	234881024
	.byte	10
	.space	3
	.word	1073808384
	.byte	55
	.byte	4
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	1073898560
	.word	0
	.word	1073898536
	.word	234881024
	.byte	10
	.space	3
	.word	1073808384
	.byte	56
	.byte	8
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	1073898560
	.word	0
	.word	1073898536
	.word	234881024
	.byte	10
	.space	3
	.word	1073808384
	.byte	57
	.byte	12
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	1073898680
	.word	234881024
	.word	1073898536
	.word	234881024
	.byte	10
	.space	3
	.word	1073743872
	.byte	76
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897488
	.word	67108864
	.word	1073897632
	.word	67108864
	.byte	7
	.space	3
	.word	1073743872
	.byte	77
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897560
	.word	67108864
	.word	1073897632
	.word	67108864
	.byte	7
	.space	3
	.word	1073743872
	.byte	78
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	1073897656
	.word	67108864
	.word	1073897632
	.word	67108864
	.byte	7
	.space	3
	.word	1073743872
	.byte	79
	.byte	12
	.byte	0
	.byte	0
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	1073897632
	.word	67108864
	.byte	7
	.space	3
	.word	1073807360
	.byte	88
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	89
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	90
	.byte	4
	.byte	0
	.byte	2
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	91
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	92
	.byte	8
	.byte	0
	.byte	2
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	93
	.byte	8
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073898656
	.word	0
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073807360
	.byte	94
	.byte	12
	.byte	0
	.byte	0
	.byte	1
	.space	3
	.word	1073898608
	.word	201326592
	.word	1073898632
	.word	201326592
	.byte	14
	.space	3
	.word	1073823744
	.byte	85
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073823744
	.byte	86
	.byte	4
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073824768
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	1073825792
	.byte	103
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.space	256
	.global	freeOwner
	.section	.rodata.freeOwner,"a"
	.align	2
	.type	freeOwner, %object
	.size	freeOwner, 2
freeOwner:
	.space	2
	.section	.bss.timerOwners,"aw",%nobits
	.align	2
	.type	timerOwners, %object
	.size	timerOwners, 42
timerOwners:
	.space	42
	.section	.bss.timerIOConfig,"aw",%nobits
	.align	2
	.type	timerIOConfig, %object
	.size	timerIOConfig, 63
timerIOConfig:
	.space	63
	.section	.text.timerGetOwner,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	timerGetOwner, %function
timerGetOwner:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L264
.L267:
	ldr	r1, .L268
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r0, [r3]	@ zero_extendqisi2
	ldr	r1, .L268
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	bl	timerGetByTagAndIndex
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L265
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L265
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	ldr	r2, .L268+4
	add	r3, r3, r2
	b	.L266
.L265:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L264:
	ldr	r3, [r7, #12]
	cmp	r3, #20
	bls	.L267
	ldr	r3, .L268+8
.L266:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L269:
	.align	2
.L268:
	.word	timerIOConfig
	.word	timerOwners
	.word	freeOwner
	.size	timerGetOwner, .-timerGetOwner
	.section	.text.timerGetByTagAndIndex,"ax",%progbits
	.align	1
	.global	timerGetByTagAndIndex
	.syntax unified
	.thumb
	.thumb_func
	.type	timerGetByTagAndIndex, %function
timerGetByTagAndIndex:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L271
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L272
.L271:
	movs	r3, #0
	b	.L273
.L272:
	movs	r3, #1
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L274
.L277:
	ldr	r2, .L278
	ldr	r3, [r7, #8]
	lsls	r3, r3, #5
	add	r3, r3, r2
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L275
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	ldr	r2, [r7]
	cmp	r2, r3
	bne	.L276
	ldr	r3, [r7, #8]
	lsls	r3, r3, #5
	ldr	r2, .L278
	add	r3, r3, r2
	b	.L273
.L276:
	ldrb	r3, [r7, #15]
	adds	r3, r3, #1
	strb	r3, [r7, #15]
.L275:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L274:
	ldr	r3, [r7, #8]
	cmp	r3, #77
	bls	.L277
	movs	r3, #0
.L273:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L279:
	.align	2
.L278:
	.word	fullTimerHardware
	.size	timerGetByTagAndIndex, .-timerGetByTagAndIndex
	.section	.text.timerGetConfiguredByTag,"ax",%progbits
	.align	1
	.global	timerGetConfiguredByTag
	.syntax unified
	.thumb
	.thumb_func
	.type	timerGetConfiguredByTag, %function
timerGetConfiguredByTag:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L281
.L284:
	ldr	r1, .L286
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L282
	ldr	r1, .L286
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	adds	r3, r3, #1
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	b	.L283
.L282:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L281:
	ldr	r3, [r7, #8]
	cmp	r3, #20
	bls	.L284
.L283:
	ldrb	r2, [r7, #15]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	timerGetByTagAndIndex
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L287:
	.align	2
.L286:
	.word	timerIOConfig
	.size	timerGetConfiguredByTag, .-timerGetConfiguredByTag
	.section	.text.timerAllocate,"ax",%progbits
	.align	1
	.global	timerAllocate
	.syntax unified
	.thumb
	.thumb_func
	.type	timerAllocate, %function
timerAllocate:
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
	cmp	r3, #0
	bne	.L289
	movs	r3, #0
	b	.L290
.L289:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L291
.L294:
	ldr	r1, .L295
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L292
	ldr	r1, .L295
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	timerGetByTagAndIndex
	str	r0, [r7, #8]
	ldr	r0, [r7, #8]
	bl	timerGetOwner
	mov	r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L293
	movs	r3, #0
	b	.L290
.L293:
	ldr	r1, .L295+4
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #6]
	strb	r2, [r1, r3, lsl #1]
	ldr	r2, .L295+4
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrb	r2, [r7, #5]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #8]
	b	.L290
.L292:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L291:
	ldr	r3, [r7, #12]
	cmp	r3, #20
	bls	.L294
	movs	r3, #0
.L290:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L296:
	.align	2
.L295:
	.word	timerIOConfig
	.word	timerOwners
	.size	timerAllocate, .-timerAllocate
	.section	.text.timerioTagGetByUsage,"ax",%progbits
	.align	1
	.global	timerioTagGetByUsage
	.syntax unified
	.thumb
	.thumb_func
	.type	timerioTagGetByUsage, %function
timerioTagGetByUsage:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	timerioTagGetByUsage, .-timerioTagGetByUsage
	.section	.text.timerIoInit,"ax",%progbits
	.align	1
	.global	timerIoInit
	.syntax unified
	.thumb
	.thumb_func
	.type	timerIoInit, %function
timerIoInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L300
	movs	r2, #40
	strb	r2, [r3]
	ldr	r3, .L300
	movs	r2, #2
	strb	r2, [r3, #1]
	ldr	r3, .L300
	movs	r2, #255
	strb	r2, [r3, #2]
	ldr	r3, .L300
	movs	r2, #56
	strb	r2, [r3, #3]
	ldr	r3, .L300
	movs	r2, #2
	strb	r2, [r3, #4]
	ldr	r3, .L300
	movs	r2, #255
	strb	r2, [r3, #5]
	ldr	r3, .L300
	movs	r2, #32
	strb	r2, [r3, #6]
	ldr	r3, .L300
	movs	r2, #2
	strb	r2, [r3, #7]
	ldr	r3, .L300
	movs	r2, #255
	strb	r2, [r3, #8]
	ldr	r3, .L300
	movs	r2, #33
	strb	r2, [r3, #9]
	ldr	r3, .L300
	movs	r2, #2
	strb	r2, [r3, #10]
	ldr	r3, .L300
	movs	r2, #255
	strb	r2, [r3, #11]
	ldr	r3, .L300
	movs	r2, #19
	strb	r2, [r3, #12]
	ldr	r3, .L300
	movs	r2, #1
	strb	r2, [r3, #13]
	ldr	r3, .L300
	movs	r2, #1
	strb	r2, [r3, #14]
	ldr	r3, .L300
	movs	r2, #18
	strb	r2, [r3, #15]
	ldr	r3, .L300
	movs	r2, #1
	strb	r2, [r3, #16]
	ldr	r3, .L300
	movs	r2, #0
	strb	r2, [r3, #17]
	ldr	r3, .L300
	movs	r2, #38
	strb	r2, [r3, #18]
	ldr	r3, .L300
	movs	r2, #1
	strb	r2, [r3, #19]
	ldr	r3, .L300
	movs	r2, #0
	strb	r2, [r3, #20]
	ldr	r3, .L300
	movs	r2, #24
	strb	r2, [r3, #21]
	ldr	r3, .L300
	movs	r2, #1
	strb	r2, [r3, #22]
	ldr	r3, .L300
	movs	r2, #255
	strb	r2, [r3, #23]
	ldr	r3, .L300
	movs	r2, #25
	strb	r2, [r3, #24]
	ldr	r3, .L300
	movs	r2, #1
	strb	r2, [r3, #25]
	ldr	r3, .L300
	movs	r2, #0
	strb	r2, [r3, #26]
	ldr	r3, .L300
	movs	r2, #26
	strb	r2, [r3, #27]
	ldr	r3, .L300
	movs	r2, #1
	strb	r2, [r3, #28]
	ldr	r3, .L300
	movs	r2, #0
	strb	r2, [r3, #29]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L301:
	.align	2
.L300:
	.word	timerIOConfig
	.size	timerIoInit, .-timerIoInit
	.section	.rodata.ftab.0,"a"
	.align	2
	.type	ftab.0, %object
	.size	ftab.0, 64
ftab.0:
	.word	1
	.word	2
	.word	4
	.word	8
	.word	12
	.word	16
	.word	24
	.word	32
	.word	48
	.word	64
	.word	80
	.word	96
	.word	128
	.word	160
	.word	192
	.word	256
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
