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
	.file	"stm32f4xx_dac.c"
	.text
	.section	.text.DAC_DeInit,"ax",%progbits
	.align	1
	.global	DAC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_DeInit, %function
DAC_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	mov	r0, #536870912
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #536870912
	bl	RCC_APB1PeriphResetCmd
	nop
	pop	{r7, pc}
	.size	DAC_DeInit, .-DAC_DeInit
	.section	.text.DAC_Init,"ax",%progbits
	.align	1
	.global	DAC_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_Init, %function
DAC_Init:
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
	str	r3, [r7, #8]
	ldr	r3, .L3
	ldr	r3, [r3]
	str	r3, [r7, #12]
	movw	r2, #4094
	ldr	r3, [r7, #4]
	lsl	r3, r2, r3
	mvns	r3, r3
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	lsl	r3, r2, r3
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L3
	ldr	r3, [r7, #12]
	str	r3, [r2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073771520
	.size	DAC_Init, .-DAC_Init
	.section	.text.DAC_StructInit,"ax",%progbits
	.align	1
	.global	DAC_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_StructInit, %function
DAC_StructInit:
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
	.size	DAC_StructInit, .-DAC_StructInit
	.section	.text.DAC_Cmd,"ax",%progbits
	.align	1
	.global	DAC_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_Cmd, %function
DAC_Cmd:
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
	beq	.L7
	ldr	r3, .L10
	ldr	r2, [r3]
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsl	r3, r1, r3
	ldr	r1, .L10
	orrs	r3, r3, r2
	str	r3, [r1]
	b	.L9
.L7:
	ldr	r3, .L10
	ldr	r2, [r3]
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsl	r3, r1, r3
	mvns	r3, r3
	ldr	r1, .L10
	ands	r3, r3, r2
	str	r3, [r1]
.L9:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073771520
	.size	DAC_Cmd, .-DAC_Cmd
	.section	.text.DAC_SoftwareTriggerCmd,"ax",%progbits
	.align	1
	.global	DAC_SoftwareTriggerCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_SoftwareTriggerCmd, %function
DAC_SoftwareTriggerCmd:
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
	beq	.L13
	ldr	r3, .L16
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #4
	movs	r1, #1
	lsl	r3, r1, r3
	ldr	r1, .L16
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	b	.L15
.L13:
	ldr	r3, .L16
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #4
	movs	r1, #1
	lsl	r3, r1, r3
	mvns	r3, r3
	ldr	r1, .L16
	ands	r3, r3, r2
	str	r3, [r1, #4]
.L15:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L17:
	.align	2
.L16:
	.word	1073771520
	.size	DAC_SoftwareTriggerCmd, .-DAC_SoftwareTriggerCmd
	.section	.text.DAC_DualSoftwareTriggerCmd,"ax",%progbits
	.align	1
	.global	DAC_DualSoftwareTriggerCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_DualSoftwareTriggerCmd, %function
DAC_DualSoftwareTriggerCmd:
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
	beq	.L19
	ldr	r3, .L22
	ldr	r3, [r3, #4]
	ldr	r2, .L22
	orr	r3, r3, #3
	str	r3, [r2, #4]
	b	.L21
.L19:
	ldr	r3, .L22
	ldr	r3, [r3, #4]
	ldr	r2, .L22
	bic	r3, r3, #3
	str	r3, [r2, #4]
.L21:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L23:
	.align	2
.L22:
	.word	1073771520
	.size	DAC_DualSoftwareTriggerCmd, .-DAC_DualSoftwareTriggerCmd
	.section	.text.DAC_WaveGenerationCmd,"ax",%progbits
	.align	1
	.global	DAC_WaveGenerationCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_WaveGenerationCmd, %function
DAC_WaveGenerationCmd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L25
	ldr	r3, .L28
	ldr	r2, [r3]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	lsl	r3, r1, r3
	ldr	r1, .L28
	orrs	r3, r3, r2
	str	r3, [r1]
	b	.L27
.L25:
	ldr	r3, .L28
	ldr	r2, [r3]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	lsl	r3, r1, r3
	mvns	r3, r3
	ldr	r1, .L28
	ands	r3, r3, r2
	str	r3, [r1]
.L27:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L29:
	.align	2
.L28:
	.word	1073771520
	.size	DAC_WaveGenerationCmd, .-DAC_WaveGenerationCmd
	.section	.text.DAC_SetChannel1Data,"ax",%progbits
	.align	1
	.global	DAC_SetChannel1Data
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_SetChannel1Data, %function
DAC_SetChannel1Data:
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
	str	r3, [r7, #12]
	ldr	r3, .L31
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r2, r3
	ldrh	r3, [r7, #2]
	str	r3, [r2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L32:
	.align	2
.L31:
	.word	1073771520
	.size	DAC_SetChannel1Data, .-DAC_SetChannel1Data
	.section	.text.DAC_SetChannel2Data,"ax",%progbits
	.align	1
	.global	DAC_SetChannel2Data
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_SetChannel2Data, %function
DAC_SetChannel2Data:
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
	str	r3, [r7, #12]
	ldr	r3, .L34
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #20
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r2, r3
	ldrh	r3, [r7, #2]
	str	r3, [r2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	1073771520
	.size	DAC_SetChannel2Data, .-DAC_SetChannel2Data
	.section	.text.DAC_SetDualChannelData,"ax",%progbits
	.align	1
	.global	DAC_SetDualChannelData
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_SetDualChannelData, %function
DAC_SetDualChannelData:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r3, #8
	bne	.L37
	ldrh	r3, [r7, #2]
	lsls	r2, r3, #8
	ldrh	r3, [r7]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	b	.L38
.L37:
	ldrh	r3, [r7, #2]
	lsls	r2, r3, #16
	ldrh	r3, [r7]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
.L38:
	ldr	r3, .L39
	str	r3, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #32
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L40:
	.align	2
.L39:
	.word	1073771520
	.size	DAC_SetDualChannelData, .-DAC_SetDualChannelData
	.section	.text.DAC_GetDataOutputValue,"ax",%progbits
	.align	1
	.global	DAC_GetDataOutputValue
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_GetDataOutputValue, %function
DAC_GetDataOutputValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L43
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	lsrs	r2, r3, #2
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #44
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
.L44:
	.align	2
.L43:
	.word	1073771520
	.size	DAC_GetDataOutputValue, .-DAC_GetDataOutputValue
	.section	.text.DAC_DMACmd,"ax",%progbits
	.align	1
	.global	DAC_DMACmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_DMACmd, %function
DAC_DMACmd:
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
	ldr	r3, .L49
	ldr	r2, [r3]
	mov	r1, #4096
	ldr	r3, [r7, #4]
	lsl	r3, r1, r3
	ldr	r1, .L49
	orrs	r3, r3, r2
	str	r3, [r1]
	b	.L48
.L46:
	ldr	r3, .L49
	ldr	r2, [r3]
	mov	r1, #4096
	ldr	r3, [r7, #4]
	lsl	r3, r1, r3
	mvns	r3, r3
	ldr	r1, .L49
	ands	r3, r3, r2
	str	r3, [r1]
.L48:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L50:
	.align	2
.L49:
	.word	1073771520
	.size	DAC_DMACmd, .-DAC_DMACmd
	.section	.text.DAC_ITConfig,"ax",%progbits
	.align	1
	.global	DAC_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_ITConfig, %function
DAC_ITConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L52
	ldr	r3, .L55
	ldr	r2, [r3]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	lsl	r3, r1, r3
	ldr	r1, .L55
	orrs	r3, r3, r2
	str	r3, [r1]
	b	.L54
.L52:
	ldr	r3, .L55
	ldr	r2, [r3]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	lsl	r3, r1, r3
	mvns	r3, r3
	ldr	r1, .L55
	ands	r3, r3, r2
	str	r3, [r1]
.L54:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L56:
	.align	2
.L55:
	.word	1073771520
	.size	DAC_ITConfig, .-DAC_ITConfig
	.section	.text.DAC_GetFlagStatus,"ax",%progbits
	.align	1
	.global	DAC_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_GetFlagStatus, %function
DAC_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L61
	ldr	r2, [r3, #52]
	ldr	r1, [r7]
	ldr	r3, [r7, #4]
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L58
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L59
.L58:
	movs	r3, #0
	strb	r3, [r7, #15]
.L59:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L62:
	.align	2
.L61:
	.word	1073771520
	.size	DAC_GetFlagStatus, .-DAC_GetFlagStatus
	.section	.text.DAC_ClearFlag,"ax",%progbits
	.align	1
	.global	DAC_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_ClearFlag, %function
DAC_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r1, .L64
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	lsl	r3, r2, r3
	str	r3, [r1, #52]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L65:
	.align	2
.L64:
	.word	1073771520
	.size	DAC_ClearFlag, .-DAC_ClearFlag
	.section	.text.DAC_GetITStatus,"ax",%progbits
	.align	1
	.global	DAC_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_GetITStatus, %function
DAC_GetITStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L70
	ldr	r2, [r3]
	ldr	r1, [r7]
	ldr	r3, [r7, #4]
	lsl	r3, r1, r3
	ands	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, .L70
	ldr	r2, [r3, #52]
	ldr	r1, [r7]
	ldr	r3, [r7, #4]
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L67
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L68
.L67:
	movs	r3, #0
	strb	r3, [r7, #15]
.L68:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L71:
	.align	2
.L70:
	.word	1073771520
	.size	DAC_GetITStatus, .-DAC_GetITStatus
	.section	.text.DAC_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	DAC_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	DAC_ClearITPendingBit, %function
DAC_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r1, .L73
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	lsl	r3, r2, r3
	str	r3, [r1, #52]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L74:
	.align	2
.L73:
	.word	1073771520
	.size	DAC_ClearITPendingBit, .-DAC_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
