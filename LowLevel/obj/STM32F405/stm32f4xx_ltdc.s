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
	.file	"stm32f4xx_ltdc.c"
	.text
	.section	.text.LTDC_DeInit,"ax",%progbits
	.align	1
	.global	LTDC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_DeInit, %function
LTDC_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	mov	r0, #67108864
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	mov	r0, #67108864
	bl	RCC_APB2PeriphResetCmd
	nop
	pop	{r7, pc}
	.size	LTDC_DeInit, .-LTDC_DeInit
	.section	.text.LTDC_Init,"ax",%progbits
	.align	1
	.global	LTDC_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_Init, %function
LTDC_Init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L3
	ldr	r2, [r3, #8]
	ldr	r1, .L3
	ldr	r3, .L3+4
	ands	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #16
	str	r3, [r7, #28]
	ldr	r3, .L3
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #20]
	ldr	r3, [r7, #28]
	orrs	r3, r3, r1
	ldr	r1, .L3
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, .L3
	ldr	r2, [r3, #12]
	ldr	r1, .L3
	ldr	r3, .L3+4
	ands	r3, r3, r2
	str	r3, [r1, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #16
	str	r3, [r7, #24]
	ldr	r3, .L3
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #24]
	orrs	r3, r3, r1
	ldr	r1, .L3
	orrs	r3, r3, r2
	str	r3, [r1, #12]
	ldr	r3, .L3
	ldr	r2, [r3, #16]
	ldr	r1, .L3
	ldr	r3, .L3+4
	ands	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #16
	str	r3, [r7, #20]
	ldr	r3, .L3
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #20]
	orrs	r3, r3, r1
	ldr	r1, .L3
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, .L3
	ldr	r2, [r3, #20]
	ldr	r1, .L3
	ldr	r3, .L3+4
	ands	r3, r3, r2
	str	r3, [r1, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	lsls	r3, r3, #16
	str	r3, [r7, #16]
	ldr	r3, .L3
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #44]
	ldr	r3, [r7, #16]
	orrs	r3, r3, r1
	ldr	r1, .L3
	orrs	r3, r3, r2
	str	r3, [r1, #20]
	ldr	r3, .L3
	ldr	r2, [r3, #24]
	ldr	r1, .L3
	ldr	r3, .L3+8
	ands	r3, r3, r2
	str	r3, [r1, #24]
	ldr	r3, .L3
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orrs	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orrs	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r3, r3, r1
	ldr	r1, .L3
	orrs	r3, r3, r2
	str	r3, [r1, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	lsls	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	lsls	r3, r3, #16
	str	r3, [r7, #8]
	ldr	r3, .L3
	ldr	r3, [r3, #44]
	ldr	r2, .L3
	and	r3, r3, #-16777216
	str	r3, [r2, #44]
	ldr	r3, .L3
	ldr	r2, [r3, #44]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	orrs	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	orrs	r3, r3, r1
	ldr	r1, .L3
	orrs	r3, r3, r2
	str	r3, [r1, #44]
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073833984
	.word	-268371968
	.word	268339343
	.size	LTDC_Init, .-LTDC_Init
	.section	.text.LTDC_StructInit,"ax",%progbits
	.align	1
	.global	LTDC_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_StructInit, %function
LTDC_StructInit:
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
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #52]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_StructInit, .-LTDC_StructInit
	.section	.text.LTDC_Cmd,"ax",%progbits
	.align	1
	.global	LTDC_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_Cmd, %function
LTDC_Cmd:
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
	beq	.L7
	ldr	r3, .L10
	ldr	r3, [r3, #24]
	ldr	r2, .L10
	orr	r3, r3, #1
	str	r3, [r2, #24]
	b	.L9
.L7:
	ldr	r3, .L10
	ldr	r3, [r3, #24]
	ldr	r2, .L10
	bic	r3, r3, #1
	str	r3, [r2, #24]
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
	.word	1073833984
	.size	LTDC_Cmd, .-LTDC_Cmd
	.section	.text.LTDC_DitherCmd,"ax",%progbits
	.align	1
	.global	LTDC_DitherCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_DitherCmd, %function
LTDC_DitherCmd:
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
	beq	.L13
	ldr	r3, .L16
	ldr	r3, [r3, #24]
	ldr	r2, .L16
	orr	r3, r3, #65536
	str	r3, [r2, #24]
	b	.L15
.L13:
	ldr	r3, .L16
	ldr	r3, [r3, #24]
	ldr	r2, .L16
	bic	r3, r3, #65536
	str	r3, [r2, #24]
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
	.word	1073833984
	.size	LTDC_DitherCmd, .-LTDC_DitherCmd
	.section	.text.LTDC_GetRGBWidth,"ax",%progbits
	.align	1
	.global	LTDC_GetRGBWidth
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_GetRGBWidth, %function
LTDC_GetRGBWidth:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L20
	ldr	r2, [r3, #24]
	ldr	r1, .L20
	ldr	r3, .L20+4
	ands	r3, r3, r2
	str	r3, [r1, #24]
	ldr	r3, .L20
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #4
	and	r3, r3, #7
	str	r3, [r7, #12]
	ldr	r3, .L20
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #8
	and	r3, r3, #7
	str	r3, [r7, #16]
	ldr	r3, .L20
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #12
	and	r3, r3, #7
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	mov	r4, r3
	add	r3, r7, #12
	ldm	r3, {r0, r1, r2}
	stm	r4, {r0, r1, r2}
	ldr	r0, [r7, #4]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
.L21:
	.align	2
.L20:
	.word	1073833984
	.word	268339343
	.size	LTDC_GetRGBWidth, .-LTDC_GetRGBWidth
	.section	.text.LTDC_RGBStructInit,"ax",%progbits
	.align	1
	.global	LTDC_RGBStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_RGBStructInit, %function
LTDC_RGBStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #8]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_RGBStructInit, .-LTDC_RGBStructInit
	.section	.text.LTDC_LIPConfig,"ax",%progbits
	.align	1
	.global	LTDC_LIPConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_LIPConfig, %function
LTDC_LIPConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L24
	ldr	r3, [r7, #4]
	str	r3, [r2, #64]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	1073833984
	.size	LTDC_LIPConfig, .-LTDC_LIPConfig
	.section	.text.LTDC_ReloadConfig,"ax",%progbits
	.align	1
	.global	LTDC_ReloadConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_ReloadConfig, %function
LTDC_ReloadConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L27
	ldr	r3, [r7, #4]
	str	r3, [r2, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L28:
	.align	2
.L27:
	.word	1073833984
	.size	LTDC_ReloadConfig, .-LTDC_ReloadConfig
	.section	.text.LTDC_LayerInit,"ax",%progbits
	.align	1
	.global	LTDC_LayerInit
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_LayerInit, %function
LTDC_LayerInit:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #16
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	and	r2, r3, #61440
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #16
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r2, r3, #61440
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	bic	r2, r3, #7
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #8
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #16
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #24
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	bic	r2, r3, #255
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	bic	r3, r3, #1792
	bic	r3, r3, #7
	ldr	r2, [r7, #4]
	str	r3, [r2, #28]
	ldr	r3, [r7]
	ldr	r2, [r3, #40]
	ldr	r3, [r7]
	ldr	r3, [r3, #44]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7]
	ldr	r3, [r3, #56]
	lsls	r3, r3, #16
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	and	r2, r3, #-536813568
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	bic	r3, r3, #2040
	bic	r3, r3, #7
	ldr	r2, [r7, #4]
	str	r3, [r2, #48]
	ldr	r3, [r7]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_LayerInit, .-LTDC_LayerInit
	.section	.text.LTDC_LayerStructInit,"ax",%progbits
	.align	1
	.global	LTDC_LayerStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_LayerStructInit, %function
LTDC_LayerStructInit:
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
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #255
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	mov	r2, #1536
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #7
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #52]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #60]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_LayerStructInit, .-LTDC_LayerStructInit
	.section	.text.LTDC_LayerCmd,"ax",%progbits
	.align	1
	.global	LTDC_LayerCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_LayerCmd, %function
LTDC_LayerCmd:
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
	beq	.L32
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L34
.L32:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L34:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_LayerCmd, .-LTDC_LayerCmd
	.section	.text.LTDC_GetPosStatus,"ax",%progbits
	.align	1
	.global	LTDC_GetPosStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_GetPosStatus, %function
LTDC_GetPosStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L37
	ldr	r3, [r3, #68]
	ldr	r3, .L37
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, .L37
	ldr	r3, [r3, #68]
	lsrs	r3, r3, #16
	str	r3, [r7, #8]
	ldr	r3, .L37
	ldr	r3, [r3, #68]
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	mov	r2, r3
	add	r3, r7, #8
	ldm	r3, {r0, r1}
	stm	r2, {r0, r1}
	ldr	r0, [r7, #4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L38:
	.align	2
.L37:
	.word	1073833984
	.size	LTDC_GetPosStatus, .-LTDC_GetPosStatus
	.section	.text.LTDC_PosStructInit,"ax",%progbits
	.align	1
	.global	LTDC_PosStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_PosStructInit, %function
LTDC_PosStructInit:
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
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_PosStructInit, .-LTDC_PosStructInit
	.section	.text.LTDC_GetCDStatus,"ax",%progbits
	.align	1
	.global	LTDC_GetCDStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_GetCDStatus, %function
LTDC_GetCDStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L44
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L41
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L42
.L41:
	movs	r3, #0
	strb	r3, [r7, #15]
.L42:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L45:
	.align	2
.L44:
	.word	1073833984
	.size	LTDC_GetCDStatus, .-LTDC_GetCDStatus
	.section	.text.LTDC_ColorKeyingConfig,"ax",%progbits
	.align	1
	.global	LTDC_ColorKeyingConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_ColorKeyingConfig, %function
LTDC_ColorKeyingConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r3, #2
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	and	r2, r3, #-16777216
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	orrs	r1, r1, r3
	ldr	r3, [r7, #16]
	orrs	r3, r3, r1
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	b	.L48
.L47:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r3, #2
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L48:
	ldr	r3, .L49
	movs	r2, #1
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L50:
	.align	2
.L49:
	.word	1073833984
	.size	LTDC_ColorKeyingConfig, .-LTDC_ColorKeyingConfig
	.section	.text.LTDC_ColorKeyingStructInit,"ax",%progbits
	.align	1
	.global	LTDC_ColorKeyingStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_ColorKeyingStructInit, %function
LTDC_ColorKeyingStructInit:
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
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_ColorKeyingStructInit, .-LTDC_ColorKeyingStructInit
	.section	.text.LTDC_CLUTCmd,"ax",%progbits
	.align	1
	.global	LTDC_CLUTCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_CLUTCmd, %function
LTDC_CLUTCmd:
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
	beq	.L53
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L54
.L53:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L54:
	ldr	r3, .L55
	movs	r2, #1
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L56:
	.align	2
.L55:
	.word	1073833984
	.size	LTDC_CLUTCmd, .-LTDC_CLUTCmd
	.section	.text.LTDC_CLUTInit,"ax",%progbits
	.align	1
	.global	LTDC_CLUTInit
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_CLUTInit, %function
LTDC_CLUTInit:
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
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #8
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #16
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #24
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_CLUTInit, .-LTDC_CLUTInit
	.section	.text.LTDC_CLUTStructInit,"ax",%progbits
	.align	1
	.global	LTDC_CLUTStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_CLUTStructInit, %function
LTDC_CLUTStructInit:
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
	.size	LTDC_CLUTStructInit, .-LTDC_CLUTStructInit
	.section	.text.LTDC_LayerPosition,"ax",%progbits
	.align	1
	.global	LTDC_LayerPosition
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_LayerPosition, %function
LTDC_LayerPosition:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	and	r2, r3, #61440
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r2, r3, #61440
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, .L65
	ldr	r3, [r3, #12]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	lsrs	r2, r3, #16
	ldrh	r3, [r7, #2]
	add	r3, r3, r2
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	uxth	r2, r3
	ldrh	r3, [r7]
	add	r3, r3, r2
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L60
	movs	r3, #4
	str	r3, [r7, #28]
	b	.L61
.L60:
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bne	.L62
	movs	r3, #3
	str	r3, [r7, #28]
	b	.L61
.L62:
	ldr	r3, [r7, #24]
	cmp	r3, #4
	beq	.L63
	ldr	r3, [r7, #24]
	cmp	r3, #2
	beq	.L63
	ldr	r3, [r7, #24]
	cmp	r3, #3
	beq	.L63
	ldr	r3, [r7, #24]
	cmp	r3, #7
	bne	.L64
.L63:
	movs	r3, #2
	str	r3, [r7, #28]
	b	.L61
.L64:
	movs	r3, #1
	str	r3, [r7, #28]
.L61:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ubfx	r3, r3, #0, #13
	subs	r2, r3, #3
	ldr	r3, [r7, #28]
	udiv	r2, r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	subs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ubfx	r2, r3, #0, #11
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	subs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	lsls	r2, r3, #16
	ldr	r3, [r7, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L66:
	.align	2
.L65:
	.word	1073833984
	.size	LTDC_LayerPosition, .-LTDC_LayerPosition
	.section	.text.LTDC_LayerAlpha,"ax",%progbits
	.align	1
	.global	LTDC_LayerAlpha
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_LayerAlpha, %function
LTDC_LayerAlpha:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_LayerAlpha, .-LTDC_LayerAlpha
	.section	.text.LTDC_LayerAddress,"ax",%progbits
	.align	1
	.global	LTDC_LayerAddress
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_LayerAddress, %function
LTDC_LayerAddress:
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
	str	r2, [r3, #40]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_LayerAddress, .-LTDC_LayerAddress
	.section	.text.LTDC_LayerSize,"ax",%progbits
	.align	1
	.global	LTDC_LayerSize
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_LayerSize, %function
LTDC_LayerSize:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L70
	movs	r3, #4
	strb	r3, [r7, #39]
	b	.L71
.L70:
	ldr	r3, [r7, #32]
	cmp	r3, #1
	bne	.L72
	movs	r3, #3
	strb	r3, [r7, #39]
	b	.L71
.L72:
	ldr	r3, [r7, #32]
	cmp	r3, #4
	beq	.L73
	ldr	r3, [r7, #32]
	cmp	r3, #2
	beq	.L73
	ldr	r3, [r7, #32]
	cmp	r3, #3
	beq	.L73
	ldr	r3, [r7, #32]
	cmp	r3, #7
	bne	.L74
.L73:
	movs	r3, #2
	strb	r3, [r7, #39]
	b	.L71
.L74:
	movs	r3, #1
	strb	r3, [r7, #39]
.L71:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ubfx	r3, r3, #0, #13
	str	r3, [r7, #28]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	subs	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ubfx	r3, r3, #0, #13
	str	r3, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	subs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	lsls	r2, r3, #16
	ldr	r3, [r7, #28]
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	lsls	r2, r3, #16
	ldr	r3, [r7, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	lsls	r2, r3, #16
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	ldr	r1, [r7, #8]
	mul	r3, r1, r3
	adds	r3, r3, #3
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #48]
	nop
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_LayerSize, .-LTDC_LayerSize
	.section	.text.LTDC_LayerPixelFormat,"ax",%progbits
	.align	1
	.global	LTDC_LayerPixelFormat
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_LayerPixelFormat, %function
LTDC_LayerPixelFormat:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L76
	movs	r3, #4
	strb	r3, [r7, #15]
	b	.L77
.L76:
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bne	.L78
	movs	r3, #3
	strb	r3, [r7, #15]
	b	.L77
.L78:
	ldr	r3, [r7, #8]
	cmp	r3, #4
	beq	.L79
	ldr	r3, [r7, #8]
	cmp	r3, #2
	beq	.L79
	ldr	r3, [r7, #8]
	cmp	r3, #3
	beq	.L79
	ldr	r3, [r7, #8]
	cmp	r3, #7
	bne	.L80
.L79:
	movs	r3, #2
	strb	r3, [r7, #15]
	b	.L77
.L80:
	movs	r3, #1
	strb	r3, [r7, #15]
.L77:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	lsrs	r3, r3, #16
	str	r3, [r7, #8]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	ldr	r2, [r7, #8]
	udiv	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L81
	movs	r3, #4
	strb	r3, [r7, #15]
	b	.L82
.L81:
	ldr	r3, [r7]
	cmp	r3, #1
	bne	.L83
	movs	r3, #3
	strb	r3, [r7, #15]
	b	.L82
.L83:
	ldr	r3, [r7]
	cmp	r3, #4
	beq	.L84
	ldr	r3, [r7]
	cmp	r3, #2
	beq	.L84
	ldr	r3, [r7]
	cmp	r3, #3
	beq	.L84
	ldr	r3, [r7]
	cmp	r3, #7
	bne	.L85
.L84:
	movs	r3, #2
	strb	r3, [r7, #15]
	b	.L82
.L85:
	movs	r3, #1
	strb	r3, [r7, #15]
.L82:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	lsls	r2, r3, #16
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	ldr	r1, [r7, #8]
	mul	r3, r1, r3
	adds	r3, r3, #3
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	LTDC_LayerPixelFormat, .-LTDC_LayerPixelFormat
	.section	.text.LTDC_ITConfig,"ax",%progbits
	.align	1
	.global	LTDC_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_ITConfig, %function
LTDC_ITConfig:
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
	ldr	r3, .L90
	ldr	r2, [r3, #52]
	ldr	r1, .L90
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #52]
	b	.L89
.L87:
	ldr	r3, .L90
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L90
	ands	r3, r3, r2
	str	r3, [r1, #52]
.L89:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L91:
	.align	2
.L90:
	.word	1073833984
	.size	LTDC_ITConfig, .-LTDC_ITConfig
	.section	.text.LTDC_GetFlagStatus,"ax",%progbits
	.align	1
	.global	LTDC_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_GetFlagStatus, %function
LTDC_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L96
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L93
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L94
.L93:
	movs	r3, #0
	strb	r3, [r7, #15]
.L94:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L97:
	.align	2
.L96:
	.word	1073833984
	.size	LTDC_GetFlagStatus, .-LTDC_GetFlagStatus
	.section	.text.LTDC_ClearFlag,"ax",%progbits
	.align	1
	.global	LTDC_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_ClearFlag, %function
LTDC_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L99
	ldr	r3, [r7, #4]
	str	r3, [r2, #60]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L100:
	.align	2
.L99:
	.word	1073833984
	.size	LTDC_ClearFlag, .-LTDC_ClearFlag
	.section	.text.LTDC_GetITStatus,"ax",%progbits
	.align	1
	.global	LTDC_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_GetITStatus, %function
LTDC_GetITStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L107
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L102
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L103
.L102:
	movs	r3, #0
	strb	r3, [r7, #15]
.L103:
	ldr	r3, .L107
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L104
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L104
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L105
.L104:
	movs	r3, #0
	strb	r3, [r7, #15]
.L105:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L108:
	.align	2
.L107:
	.word	1073833984
	.size	LTDC_GetITStatus, .-LTDC_GetITStatus
	.section	.text.LTDC_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	LTDC_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	LTDC_ClearITPendingBit, %function
LTDC_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L110
	ldr	r3, [r7, #4]
	str	r3, [r2, #60]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L111:
	.align	2
.L110:
	.word	1073833984
	.size	LTDC_ClearITPendingBit, .-LTDC_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
