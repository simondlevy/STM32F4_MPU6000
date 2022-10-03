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
	.file	"stm32f4xx_adc.c"
	.text
	.section	.text.ADC_DeInit,"ax",%progbits
	.align	1
	.global	ADC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_DeInit, %function
ADC_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	mov	r0, #256
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	mov	r0, #256
	bl	RCC_APB2PeriphResetCmd
	nop
	pop	{r7, pc}
	.size	ADC_DeInit, .-ADC_DeInit
	.section	.text.ADC_Init,"ax",%progbits
	.align	1
	.global	ADC_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_Init, %function
ADC_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	strb	r3, [r7, #11]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #50331648
	bic	r3, r3, #256
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	lsls	r2, r3, #8
	ldr	r3, [r7]
	ldr	r3, [r3]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, .L3
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	lsls	r3, r3, #1
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #15728640
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	subs	r3, r3, #1
	uxtb	r2, r3
	ldrb	r3, [r7, #11]
	orrs	r3, r3, r2
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	lsls	r3, r3, #20
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #44]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	-1056966659
	.size	ADC_Init, .-ADC_Init
	.section	.text.ADC_StructInit,"ax",%progbits
	.align	1
	.global	ADC_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_StructInit, %function
ADC_StructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_StructInit, .-ADC_StructInit
	.section	.text.ADC_CommonInit,"ax",%progbits
	.align	1
	.global	ADC_CommonInit
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_CommonInit, %function
ADC_CommonInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L7
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, .L7+4
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L7
	ldr	r3, [r7, #12]
	str	r3, [r2, #4]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	1073816320
	.word	-249632
	.size	ADC_CommonInit, .-ADC_CommonInit
	.section	.text.ADC_CommonStructInit,"ax",%progbits
	.align	1
	.global	ADC_CommonStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_CommonStructInit, %function
ADC_CommonStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_CommonStructInit, .-ADC_CommonStructInit
	.section	.text.ADC_Cmd,"ax",%progbits
	.align	1
	.global	ADC_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_Cmd, %function
ADC_Cmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L11
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L13
.L11:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	bic	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L13:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_Cmd, .-ADC_Cmd
	.section	.text.ADC_AnalogWatchdogCmd,"ax",%progbits
	.align	1
	.global	ADC_AnalogWatchdogCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_AnalogWatchdogCmd, %function
ADC_AnalogWatchdogCmd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #12582912
	bic	r3, r3, #512
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_AnalogWatchdogCmd, .-ADC_AnalogWatchdogCmd
	.section	.text.ADC_AnalogWatchdogThresholdsConfig,"ax",%progbits
	.align	1
	.global	ADC_AnalogWatchdogThresholdsConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_AnalogWatchdogThresholdsConfig, %function
ADC_AnalogWatchdogThresholdsConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	ldrh	r2, [r7, #2]
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldrh	r2, [r7]
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_AnalogWatchdogThresholdsConfig, .-ADC_AnalogWatchdogThresholdsConfig
	.section	.text.ADC_AnalogWatchdogSingleChannelConfig,"ax",%progbits
	.align	1
	.global	ADC_AnalogWatchdogSingleChannelConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_AnalogWatchdogSingleChannelConfig, %function
ADC_AnalogWatchdogSingleChannelConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #31
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_AnalogWatchdogSingleChannelConfig, .-ADC_AnalogWatchdogSingleChannelConfig
	.section	.text.ADC_TempSensorVrefintCmd,"ax",%progbits
	.align	1
	.global	ADC_TempSensorVrefintCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_TempSensorVrefintCmd, %function
ADC_TempSensorVrefintCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L18
	ldr	r3, .L21
	ldr	r3, [r3, #4]
	ldr	r2, .L21
	orr	r3, r3, #8388608
	str	r3, [r2, #4]
	b	.L20
.L18:
	ldr	r3, .L21
	ldr	r3, [r3, #4]
	ldr	r2, .L21
	bic	r3, r3, #8388608
	str	r3, [r2, #4]
.L20:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L22:
	.align	2
.L21:
	.word	1073816320
	.size	ADC_TempSensorVrefintCmd, .-ADC_TempSensorVrefintCmd
	.section	.text.ADC_VBATCmd,"ax",%progbits
	.align	1
	.global	ADC_VBATCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_VBATCmd, %function
ADC_VBATCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L24
	ldr	r3, .L27
	ldr	r3, [r3, #4]
	ldr	r2, .L27
	orr	r3, r3, #4194304
	str	r3, [r2, #4]
	b	.L26
.L24:
	ldr	r3, .L27
	ldr	r3, [r3, #4]
	ldr	r2, .L27
	bic	r3, r3, #4194304
	str	r3, [r2, #4]
.L26:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L28:
	.align	2
.L27:
	.word	1073816320
	.size	ADC_VBATCmd, .-ADC_VBATCmd
	.section	.text.ADC_RegularChannelConfig,"ax",%progbits
	.align	1
	.global	ADC_RegularChannelConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_RegularChannelConfig, %function
ADC_RegularChannelConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #3]
	mov	r3, r1
	strb	r3, [r7, #2]
	mov	r3, r2
	strb	r3, [r7, #1]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L30
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	sub	r2, r3, #10
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #7
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	mvns	r3, r3
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	sub	r2, r3, #10
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r1, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #12]
	b	.L31
.L30:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #7
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	mvns	r3, r3
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r1, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
.L31:
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #6
	bhi	.L32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	subs	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #31
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	mvns	r3, r3
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldrb	r1, [r7, #3]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	subs	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r1, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #52]
	b	.L35
.L32:
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #12
	bhi	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	subs	r2, r3, #7
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #31
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	mvns	r3, r3
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldrb	r1, [r7, #3]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	subs	r2, r3, #7
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r1, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #48]
	b	.L35
.L34:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	sub	r2, r3, #13
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #31
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	mvns	r3, r3
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldrb	r1, [r7, #3]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	sub	r2, r3, #13
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r1, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #44]
.L35:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_RegularChannelConfig, .-ADC_RegularChannelConfig
	.section	.text.ADC_SoftwareStartConv,"ax",%progbits
	.align	1
	.global	ADC_SoftwareStartConv
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_SoftwareStartConv, %function
ADC_SoftwareStartConv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #1073741824
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_SoftwareStartConv, .-ADC_SoftwareStartConv
	.section	.text.ADC_GetSoftwareStartConvStatus,"ax",%progbits
	.align	1
	.global	ADC_GetSoftwareStartConvStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_GetSoftwareStartConvStatus, %function
ADC_GetSoftwareStartConvStatus:
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
	ldr	r3, [r3, #8]
	and	r3, r3, #1073741824
	cmp	r3, #0
	beq	.L38
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L39
.L38:
	movs	r3, #0
	strb	r3, [r7, #15]
.L39:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_GetSoftwareStartConvStatus, .-ADC_GetSoftwareStartConvStatus
	.section	.text.ADC_EOCOnEachRegularChannelCmd,"ax",%progbits
	.align	1
	.global	ADC_EOCOnEachRegularChannelCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_EOCOnEachRegularChannelCmd, %function
ADC_EOCOnEachRegularChannelCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #1024
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L44
.L42:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	bic	r2, r3, #1024
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L44:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_EOCOnEachRegularChannelCmd, .-ADC_EOCOnEachRegularChannelCmd
	.section	.text.ADC_ContinuousModeCmd,"ax",%progbits
	.align	1
	.global	ADC_ContinuousModeCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_ContinuousModeCmd, %function
ADC_ContinuousModeCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L48
.L46:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	bic	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L48:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_ContinuousModeCmd, .-ADC_ContinuousModeCmd
	.section	.text.ADC_DiscModeChannelCountConfig,"ax",%progbits
	.align	1
	.global	ADC_DiscModeChannelCountConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_DiscModeChannelCountConfig, %function
ADC_DiscModeChannelCountConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #57344
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	subs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #13
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_DiscModeChannelCountConfig, .-ADC_DiscModeChannelCountConfig
	.section	.text.ADC_DiscModeCmd,"ax",%progbits
	.align	1
	.global	ADC_DiscModeCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_DiscModeCmd, %function
ADC_DiscModeCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #2048
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L53
.L51:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	bic	r2, r3, #2048
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L53:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_DiscModeCmd, .-ADC_DiscModeCmd
	.section	.text.ADC_GetConversionValue,"ax",%progbits
	.align	1
	.global	ADC_GetConversionValue
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_GetConversionValue, %function
ADC_GetConversionValue:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_GetConversionValue, .-ADC_GetConversionValue
	.section	.text.ADC_GetMultiModeConversionValue,"ax",%progbits
	.align	1
	.global	ADC_GetMultiModeConversionValue
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_GetMultiModeConversionValue, %function
ADC_GetMultiModeConversionValue:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L58
	ldr	r3, [r3]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L59:
	.align	2
.L58:
	.word	1073816328
	.size	ADC_GetMultiModeConversionValue, .-ADC_GetMultiModeConversionValue
	.section	.text.ADC_DMACmd,"ax",%progbits
	.align	1
	.global	ADC_DMACmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_DMACmd, %function
ADC_DMACmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L61
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #256
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L63
.L61:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	bic	r2, r3, #256
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L63:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_DMACmd, .-ADC_DMACmd
	.section	.text.ADC_DMARequestAfterLastTransferCmd,"ax",%progbits
	.align	1
	.global	ADC_DMARequestAfterLastTransferCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_DMARequestAfterLastTransferCmd, %function
ADC_DMARequestAfterLastTransferCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L65
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #512
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L67
.L65:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	bic	r2, r3, #512
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L67:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_DMARequestAfterLastTransferCmd, .-ADC_DMARequestAfterLastTransferCmd
	.section	.text.ADC_MultiModeDMARequestAfterLastTransferCmd,"ax",%progbits
	.align	1
	.global	ADC_MultiModeDMARequestAfterLastTransferCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_MultiModeDMARequestAfterLastTransferCmd, %function
ADC_MultiModeDMARequestAfterLastTransferCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L69
	ldr	r3, .L72
	ldr	r3, [r3, #4]
	ldr	r2, .L72
	orr	r3, r3, #8192
	str	r3, [r2, #4]
	b	.L71
.L69:
	ldr	r3, .L72
	ldr	r3, [r3, #4]
	ldr	r2, .L72
	bic	r3, r3, #8192
	str	r3, [r2, #4]
.L71:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L73:
	.align	2
.L72:
	.word	1073816320
	.size	ADC_MultiModeDMARequestAfterLastTransferCmd, .-ADC_MultiModeDMARequestAfterLastTransferCmd
	.section	.text.ADC_InjectedChannelConfig,"ax",%progbits
	.align	1
	.global	ADC_InjectedChannelConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_InjectedChannelConfig, %function
ADC_InjectedChannelConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #3]
	mov	r3, r1
	strb	r3, [r7, #2]
	mov	r3, r2
	strb	r3, [r7, #1]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L75
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	sub	r2, r3, #10
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #7
	lsl	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	mvns	r3, r3
	ldr	r2, [r7, #20]
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	sub	r2, r3, #10
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r1, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	b	.L76
.L75:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #7
	lsl	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	mvns	r3, r3
	ldr	r2, [r7, #20]
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r1, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #16]
.L76:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #20
	and	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxtb	r3, r3
	ldrb	r2, [r7, #2]
	subs	r3, r2, r3
	uxtb	r3, r3
	adds	r3, r3, #2
	uxtb	r3, r3
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #31
	lsl	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	mvns	r3, r3
	ldr	r2, [r7, #20]
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	uxtb	r3, r3
	ldrb	r1, [r7, #2]
	subs	r3, r1, r3
	uxtb	r3, r3
	adds	r3, r3, #2
	uxtb	r3, r3
	mov	r1, r3
	mov	r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #56]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_InjectedChannelConfig, .-ADC_InjectedChannelConfig
	.section	.text.ADC_InjectedSequencerLengthConfig,"ax",%progbits
	.align	1
	.global	ADC_InjectedSequencerLengthConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_InjectedSequencerLengthConfig, %function
ADC_InjectedSequencerLengthConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #3145728
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	subs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #20
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #56]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_InjectedSequencerLengthConfig, .-ADC_InjectedSequencerLengthConfig
	.section	.text.ADC_SetInjectedOffset,"ax",%progbits
	.align	1
	.global	ADC_SetInjectedOffset
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_SetInjectedOffset, %function
ADC_SetInjectedOffset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r2, r3
	ldrh	r3, [r7]
	str	r3, [r2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_SetInjectedOffset, .-ADC_SetInjectedOffset
	.section	.text.ADC_ExternalTrigInjectedConvConfig,"ax",%progbits
	.align	1
	.global	ADC_ExternalTrigInjectedConvConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_ExternalTrigInjectedConvConfig, %function
ADC_ExternalTrigInjectedConvConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #983040
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_ExternalTrigInjectedConvConfig, .-ADC_ExternalTrigInjectedConvConfig
	.section	.text.ADC_ExternalTrigInjectedConvEdgeConfig,"ax",%progbits
	.align	1
	.global	ADC_ExternalTrigInjectedConvEdgeConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_ExternalTrigInjectedConvEdgeConfig, %function
ADC_ExternalTrigInjectedConvEdgeConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #3145728
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_ExternalTrigInjectedConvEdgeConfig, .-ADC_ExternalTrigInjectedConvEdgeConfig
	.section	.text.ADC_SoftwareStartInjectedConv,"ax",%progbits
	.align	1
	.global	ADC_SoftwareStartInjectedConv
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_SoftwareStartInjectedConv, %function
ADC_SoftwareStartInjectedConv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #4194304
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_SoftwareStartInjectedConv, .-ADC_SoftwareStartInjectedConv
	.section	.text.ADC_GetSoftwareStartInjectedConvCmdStatus,"ax",%progbits
	.align	1
	.global	ADC_GetSoftwareStartInjectedConvCmdStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_GetSoftwareStartInjectedConvCmdStatus, %function
ADC_GetSoftwareStartInjectedConvCmdStatus:
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
	ldr	r3, [r3, #8]
	and	r3, r3, #4194304
	cmp	r3, #0
	beq	.L83
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L84
.L83:
	movs	r3, #0
	strb	r3, [r7, #15]
.L84:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_GetSoftwareStartInjectedConvCmdStatus, .-ADC_GetSoftwareStartInjectedConvCmdStatus
	.section	.text.ADC_AutoInjectedConvCmd,"ax",%progbits
	.align	1
	.global	ADC_AutoInjectedConvCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_AutoInjectedConvCmd, %function
ADC_AutoInjectedConvCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #1024
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L89
.L87:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	bic	r2, r3, #1024
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L89:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_AutoInjectedConvCmd, .-ADC_AutoInjectedConvCmd
	.section	.text.ADC_InjectedDiscModeCmd,"ax",%progbits
	.align	1
	.global	ADC_InjectedDiscModeCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_InjectedDiscModeCmd, %function
ADC_InjectedDiscModeCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L91
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #4096
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L93
.L91:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	bic	r2, r3, #4096
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L93:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_InjectedDiscModeCmd, .-ADC_InjectedDiscModeCmd
	.section	.text.ADC_GetInjectedConversionValue,"ax",%progbits
	.align	1
	.global	ADC_GetInjectedConversionValue
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_GetInjectedConversionValue, %function
ADC_GetInjectedConversionValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #40
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_GetInjectedConversionValue, .-ADC_GetInjectedConversionValue
	.section	.text.ADC_ITConfig,"ax",%progbits
	.align	1
	.global	ADC_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_ITConfig, %function
ADC_ITConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2
	strb	r3, [r7, #1]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrh	r3, [r7, #2]	@ movhi
	uxtb	r3, r3
	str	r3, [r7, #12]
	movs	r2, #1
	ldr	r3, [r7, #12]
	lsl	r3, r2, r3
	str	r3, [r7, #12]
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L97
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L99
.L97:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	mvns	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L99:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_ITConfig, .-ADC_ITConfig
	.section	.text.ADC_GetFlagStatus,"ax",%progbits
	.align	1
	.global	ADC_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_GetFlagStatus, %function
ADC_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L101
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L102
.L101:
	movs	r3, #0
	strb	r3, [r7, #15]
.L102:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_GetFlagStatus, .-ADC_GetFlagStatus
	.section	.text.ADC_ClearFlag,"ax",%progbits
	.align	1
	.global	ADC_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_ClearFlag, %function
ADC_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mvns	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_ClearFlag, .-ADC_ClearFlag
	.section	.text.ADC_GetITStatus,"ax",%progbits
	.align	1
	.global	ADC_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_GetITStatus, %function
ADC_GetITStatus:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldrh	r3, [r7, #2]	@ movhi
	uxtb	r3, r3
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L106
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L106
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L107
.L106:
	movs	r3, #0
	strb	r3, [r7, #23]
.L107:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_GetITStatus, .-ADC_GetITStatus
	.section	.text.ADC_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	ADC_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	ADC_ClearITPendingBit, %function
ADC_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #15]
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mvns	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ADC_ClearITPendingBit, .-ADC_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
