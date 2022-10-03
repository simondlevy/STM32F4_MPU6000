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
	.file	"stm32f4xx_dcmi.c"
	.text
	.section	.text.DCMI_DeInit,"ax",%progbits
	.align	1
	.global	DCMI_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_DeInit, %function
DCMI_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L2
	movs	r2, #31
	str	r2, [r3, #20]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #36]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L3:
	.align	2
.L2:
	.word	1342504960
	.size	DCMI_DeInit, .-DCMI_DeInit
	.section	.text.DCMI_Init,"ax",%progbits
	.align	1
	.global	DCMI_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_Init, %function
DCMI_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L5
	ldr	r3, [r3]
	ldr	r2, .L5
	bic	r3, r3, #16384
	bic	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L5
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #4080
	bic	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #6]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #10]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]
	orrs	r3, r3, r2
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L5
	ldr	r3, [r7, #12]
	str	r3, [r2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L6:
	.align	2
.L5:
	.word	1342504960
	.size	DCMI_Init, .-DCMI_Init
	.section	.text.DCMI_StructInit,"ax",%progbits
	.align	1
	.global	DCMI_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_StructInit, %function
DCMI_StructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #12]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DCMI_StructInit, .-DCMI_StructInit
	.section	.text.DCMI_CROPConfig,"ax",%progbits
	.align	1
	.global	DCMI_CROPConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_CROPConfig, %function
DCMI_CROPConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	ldr	r2, .L9
	orrs	r3, r3, r1
	str	r3, [r2, #32]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #6]
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]
	lsls	r3, r3, #16
	ldr	r2, .L9
	orrs	r3, r3, r1
	str	r3, [r2, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L10:
	.align	2
.L9:
	.word	1342504960
	.size	DCMI_CROPConfig, .-DCMI_CROPConfig
	.section	.text.DCMI_CROPCmd,"ax",%progbits
	.align	1
	.global	DCMI_CROPCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_CROPCmd, %function
DCMI_CROPCmd:
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
	beq	.L12
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r2, .L15
	orr	r3, r3, #4
	str	r3, [r2]
	b	.L14
.L12:
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r2, .L15
	bic	r3, r3, #4
	str	r3, [r2]
.L14:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L16:
	.align	2
.L15:
	.word	1342504960
	.size	DCMI_CROPCmd, .-DCMI_CROPCmd
	.section	.text.DCMI_SetEmbeddedSynchroCodes,"ax",%progbits
	.align	1
	.global	DCMI_SetEmbeddedSynchroCodes
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_SetEmbeddedSynchroCodes, %function
DCMI_SetEmbeddedSynchroCodes:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	lsls	r3, r3, #24
	ldr	r1, .L18
	orrs	r3, r3, r2
	str	r3, [r1, #24]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L19:
	.align	2
.L18:
	.word	1342504960
	.size	DCMI_SetEmbeddedSynchroCodes, .-DCMI_SetEmbeddedSynchroCodes
	.section	.text.DCMI_JPEGCmd,"ax",%progbits
	.align	1
	.global	DCMI_JPEGCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_JPEGCmd, %function
DCMI_JPEGCmd:
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
	beq	.L21
	ldr	r3, .L24
	ldr	r3, [r3]
	ldr	r2, .L24
	orr	r3, r3, #8
	str	r3, [r2]
	b	.L23
.L21:
	ldr	r3, .L24
	ldr	r3, [r3]
	ldr	r2, .L24
	bic	r3, r3, #8
	str	r3, [r2]
.L23:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	1342504960
	.size	DCMI_JPEGCmd, .-DCMI_JPEGCmd
	.section	.text.DCMI_Cmd,"ax",%progbits
	.align	1
	.global	DCMI_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_Cmd, %function
DCMI_Cmd:
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
	beq	.L27
	ldr	r3, .L30
	ldr	r3, [r3]
	ldr	r2, .L30
	orr	r3, r3, #16384
	str	r3, [r2]
	b	.L29
.L27:
	ldr	r3, .L30
	ldr	r3, [r3]
	ldr	r2, .L30
	bic	r3, r3, #16384
	str	r3, [r2]
.L29:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L31:
	.align	2
.L30:
	.word	1342504960
	.size	DCMI_Cmd, .-DCMI_Cmd
	.section	.text.DCMI_CaptureCmd,"ax",%progbits
	.align	1
	.global	DCMI_CaptureCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_CaptureCmd, %function
DCMI_CaptureCmd:
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
	beq	.L33
	ldr	r3, .L36
	ldr	r3, [r3]
	ldr	r2, .L36
	orr	r3, r3, #1
	str	r3, [r2]
	b	.L35
.L33:
	ldr	r3, .L36
	ldr	r3, [r3]
	ldr	r2, .L36
	bic	r3, r3, #1
	str	r3, [r2]
.L35:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
	.word	1342504960
	.size	DCMI_CaptureCmd, .-DCMI_CaptureCmd
	.section	.text.DCMI_ReadData,"ax",%progbits
	.align	1
	.global	DCMI_ReadData
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_ReadData, %function
DCMI_ReadData:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L40
	ldr	r3, [r3, #40]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L41:
	.align	2
.L40:
	.word	1342504960
	.size	DCMI_ReadData, .-DCMI_ReadData
	.section	.text.DCMI_ITConfig,"ax",%progbits
	.align	1
	.global	DCMI_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_ITConfig, %function
DCMI_ITConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strh	r3, [r7, #6]	@ movhi
	mov	r3, r2
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L43
	ldr	r3, .L46
	ldr	r2, [r3, #12]
	ldrh	r3, [r7, #6]
	ldr	r1, .L46
	orrs	r3, r3, r2
	str	r3, [r1, #12]
	b	.L45
.L43:
	ldr	r3, .L46
	ldr	r3, [r3, #12]
	ldrh	r2, [r7, #6]	@ movhi
	mvns	r2, r2
	uxth	r2, r2
	mov	r1, r2
	ldr	r2, .L46
	ands	r3, r3, r1
	str	r3, [r2, #12]
.L45:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L47:
	.align	2
.L46:
	.word	1342504960
	.size	DCMI_ITConfig, .-DCMI_ITConfig
	.section	.text.DCMI_GetFlagStatus,"ax",%progbits
	.align	1
	.global	DCMI_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_GetFlagStatus, %function
DCMI_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	str	r3, [r7, #16]
	ldrh	r3, [r7, #6]
	lsrs	r3, r3, #12
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L49
	ldr	r3, .L55
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	b	.L50
.L49:
	ldr	r3, [r7, #12]
	cmp	r3, #2
	bne	.L51
	ldr	r3, .L55
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	b	.L50
.L51:
	ldr	r3, .L55
	ldr	r3, [r3, #16]
	str	r3, [r7, #16]
.L50:
	ldrh	r2, [r7, #6]
	ldr	r3, [r7, #16]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L52
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L53
.L52:
	movs	r3, #0
	strb	r3, [r7, #23]
.L53:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L56:
	.align	2
.L55:
	.word	1342504960
	.size	DCMI_GetFlagStatus, .-DCMI_GetFlagStatus
	.section	.text.DCMI_ClearFlag,"ax",%progbits
	.align	1
	.global	DCMI_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_ClearFlag, %function
DCMI_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldr	r2, .L58
	ldrh	r3, [r7, #6]
	str	r3, [r2, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L59:
	.align	2
.L58:
	.word	1342504960
	.size	DCMI_ClearFlag, .-DCMI_ClearFlag
	.section	.text.DCMI_GetITStatus,"ax",%progbits
	.align	1
	.global	DCMI_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_GetITStatus, %function
DCMI_GetITStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L64
	ldr	r2, [r3, #16]
	ldrh	r3, [r7, #6]
	ands	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L61
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L62
.L61:
	movs	r3, #0
	strb	r3, [r7, #15]
.L62:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L65:
	.align	2
.L64:
	.word	1342504960
	.size	DCMI_GetITStatus, .-DCMI_GetITStatus
	.section	.text.DCMI_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	DCMI_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_ClearITPendingBit, %function
DCMI_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldr	r2, .L67
	ldrh	r3, [r7, #6]
	str	r3, [r2, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L68:
	.align	2
.L67:
	.word	1342504960
	.size	DCMI_ClearITPendingBit, .-DCMI_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
