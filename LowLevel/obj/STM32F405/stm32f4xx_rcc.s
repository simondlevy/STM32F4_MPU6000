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
	.file	"stm32f4xx_rcc.c"
	.text
	.section	.data.APBAHBPrescTable,"aw"
	.align	2
	.type	APBAHBPrescTable, %object
	.size	APBAHBPrescTable, 16
APBAHBPrescTable:
	.ascii	"\000\000\000\000\001\002\003\004\001\002\003\004\006"
	.ascii	"\007\010\011"
	.section	.text.RCC_DeInit,"ax",%progbits
	.align	1
	.global	RCC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_DeInit, %function
RCC_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r3, [r3]
	ldr	r2, .L2
	orr	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L2
	ldr	r3, [r3]
	ldr	r2, .L2
	bic	r3, r3, #352321536
	bic	r3, r3, #589824
	str	r3, [r2]
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3, #4]
	ldr	r3, .L2
	ldr	r2, .L2+8
	str	r2, [r3, #132]
	ldr	r3, .L2
	ldr	r2, .L2+12
	str	r2, [r3, #136]
	ldr	r3, .L2
	ldr	r3, [r3]
	ldr	r2, .L2
	bic	r3, r3, #262144
	str	r3, [r2]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #140]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L3:
	.align	2
.L2:
	.word	1073887232
	.word	603992080
	.word	536883200
	.word	603992064
	.size	RCC_DeInit, .-RCC_DeInit
	.section	.text.RCC_HSEConfig,"ax",%progbits
	.align	1
	.global	RCC_HSEConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_HSEConfig, %function
RCC_HSEConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L5
	movs	r2, #0
	strb	r2, [r3]
	ldr	r2, .L5
	ldrb	r3, [r7, #7]
	strb	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L6:
	.align	2
.L5:
	.word	1073887234
	.size	RCC_HSEConfig, .-RCC_HSEConfig
	.section	.text.RCC_WaitForHSEStartUp,"ax",%progbits
	.align	1
	.global	RCC_WaitForHSEStartUp
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_WaitForHSEStartUp, %function
RCC_WaitForHSEStartUp:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7]
	movs	r3, #0
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #6]
.L9:
	movs	r0, #49
	bl	RCC_GetFlagStatus
	mov	r3, r0
	strb	r3, [r7, #6]
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #20480
	beq	.L8
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L9
.L8:
	movs	r0, #49
	bl	RCC_GetFlagStatus
	mov	r3, r0
	cmp	r3, #0
	beq	.L10
	movs	r3, #1
	strb	r3, [r7, #7]
	b	.L11
.L10:
	movs	r3, #0
	strb	r3, [r7, #7]
.L11:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	RCC_WaitForHSEStartUp, .-RCC_WaitForHSEStartUp
	.section	.text.RCC_AdjustHSICalibrationValue,"ax",%progbits
	.align	1
	.global	RCC_AdjustHSICalibrationValue
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_AdjustHSICalibrationValue, %function
RCC_AdjustHSICalibrationValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L14
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #248
	str	r3, [r7, #12]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L14
	ldr	r3, [r7, #12]
	str	r3, [r2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L15:
	.align	2
.L14:
	.word	1073887232
	.size	RCC_AdjustHSICalibrationValue, .-RCC_AdjustHSICalibrationValue
	.section	.text.RCC_HSICmd,"ax",%progbits
	.align	1
	.global	RCC_HSICmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_HSICmd, %function
RCC_HSICmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L17
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L18:
	.align	2
.L17:
	.word	1111949312
	.size	RCC_HSICmd, .-RCC_HSICmd
	.section	.text.RCC_LSEConfig,"ax",%progbits
	.align	1
	.global	RCC_LSEConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_LSEConfig, %function
RCC_LSEConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L24
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L24
	movs	r2, #0
	strb	r2, [r3]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L20
	cmp	r3, #4
	beq	.L21
	b	.L23
.L20:
	ldr	r3, .L24
	movs	r2, #1
	strb	r2, [r3]
	b	.L23
.L21:
	ldr	r3, .L24
	movs	r2, #5
	strb	r2, [r3]
	nop
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
	.word	1073887344
	.size	RCC_LSEConfig, .-RCC_LSEConfig
	.section	.text.RCC_LSICmd,"ax",%progbits
	.align	1
	.global	RCC_LSICmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_LSICmd, %function
RCC_LSICmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L27
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L28:
	.align	2
.L27:
	.word	1111953024
	.size	RCC_LSICmd, .-RCC_LSICmd
	.section	.text.RCC_PLLConfig,"ax",%progbits
	.align	1
	.global	RCC_PLLConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_PLLConfig, %function
RCC_PLLConfig:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	lsls	r2, r3, #6
	ldr	r3, [r7, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	lsrs	r3, r3, #1
	subs	r3, r3, #1
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	lsls	r3, r3, #24
	ldr	r1, .L30
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L31:
	.align	2
.L30:
	.word	1073887232
	.size	RCC_PLLConfig, .-RCC_PLLConfig
	.section	.text.RCC_PLLCmd,"ax",%progbits
	.align	1
	.global	RCC_PLLCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_PLLCmd, %function
RCC_PLLCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L33
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L34:
	.align	2
.L33:
	.word	1111949408
	.size	RCC_PLLCmd, .-RCC_PLLCmd
	.section	.text.RCC_PLLI2SConfig,"ax",%progbits
	.align	1
	.global	RCC_PLLI2SConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_PLLI2SConfig, %function
RCC_PLLI2SConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	lsls	r2, r3, #6
	ldr	r3, [r7]
	lsls	r3, r3, #28
	ldr	r1, .L36
	orrs	r3, r3, r2
	str	r3, [r1, #132]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
	.word	1073887232
	.size	RCC_PLLI2SConfig, .-RCC_PLLI2SConfig
	.section	.text.RCC_PLLI2SCmd,"ax",%progbits
	.align	1
	.global	RCC_PLLI2SCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_PLLI2SCmd, %function
RCC_PLLI2SCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L39
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L40:
	.align	2
.L39:
	.word	1111949416
	.size	RCC_PLLI2SCmd, .-RCC_PLLI2SCmd
	.section	.text.RCC_PLLSAIConfig,"ax",%progbits
	.align	1
	.global	RCC_PLLSAIConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_PLLSAIConfig, %function
RCC_PLLSAIConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	lsls	r2, r3, #6
	ldr	r3, [r7, #8]
	lsls	r3, r3, #24
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	lsls	r3, r3, #28
	ldr	r1, .L42
	orrs	r3, r3, r2
	str	r3, [r1, #136]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L43:
	.align	2
.L42:
	.word	1073887232
	.size	RCC_PLLSAIConfig, .-RCC_PLLSAIConfig
	.section	.text.RCC_PLLSAICmd,"ax",%progbits
	.align	1
	.global	RCC_PLLSAICmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_PLLSAICmd, %function
RCC_PLLSAICmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L45
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L46:
	.align	2
.L45:
	.word	1111949424
	.size	RCC_PLLSAICmd, .-RCC_PLLSAICmd
	.section	.text.RCC_ClockSecuritySystemCmd,"ax",%progbits
	.align	1
	.global	RCC_ClockSecuritySystemCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_ClockSecuritySystemCmd, %function
RCC_ClockSecuritySystemCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L48
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L49:
	.align	2
.L48:
	.word	1111949388
	.size	RCC_ClockSecuritySystemCmd, .-RCC_ClockSecuritySystemCmd
	.section	.text.RCC_MCO1Config,"ax",%progbits
	.align	1
	.global	RCC_MCO1Config
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_MCO1Config, %function
RCC_MCO1Config:
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
	ldr	r3, .L51
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #123731968
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L51
	ldr	r3, [r7, #12]
	str	r3, [r2, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L52:
	.align	2
.L51:
	.word	1073887232
	.size	RCC_MCO1Config, .-RCC_MCO1Config
	.section	.text.RCC_MCO2Config,"ax",%progbits
	.align	1
	.global	RCC_MCO2Config
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_MCO2Config, %function
RCC_MCO2Config:
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
	ldr	r3, .L54
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #-134217728
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L54
	ldr	r3, [r7, #12]
	str	r3, [r2, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L55:
	.align	2
.L54:
	.word	1073887232
	.size	RCC_MCO2Config, .-RCC_MCO2Config
	.section	.text.RCC_SYSCLKConfig,"ax",%progbits
	.align	1
	.global	RCC_SYSCLKConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_SYSCLKConfig, %function
RCC_SYSCLKConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L57
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L57
	ldr	r3, [r7, #12]
	str	r3, [r2, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L58:
	.align	2
.L57:
	.word	1073887232
	.size	RCC_SYSCLKConfig, .-RCC_SYSCLKConfig
	.section	.text.RCC_GetSYSCLKSource,"ax",%progbits
	.align	1
	.global	RCC_GetSYSCLKSource
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_GetSYSCLKSource, %function
RCC_GetSYSCLKSource:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L61
	ldr	r3, [r3, #8]
	uxtb	r3, r3
	and	r3, r3, #12
	uxtb	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L62:
	.align	2
.L61:
	.word	1073887232
	.size	RCC_GetSYSCLKSource, .-RCC_GetSYSCLKSource
	.section	.text.RCC_HCLKConfig,"ax",%progbits
	.align	1
	.global	RCC_HCLKConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_HCLKConfig, %function
RCC_HCLKConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L64
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #240
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L64
	ldr	r3, [r7, #12]
	str	r3, [r2, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L65:
	.align	2
.L64:
	.word	1073887232
	.size	RCC_HCLKConfig, .-RCC_HCLKConfig
	.section	.text.RCC_PCLK1Config,"ax",%progbits
	.align	1
	.global	RCC_PCLK1Config
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_PCLK1Config, %function
RCC_PCLK1Config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L67
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #7168
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L67
	ldr	r3, [r7, #12]
	str	r3, [r2, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L68:
	.align	2
.L67:
	.word	1073887232
	.size	RCC_PCLK1Config, .-RCC_PCLK1Config
	.section	.text.RCC_PCLK2Config,"ax",%progbits
	.align	1
	.global	RCC_PCLK2Config
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_PCLK2Config, %function
RCC_PCLK2Config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L70
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #57344
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L70
	ldr	r3, [r7, #12]
	str	r3, [r2, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L71:
	.align	2
.L70:
	.word	1073887232
	.size	RCC_PCLK2Config, .-RCC_PCLK2Config
	.section	.text.RCC_GetClocksFreq,"ax",%progbits
	.align	1
	.global	RCC_GetClocksFreq
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_GetClocksFreq, %function
RCC_GetClocksFreq:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #2
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [r7, #8]
	ldr	r3, .L80
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #8
	beq	.L73
	ldr	r3, [r7, #24]
	cmp	r3, #8
	bhi	.L74
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L75
	ldr	r3, [r7, #24]
	cmp	r3, #4
	beq	.L76
	b	.L74
.L75:
	ldr	r3, [r7, #4]
	ldr	r2, .L80+4
	str	r2, [r3]
	b	.L77
.L76:
	ldr	r3, [r7, #4]
	ldr	r2, .L80+8
	str	r2, [r3]
	b	.L77
.L73:
	ldr	r3, .L80
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #22
	and	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, .L80
	ldr	r3, [r3, #4]
	and	r3, r3, #63
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L78
	ldr	r2, .L80+8
	ldr	r3, [r7, #8]
	udiv	r3, r2, r3
	ldr	r2, .L80
	ldr	r2, [r2, #4]
	lsrs	r2, r2, #6
	ubfx	r2, r2, #0, #9
	mul	r3, r2, r3
	str	r3, [r7, #28]
	b	.L79
.L78:
	ldr	r2, .L80+4
	ldr	r3, [r7, #8]
	udiv	r3, r2, r3
	ldr	r2, .L80
	ldr	r2, [r2, #4]
	lsrs	r2, r2, #6
	ubfx	r2, r2, #0, #9
	mul	r3, r2, r3
	str	r3, [r7, #28]
.L79:
	ldr	r3, .L80
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #16
	and	r3, r3, #3
	adds	r3, r3, #1
	lsls	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	udiv	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L77
.L74:
	ldr	r3, [r7, #4]
	ldr	r2, .L80+4
	str	r2, [r3]
	nop
.L77:
	ldr	r3, .L80
	ldr	r3, [r3, #8]
	and	r3, r3, #240
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r2, .L80+12
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3]
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, .L80
	ldr	r3, [r3, #8]
	and	r3, r3, #7168
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #10
	str	r3, [r7, #24]
	ldr	r2, .L80+12
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3]
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, .L80
	ldr	r3, [r3, #8]
	and	r3, r3, #57344
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #13
	str	r3, [r7, #24]
	ldr	r2, .L80+12
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3]
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L81:
	.align	2
.L80:
	.word	1073887232
	.word	16000000
	.word	8000000
	.word	APBAHBPrescTable
	.size	RCC_GetClocksFreq, .-RCC_GetClocksFreq
	.section	.text.RCC_RTCCLKConfig,"ax",%progbits
	.align	1
	.global	RCC_RTCCLKConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_RTCCLKConfig, %function
RCC_RTCCLKConfig:
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
	and	r3, r3, #768
	cmp	r3, #768
	bne	.L83
	ldr	r3, .L84
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #2031616
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	bic	r3, r3, #-268435456
	bic	r3, r3, #768
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L84
	ldr	r3, [r7, #12]
	str	r3, [r2, #8]
.L83:
	ldr	r3, .L84
	ldr	r2, [r3, #112]
	ldr	r3, [r7, #4]
	ubfx	r3, r3, #0, #12
	ldr	r1, .L84
	orrs	r3, r3, r2
	str	r3, [r1, #112]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L85:
	.align	2
.L84:
	.word	1073887232
	.size	RCC_RTCCLKConfig, .-RCC_RTCCLKConfig
	.section	.text.RCC_RTCCLKCmd,"ax",%progbits
	.align	1
	.global	RCC_RTCCLKCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_RTCCLKCmd, %function
RCC_RTCCLKCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L87
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L88:
	.align	2
.L87:
	.word	1111952956
	.size	RCC_RTCCLKCmd, .-RCC_RTCCLKCmd
	.section	.text.RCC_BackupResetCmd,"ax",%progbits
	.align	1
	.global	RCC_BackupResetCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_BackupResetCmd, %function
RCC_BackupResetCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L90
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L91:
	.align	2
.L90:
	.word	1111952960
	.size	RCC_BackupResetCmd, .-RCC_BackupResetCmd
	.section	.text.RCC_I2SCLKConfig,"ax",%progbits
	.align	1
	.global	RCC_I2SCLKConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_I2SCLKConfig, %function
RCC_I2SCLKConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L93
	ldr	r3, [r7, #4]
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L94:
	.align	2
.L93:
	.word	1111949660
	.size	RCC_I2SCLKConfig, .-RCC_I2SCLKConfig
	.section	.text.RCC_SAIBlockACLKConfig,"ax",%progbits
	.align	1
	.global	RCC_SAIBlockACLKConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_SAIBlockACLKConfig, %function
RCC_SAIBlockACLKConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L96
	ldr	r3, [r3, #140]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #3145728
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L96
	ldr	r3, [r7, #12]
	str	r3, [r2, #140]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L97:
	.align	2
.L96:
	.word	1073887232
	.size	RCC_SAIBlockACLKConfig, .-RCC_SAIBlockACLKConfig
	.section	.text.RCC_SAIBlockBCLKConfig,"ax",%progbits
	.align	1
	.global	RCC_SAIBlockBCLKConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_SAIBlockBCLKConfig, %function
RCC_SAIBlockBCLKConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L99
	ldr	r3, [r3, #140]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #12582912
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L99
	ldr	r3, [r7, #12]
	str	r3, [r2, #140]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L100:
	.align	2
.L99:
	.word	1073887232
	.size	RCC_SAIBlockBCLKConfig, .-RCC_SAIBlockBCLKConfig
	.section	.text.RCC_SAIPLLI2SClkDivConfig,"ax",%progbits
	.align	1
	.global	RCC_SAIPLLI2SClkDivConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_SAIPLLI2SClkDivConfig, %function
RCC_SAIPLLI2SClkDivConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L102
	ldr	r3, [r3, #140]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #31
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L102
	ldr	r3, [r7, #12]
	str	r3, [r2, #140]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L103:
	.align	2
.L102:
	.word	1073887232
	.size	RCC_SAIPLLI2SClkDivConfig, .-RCC_SAIPLLI2SClkDivConfig
	.section	.text.RCC_SAIPLLSAIClkDivConfig,"ax",%progbits
	.align	1
	.global	RCC_SAIPLLSAIClkDivConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_SAIPLLSAIClkDivConfig, %function
RCC_SAIPLLSAIClkDivConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L105
	ldr	r3, [r3, #140]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #7936
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	lsls	r3, r3, #8
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L105
	ldr	r3, [r7, #12]
	str	r3, [r2, #140]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L106:
	.align	2
.L105:
	.word	1073887232
	.size	RCC_SAIPLLSAIClkDivConfig, .-RCC_SAIPLLSAIClkDivConfig
	.section	.text.RCC_LTDCCLKDivConfig,"ax",%progbits
	.align	1
	.global	RCC_LTDCCLKDivConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_LTDCCLKDivConfig, %function
RCC_LTDCCLKDivConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L108
	ldr	r3, [r3, #140]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #196608
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L108
	ldr	r3, [r7, #12]
	str	r3, [r2, #140]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L109:
	.align	2
.L108:
	.word	1073887232
	.size	RCC_LTDCCLKDivConfig, .-RCC_LTDCCLKDivConfig
	.section	.text.RCC_TIMCLKPresConfig,"ax",%progbits
	.align	1
	.global	RCC_TIMCLKPresConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_TIMCLKPresConfig, %function
RCC_TIMCLKPresConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L111
	ldr	r3, [r7, #4]
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L112:
	.align	2
.L111:
	.word	1111953888
	.size	RCC_TIMCLKPresConfig, .-RCC_TIMCLKPresConfig
	.section	.text.RCC_AHB1PeriphClockCmd,"ax",%progbits
	.align	1
	.global	RCC_AHB1PeriphClockCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_AHB1PeriphClockCmd, %function
RCC_AHB1PeriphClockCmd:
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
	beq	.L114
	ldr	r3, .L117
	ldr	r2, [r3, #48]
	ldr	r1, .L117
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #48]
	b	.L116
.L114:
	ldr	r3, .L117
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L117
	ands	r3, r3, r2
	str	r3, [r1, #48]
.L116:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L118:
	.align	2
.L117:
	.word	1073887232
	.size	RCC_AHB1PeriphClockCmd, .-RCC_AHB1PeriphClockCmd
	.section	.text.RCC_AHB2PeriphClockCmd,"ax",%progbits
	.align	1
	.global	RCC_AHB2PeriphClockCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_AHB2PeriphClockCmd, %function
RCC_AHB2PeriphClockCmd:
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
	beq	.L120
	ldr	r3, .L123
	ldr	r2, [r3, #52]
	ldr	r1, .L123
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #52]
	b	.L122
.L120:
	ldr	r3, .L123
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L123
	ands	r3, r3, r2
	str	r3, [r1, #52]
.L122:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L124:
	.align	2
.L123:
	.word	1073887232
	.size	RCC_AHB2PeriphClockCmd, .-RCC_AHB2PeriphClockCmd
	.section	.text.RCC_AHB3PeriphClockCmd,"ax",%progbits
	.align	1
	.global	RCC_AHB3PeriphClockCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_AHB3PeriphClockCmd, %function
RCC_AHB3PeriphClockCmd:
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
	beq	.L126
	ldr	r3, .L129
	ldr	r2, [r3, #56]
	ldr	r1, .L129
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #56]
	b	.L128
.L126:
	ldr	r3, .L129
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L129
	ands	r3, r3, r2
	str	r3, [r1, #56]
.L128:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L130:
	.align	2
.L129:
	.word	1073887232
	.size	RCC_AHB3PeriphClockCmd, .-RCC_AHB3PeriphClockCmd
	.section	.text.RCC_APB1PeriphClockCmd,"ax",%progbits
	.align	1
	.global	RCC_APB1PeriphClockCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_APB1PeriphClockCmd, %function
RCC_APB1PeriphClockCmd:
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
	beq	.L132
	ldr	r3, .L135
	ldr	r2, [r3, #64]
	ldr	r1, .L135
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #64]
	b	.L134
.L132:
	ldr	r3, .L135
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L135
	ands	r3, r3, r2
	str	r3, [r1, #64]
.L134:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L136:
	.align	2
.L135:
	.word	1073887232
	.size	RCC_APB1PeriphClockCmd, .-RCC_APB1PeriphClockCmd
	.section	.text.RCC_APB2PeriphClockCmd,"ax",%progbits
	.align	1
	.global	RCC_APB2PeriphClockCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_APB2PeriphClockCmd, %function
RCC_APB2PeriphClockCmd:
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
	beq	.L138
	ldr	r3, .L141
	ldr	r2, [r3, #68]
	ldr	r1, .L141
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #68]
	b	.L140
.L138:
	ldr	r3, .L141
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L141
	ands	r3, r3, r2
	str	r3, [r1, #68]
.L140:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L142:
	.align	2
.L141:
	.word	1073887232
	.size	RCC_APB2PeriphClockCmd, .-RCC_APB2PeriphClockCmd
	.section	.text.RCC_AHB1PeriphResetCmd,"ax",%progbits
	.align	1
	.global	RCC_AHB1PeriphResetCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_AHB1PeriphResetCmd, %function
RCC_AHB1PeriphResetCmd:
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
	beq	.L144
	ldr	r3, .L147
	ldr	r2, [r3, #16]
	ldr	r1, .L147
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	b	.L146
.L144:
	ldr	r3, .L147
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L147
	ands	r3, r3, r2
	str	r3, [r1, #16]
.L146:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L148:
	.align	2
.L147:
	.word	1073887232
	.size	RCC_AHB1PeriphResetCmd, .-RCC_AHB1PeriphResetCmd
	.section	.text.RCC_AHB2PeriphResetCmd,"ax",%progbits
	.align	1
	.global	RCC_AHB2PeriphResetCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_AHB2PeriphResetCmd, %function
RCC_AHB2PeriphResetCmd:
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
	beq	.L150
	ldr	r3, .L153
	ldr	r2, [r3, #20]
	ldr	r1, .L153
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #20]
	b	.L152
.L150:
	ldr	r3, .L153
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L153
	ands	r3, r3, r2
	str	r3, [r1, #20]
.L152:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L154:
	.align	2
.L153:
	.word	1073887232
	.size	RCC_AHB2PeriphResetCmd, .-RCC_AHB2PeriphResetCmd
	.section	.text.RCC_AHB3PeriphResetCmd,"ax",%progbits
	.align	1
	.global	RCC_AHB3PeriphResetCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_AHB3PeriphResetCmd, %function
RCC_AHB3PeriphResetCmd:
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
	beq	.L156
	ldr	r3, .L159
	ldr	r2, [r3, #24]
	ldr	r1, .L159
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #24]
	b	.L158
.L156:
	ldr	r3, .L159
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L159
	ands	r3, r3, r2
	str	r3, [r1, #24]
.L158:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L160:
	.align	2
.L159:
	.word	1073887232
	.size	RCC_AHB3PeriphResetCmd, .-RCC_AHB3PeriphResetCmd
	.section	.text.RCC_APB1PeriphResetCmd,"ax",%progbits
	.align	1
	.global	RCC_APB1PeriphResetCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_APB1PeriphResetCmd, %function
RCC_APB1PeriphResetCmd:
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
	beq	.L162
	ldr	r3, .L165
	ldr	r2, [r3, #32]
	ldr	r1, .L165
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #32]
	b	.L164
.L162:
	ldr	r3, .L165
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L165
	ands	r3, r3, r2
	str	r3, [r1, #32]
.L164:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L166:
	.align	2
.L165:
	.word	1073887232
	.size	RCC_APB1PeriphResetCmd, .-RCC_APB1PeriphResetCmd
	.section	.text.RCC_APB2PeriphResetCmd,"ax",%progbits
	.align	1
	.global	RCC_APB2PeriphResetCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_APB2PeriphResetCmd, %function
RCC_APB2PeriphResetCmd:
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
	beq	.L168
	ldr	r3, .L171
	ldr	r2, [r3, #36]
	ldr	r1, .L171
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #36]
	b	.L170
.L168:
	ldr	r3, .L171
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L171
	ands	r3, r3, r2
	str	r3, [r1, #36]
.L170:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L172:
	.align	2
.L171:
	.word	1073887232
	.size	RCC_APB2PeriphResetCmd, .-RCC_APB2PeriphResetCmd
	.section	.text.RCC_AHB1PeriphClockLPModeCmd,"ax",%progbits
	.align	1
	.global	RCC_AHB1PeriphClockLPModeCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_AHB1PeriphClockLPModeCmd, %function
RCC_AHB1PeriphClockLPModeCmd:
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
	beq	.L174
	ldr	r3, .L177
	ldr	r2, [r3, #80]
	ldr	r1, .L177
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #80]
	b	.L176
.L174:
	ldr	r3, .L177
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L177
	ands	r3, r3, r2
	str	r3, [r1, #80]
.L176:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L178:
	.align	2
.L177:
	.word	1073887232
	.size	RCC_AHB1PeriphClockLPModeCmd, .-RCC_AHB1PeriphClockLPModeCmd
	.section	.text.RCC_AHB2PeriphClockLPModeCmd,"ax",%progbits
	.align	1
	.global	RCC_AHB2PeriphClockLPModeCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_AHB2PeriphClockLPModeCmd, %function
RCC_AHB2PeriphClockLPModeCmd:
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
	beq	.L180
	ldr	r3, .L183
	ldr	r2, [r3, #84]
	ldr	r1, .L183
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #84]
	b	.L182
.L180:
	ldr	r3, .L183
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L183
	ands	r3, r3, r2
	str	r3, [r1, #84]
.L182:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L184:
	.align	2
.L183:
	.word	1073887232
	.size	RCC_AHB2PeriphClockLPModeCmd, .-RCC_AHB2PeriphClockLPModeCmd
	.section	.text.RCC_AHB3PeriphClockLPModeCmd,"ax",%progbits
	.align	1
	.global	RCC_AHB3PeriphClockLPModeCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_AHB3PeriphClockLPModeCmd, %function
RCC_AHB3PeriphClockLPModeCmd:
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
	beq	.L186
	ldr	r3, .L189
	ldr	r2, [r3, #88]
	ldr	r1, .L189
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #88]
	b	.L188
.L186:
	ldr	r3, .L189
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L189
	ands	r3, r3, r2
	str	r3, [r1, #88]
.L188:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L190:
	.align	2
.L189:
	.word	1073887232
	.size	RCC_AHB3PeriphClockLPModeCmd, .-RCC_AHB3PeriphClockLPModeCmd
	.section	.text.RCC_APB1PeriphClockLPModeCmd,"ax",%progbits
	.align	1
	.global	RCC_APB1PeriphClockLPModeCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_APB1PeriphClockLPModeCmd, %function
RCC_APB1PeriphClockLPModeCmd:
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
	beq	.L192
	ldr	r3, .L195
	ldr	r2, [r3, #96]
	ldr	r1, .L195
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #96]
	b	.L194
.L192:
	ldr	r3, .L195
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L195
	ands	r3, r3, r2
	str	r3, [r1, #96]
.L194:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L196:
	.align	2
.L195:
	.word	1073887232
	.size	RCC_APB1PeriphClockLPModeCmd, .-RCC_APB1PeriphClockLPModeCmd
	.section	.text.RCC_APB2PeriphClockLPModeCmd,"ax",%progbits
	.align	1
	.global	RCC_APB2PeriphClockLPModeCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_APB2PeriphClockLPModeCmd, %function
RCC_APB2PeriphClockLPModeCmd:
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
	beq	.L198
	ldr	r3, .L201
	ldr	r2, [r3, #100]
	ldr	r1, .L201
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #100]
	b	.L200
.L198:
	ldr	r3, .L201
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L201
	ands	r3, r3, r2
	str	r3, [r1, #100]
.L200:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L202:
	.align	2
.L201:
	.word	1073887232
	.size	RCC_APB2PeriphClockLPModeCmd, .-RCC_APB2PeriphClockLPModeCmd
	.section	.text.RCC_LSEModeConfig,"ax",%progbits
	.align	1
	.global	RCC_LSEModeConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_LSEModeConfig, %function
RCC_LSEModeConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L204
	ldr	r3, .L207
	ldr	r3, [r3, #112]
	ldr	r2, .L207
	orr	r3, r3, #8
	str	r3, [r2, #112]
	b	.L206
.L204:
	ldr	r3, .L207
	ldr	r3, [r3, #112]
	ldr	r2, .L207
	bic	r3, r3, #8
	str	r3, [r2, #112]
.L206:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L208:
	.align	2
.L207:
	.word	1073887232
	.size	RCC_LSEModeConfig, .-RCC_LSEModeConfig
	.section	.text.RCC_ITConfig,"ax",%progbits
	.align	1
	.global	RCC_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_ITConfig, %function
RCC_ITConfig:
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
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L210
	ldr	r3, .L213
	ldrb	r3, [r3]
	uxtb	r2, r3
	ldr	r1, .L213
	ldrb	r3, [r7, #7]
	orrs	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r1]
	b	.L212
.L210:
	ldr	r3, .L213
	ldrb	r3, [r3]
	uxtb	r2, r3
	ldrb	r3, [r7, #7]
	mvns	r3, r3
	uxtb	r3, r3
	ldr	r1, .L213
	ands	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r1]
.L212:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L214:
	.align	2
.L213:
	.word	1073887245
	.size	RCC_ITConfig, .-RCC_ITConfig
	.section	.text.RCC_GetFlagStatus,"ax",%progbits
	.align	1
	.global	RCC_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_GetFlagStatus, %function
RCC_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsrs	r3, r3, #5
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bne	.L216
	ldr	r3, .L222
	ldr	r3, [r3]
	str	r3, [r7, #20]
	b	.L217
.L216:
	ldr	r3, [r7, #12]
	cmp	r3, #2
	bne	.L218
	ldr	r3, .L222
	ldr	r3, [r3, #112]
	str	r3, [r7, #20]
	b	.L217
.L218:
	ldr	r3, .L222
	ldr	r3, [r3, #116]
	str	r3, [r7, #20]
.L217:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #31
	str	r3, [r7, #12]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	lsr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L219
	movs	r3, #1
	strb	r3, [r7, #19]
	b	.L220
.L219:
	movs	r3, #0
	strb	r3, [r7, #19]
.L220:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L223:
	.align	2
.L222:
	.word	1073887232
	.size	RCC_GetFlagStatus, .-RCC_GetFlagStatus
	.section	.text.RCC_ClearFlag,"ax",%progbits
	.align	1
	.global	RCC_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_ClearFlag, %function
RCC_ClearFlag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L225
	ldr	r3, [r3, #116]
	ldr	r2, .L225
	orr	r3, r3, #16777216
	str	r3, [r2, #116]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L226:
	.align	2
.L225:
	.word	1073887232
	.size	RCC_ClearFlag, .-RCC_ClearFlag
	.section	.text.RCC_GetITStatus,"ax",%progbits
	.align	1
	.global	RCC_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_GetITStatus, %function
RCC_GetITStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L231
	ldr	r2, [r3, #12]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L228
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L229
.L228:
	movs	r3, #0
	strb	r3, [r7, #15]
.L229:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L232:
	.align	2
.L231:
	.word	1073887232
	.size	RCC_GetITStatus, .-RCC_GetITStatus
	.section	.text.RCC_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	RCC_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_ClearITPendingBit, %function
RCC_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L234
	ldrb	r3, [r7, #7]
	strb	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L235:
	.align	2
.L234:
	.word	1073887246
	.size	RCC_ClearITPendingBit, .-RCC_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
