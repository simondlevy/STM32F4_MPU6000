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
	.file	"stm32f4xx_rtc.c"
	.text
	.section	.text.RTC_DeInit,"ax",%progbits
	.align	1
	.global	RTC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_DeInit, %function
RTC_DeInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L9
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L9
	movs	r2, #83
	str	r2, [r3, #36]
	bl	RTC_EnterInitMode
	mov	r3, r0
	cmp	r3, #0
	bne	.L2
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L3
.L2:
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L9
	movw	r2, #8449
	str	r2, [r3, #4]
	ldr	r3, .L9
	ldr	r3, [r3, #8]
	ldr	r2, .L9
	and	r3, r3, #7
	str	r3, [r2, #8]
.L5:
	ldr	r3, .L9
	ldr	r3, [r3, #12]
	and	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #65536
	beq	.L4
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L5
.L4:
	ldr	r3, .L9
	ldr	r3, [r3, #12]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L6
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L3
.L6:
	ldr	r3, .L9
	ldr	r3, [r3, #8]
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L9
	movw	r2, #65535
	str	r2, [r3, #20]
	ldr	r3, .L9
	ldr	r2, .L9+4
	str	r2, [r3, #16]
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3, #72]
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L9
	movs	r2, #0
	str	r2, [r3, #64]
	bl	RTC_WaitForSynchro
	mov	r3, r0
	cmp	r3, #0
	bne	.L7
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L3
.L7:
	movs	r3, #1
	strb	r3, [r7, #15]
.L3:
	ldr	r3, .L9
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	1073752064
	.word	8323327
	.size	RTC_DeInit, .-RTC_DeInit
	.section	.text.RTC_Init,"ax",%progbits
	.align	1
	.global	RTC_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_Init, %function
RTC_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L15
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L15
	movs	r2, #83
	str	r2, [r3, #36]
	bl	RTC_EnterInitMode
	mov	r3, r0
	cmp	r3, #0
	bne	.L12
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L13
.L12:
	ldr	r3, .L15
	ldr	r3, [r3, #8]
	ldr	r2, .L15
	bic	r3, r3, #64
	str	r3, [r2, #8]
	ldr	r3, .L15
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, .L15
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r2, .L15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r2, #16]
	ldr	r3, .L15
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #16
	ldr	r1, .L15
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	bl	RTC_ExitInitMode
	movs	r3, #1
	strb	r3, [r7, #15]
.L13:
	ldr	r3, .L15
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	1073752064
	.size	RTC_Init, .-RTC_Init
	.section	.text.RTC_StructInit,"ax",%progbits
	.align	1
	.global	RTC_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_StructInit, %function
RTC_StructInit:
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
	movs	r2, #127
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #255
	str	r2, [r3, #8]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	RTC_StructInit, .-RTC_StructInit
	.section	.text.RTC_WriteProtectionCmd,"ax",%progbits
	.align	1
	.global	RTC_WriteProtectionCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_WriteProtectionCmd, %function
RTC_WriteProtectionCmd:
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
	movs	r2, #255
	str	r2, [r3, #36]
	b	.L21
.L19:
	ldr	r3, .L22
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L22
	movs	r2, #83
	str	r2, [r3, #36]
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
	.word	1073752064
	.size	RTC_WriteProtectionCmd, .-RTC_WriteProtectionCmd
	.section	.text.RTC_EnterInitMode,"ax",%progbits
	.align	1
	.global	RTC_EnterInitMode
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_EnterInitMode, %function
RTC_EnterInitMode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L31
	ldr	r3, [r3, #12]
	and	r3, r3, #64
	cmp	r3, #0
	bne	.L25
	ldr	r3, .L31
	mov	r2, #-1
	str	r2, [r3, #12]
.L27:
	ldr	r3, .L31
	ldr	r3, [r3, #12]
	and	r3, r3, #64
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #65536
	beq	.L26
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L27
.L26:
	ldr	r3, .L31
	ldr	r3, [r3, #12]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L28
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L29
.L28:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L29
.L25:
	movs	r3, #1
	strb	r3, [r7, #15]
.L29:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L32:
	.align	2
.L31:
	.word	1073752064
	.size	RTC_EnterInitMode, .-RTC_EnterInitMode
	.section	.text.RTC_ExitInitMode,"ax",%progbits
	.align	1
	.global	RTC_ExitInitMode
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_ExitInitMode, %function
RTC_ExitInitMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L34
	ldr	r3, [r3, #12]
	ldr	r2, .L34
	bic	r3, r3, #128
	str	r3, [r2, #12]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	1073752064
	.size	RTC_ExitInitMode, .-RTC_ExitInitMode
	.section	.text.RTC_WaitForSynchro,"ax",%progbits
	.align	1
	.global	RTC_WaitForSynchro
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_WaitForSynchro, %function
RTC_WaitForSynchro:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L42
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L42
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r3, .L42
	ldr	r3, [r3, #12]
	ldr	r2, .L42
	bic	r3, r3, #160
	str	r3, [r2, #12]
.L38:
	ldr	r3, .L42
	ldr	r3, [r3, #12]
	and	r3, r3, #32
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #131072
	beq	.L37
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L38
.L37:
	ldr	r3, .L42
	ldr	r3, [r3, #12]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L39
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L40
.L39:
	movs	r3, #0
	strb	r3, [r7, #15]
.L40:
	ldr	r3, .L42
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L43:
	.align	2
.L42:
	.word	1073752064
	.size	RTC_WaitForSynchro, .-RTC_WaitForSynchro
	.section	.text.RTC_RefClockCmd,"ax",%progbits
	.align	1
	.global	RTC_RefClockCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_RefClockCmd, %function
RTC_RefClockCmd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L50
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L50
	movs	r2, #83
	str	r2, [r3, #36]
	bl	RTC_EnterInitMode
	mov	r3, r0
	cmp	r3, #0
	bne	.L45
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L46
.L45:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldr	r3, .L50
	ldr	r3, [r3, #8]
	ldr	r2, .L50
	orr	r3, r3, #16
	str	r3, [r2, #8]
	b	.L48
.L47:
	ldr	r3, .L50
	ldr	r3, [r3, #8]
	ldr	r2, .L50
	bic	r3, r3, #16
	str	r3, [r2, #8]
.L48:
	bl	RTC_ExitInitMode
	movs	r3, #1
	strb	r3, [r7, #15]
.L46:
	ldr	r3, .L50
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L51:
	.align	2
.L50:
	.word	1073752064
	.size	RTC_RefClockCmd, .-RTC_RefClockCmd
	.section	.text.RTC_BypassShadowCmd,"ax",%progbits
	.align	1
	.global	RTC_BypassShadowCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_BypassShadowCmd, %function
RTC_BypassShadowCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L55
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L55
	movs	r2, #83
	str	r2, [r3, #36]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L53
	ldr	r3, .L55
	ldr	r3, [r3, #8]
	ldr	r2, .L55
	orr	r3, r3, #32
	str	r3, [r2, #8]
	b	.L54
.L53:
	ldr	r3, .L55
	ldr	r3, [r3, #8]
	ldr	r2, .L55
	and	r3, r3, #223
	str	r3, [r2, #8]
.L54:
	ldr	r3, .L55
	movs	r2, #255
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
	.word	1073752064
	.size	RTC_BypassShadowCmd, .-RTC_BypassShadowCmd
	.section	.text.RTC_SetTime,"ax",%progbits
	.align	1
	.global	RTC_SetTime
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_SetTime, %function
RTC_SetTime:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	strb	r3, [r7, #11]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L58
	ldr	r3, .L68
	ldr	r3, [r3, #8]
	and	r3, r3, #64
	cmp	r3, #0
	bne	.L59
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3, #3]
	b	.L59
.L58:
	ldr	r3, .L68
	ldr	r3, [r3, #8]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L60
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	str	r3, [r7, #12]
	b	.L59
.L60:
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3, #3]
.L59:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L61
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	b	.L62
.L61:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ByteToBcd2
	mov	r3, r0
	lsls	r4, r3, #16
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ByteToBcd2
	mov	r3, r0
	lsls	r3, r3, #8
	orrs	r4, r4, r3
	ldr	r3, [r7]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ByteToBcd2
	mov	r3, r0
	orr	r2, r4, r3
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r3, r3, r2
	str	r3, [r7, #12]
.L62:
	ldr	r3, .L68
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L68
	movs	r2, #83
	str	r2, [r3, #36]
	bl	RTC_EnterInitMode
	mov	r3, r0
	cmp	r3, #0
	bne	.L63
	movs	r3, #0
	strb	r3, [r7, #11]
	b	.L64
.L63:
	ldr	r2, .L68
	ldr	r3, [r7, #12]
	and	r3, r3, #2139062143
	bic	r3, r3, #2130706432
	str	r3, [r2]
	bl	RTC_ExitInitMode
	ldr	r3, .L68
	ldr	r3, [r3, #8]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L65
	bl	RTC_WaitForSynchro
	mov	r3, r0
	cmp	r3, #0
	bne	.L66
	movs	r3, #0
	strb	r3, [r7, #11]
	b	.L64
.L66:
	movs	r3, #1
	strb	r3, [r7, #11]
	b	.L64
.L65:
	movs	r3, #1
	strb	r3, [r7, #11]
.L64:
	ldr	r3, .L68
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L69:
	.align	2
.L68:
	.word	1073752064
	.size	RTC_SetTime, .-RTC_SetTime
	.section	.text.RTC_TimeStructInit,"ax",%progbits
	.align	1
	.global	RTC_TimeStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TimeStructInit, %function
RTC_TimeStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	RTC_TimeStructInit, .-RTC_TimeStructInit
	.section	.text.RTC_GetTime,"ax",%progbits
	.align	1
	.global	RTC_GetTime
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetTime, %function
RTC_GetTime:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L74
	ldr	r3, [r3]
	and	r3, r3, #2139062143
	bic	r3, r3, #2130706432
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #63
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #12]
	uxtb	r3, r3
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #2]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #3]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L73
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #1]
	ldr	r3, [r7]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #2]
.L73:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L75:
	.align	2
.L74:
	.word	1073752064
	.size	RTC_GetTime, .-RTC_GetTime
	.section	.text.RTC_GetSubSecond,"ax",%progbits
	.align	1
	.global	RTC_GetSubSecond
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetSubSecond, %function
RTC_GetSubSecond:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	ldr	r3, .L78
	ldr	r3, [r3, #40]
	str	r3, [r7, #4]
	ldr	r3, .L78
	ldr	r3, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L79:
	.align	2
.L78:
	.word	1073752064
	.size	RTC_GetSubSecond, .-RTC_GetSubSecond
	.section	.text.RTC_SetDate,"ax",%progbits
	.align	1
	.global	RTC_SetDate
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_SetDate, %function
RTC_SetDate:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	strb	r3, [r7, #11]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L81
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L81
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	bic	r3, r3, #16
	uxtb	r3, r3
	adds	r3, r3, #10
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #1]
.L81:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L82
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	str	r3, [r7, #12]
.L82:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L83
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #13
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	b	.L84
.L83:
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ByteToBcd2
	mov	r3, r0
	lsls	r4, r3, #16
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ByteToBcd2
	mov	r3, r0
	lsls	r3, r3, #8
	orrs	r4, r4, r3
	ldr	r3, [r7]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ByteToBcd2
	mov	r3, r0
	orr	r2, r4, r3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #13
	orrs	r3, r3, r2
	str	r3, [r7, #12]
.L84:
	ldr	r3, .L90
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L90
	movs	r2, #83
	str	r2, [r3, #36]
	bl	RTC_EnterInitMode
	mov	r3, r0
	cmp	r3, #0
	bne	.L85
	movs	r3, #0
	strb	r3, [r7, #11]
	b	.L86
.L85:
	ldr	r2, .L90
	ldr	r3, [r7, #12]
	bic	r3, r3, #-16777216
	bic	r3, r3, #192
	str	r3, [r2, #4]
	bl	RTC_ExitInitMode
	ldr	r3, .L90
	ldr	r3, [r3, #8]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L87
	bl	RTC_WaitForSynchro
	mov	r3, r0
	cmp	r3, #0
	bne	.L88
	movs	r3, #0
	strb	r3, [r7, #11]
	b	.L86
.L88:
	movs	r3, #1
	strb	r3, [r7, #11]
	b	.L86
.L87:
	movs	r3, #1
	strb	r3, [r7, #11]
.L86:
	ldr	r3, .L90
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L91:
	.align	2
.L90:
	.word	1073752064
	.size	RTC_SetDate, .-RTC_SetDate
	.section	.text.RTC_DateStructInit,"ax",%progbits
	.align	1
	.global	RTC_DateStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_DateStructInit, %function
RTC_DateStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #2]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	RTC_DateStructInit, .-RTC_DateStructInit
	.section	.text.RTC_GetDate,"ax",%progbits
	.align	1
	.global	RTC_GetDate
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetDate, %function
RTC_GetDate:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L96
	ldr	r3, [r3, #4]
	bic	r3, r3, #-16777216
	bic	r3, r3, #192
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #3]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	and	r3, r3, #31
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #12]
	uxtb	r3, r3
	and	r3, r3, #63
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #2]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #13
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L95
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #3]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #1]
	ldr	r3, [r7]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #2]
.L95:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L97:
	.align	2
.L96:
	.word	1073752064
	.size	RTC_GetDate, .-RTC_GetDate
	.section	.text.RTC_SetAlarm,"ax",%progbits
	.align	1
	.global	RTC_SetAlarm
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_SetAlarm, %function
RTC_SetAlarm:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L99
	ldr	r3, .L109
	ldr	r3, [r3, #8]
	and	r3, r3, #64
	cmp	r3, #0
	bne	.L101
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #3]
	b	.L101
.L99:
	ldr	r3, .L109
	ldr	r3, [r3, #8]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L102
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	str	r3, [r7, #20]
	b	.L103
.L102:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #3]
.L103:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L104
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	str	r3, [r7, #20]
	b	.L101
.L104:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	str	r3, [r7, #20]
.L101:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L105
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	lsls	r3, r3, #24
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	b	.L106
.L105:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ByteToBcd2
	mov	r3, r0
	lsls	r4, r3, #16
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ByteToBcd2
	mov	r3, r0
	lsls	r3, r3, #8
	orrs	r4, r4, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ByteToBcd2
	mov	r3, r0
	orr	r2, r4, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r4, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ByteToBcd2
	mov	r3, r0
	lsls	r3, r3, #24
	orr	r2, r4, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L106:
	ldr	r3, .L109
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L109
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r3, [r7, #8]
	cmp	r3, #256
	bne	.L107
	ldr	r2, .L109
	ldr	r3, [r7, #20]
	str	r3, [r2, #28]
	b	.L108
.L107:
	ldr	r2, .L109
	ldr	r3, [r7, #20]
	str	r3, [r2, #32]
.L108:
	ldr	r3, .L109
	movs	r2, #255
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L110:
	.align	2
.L109:
	.word	1073752064
	.size	RTC_SetAlarm, .-RTC_SetAlarm
	.section	.text.RTC_AlarmStructInit,"ax",%progbits
	.align	1
	.global	RTC_AlarmStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_AlarmStructInit, %function
RTC_AlarmStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #2]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	RTC_AlarmStructInit, .-RTC_AlarmStructInit
	.section	.text.RTC_GetAlarm,"ax",%progbits
	.align	1
	.global	RTC_GetAlarm
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetAlarm, %function
RTC_GetAlarm:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r3, #256
	bne	.L113
	ldr	r3, .L117
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	b	.L114
.L113:
	ldr	r3, .L117
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
.L114:
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #63
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #20]
	uxtb	r3, r3
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #2]
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #3]
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #24
	uxtb	r3, r3
	and	r3, r3, #63
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #12]
	ldr	r3, [r7, #20]
	and	r2, r3, #1073741824
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	and	r2, r3, #-2139062144
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L116
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #2]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #12]
.L116:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L118:
	.align	2
.L117:
	.word	1073752064
	.size	RTC_GetAlarm, .-RTC_GetAlarm
	.section	.text.RTC_AlarmCmd,"ax",%progbits
	.align	1
	.global	RTC_AlarmCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_AlarmCmd, %function
RTC_AlarmCmd:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, .L126
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L126
	movs	r2, #83
	str	r2, [r3, #36]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L120
	ldr	r3, .L126
	ldr	r2, [r3, #8]
	ldr	r1, .L126
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L121
.L120:
	ldr	r3, .L126
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L126
	ands	r3, r3, r2
	str	r3, [r1, #8]
.L123:
	ldr	r3, .L126
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	ands	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #65536
	beq	.L122
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L123
.L122:
	ldr	r3, .L126
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L124
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L121
.L124:
	movs	r3, #1
	strb	r3, [r7, #23]
.L121:
	ldr	r3, .L126
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L127:
	.align	2
.L126:
	.word	1073752064
	.size	RTC_AlarmCmd, .-RTC_AlarmCmd
	.section	.text.RTC_AlarmSubSecondConfig,"ax",%progbits
	.align	1
	.global	RTC_AlarmSubSecondConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_AlarmSubSecondConfig, %function
RTC_AlarmSubSecondConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, .L131
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L131
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #256
	bne	.L129
	ldr	r2, .L131
	ldr	r3, [r7, #20]
	str	r3, [r2, #68]
	b	.L130
.L129:
	ldr	r2, .L131
	ldr	r3, [r7, #20]
	str	r3, [r2, #72]
.L130:
	ldr	r3, .L131
	movs	r2, #255
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L132:
	.align	2
.L131:
	.word	1073752064
	.size	RTC_AlarmSubSecondConfig, .-RTC_AlarmSubSecondConfig
	.section	.text.RTC_GetAlarmSubSecond,"ax",%progbits
	.align	1
	.global	RTC_GetAlarmSubSecond
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetAlarmSubSecond, %function
RTC_GetAlarmSubSecond:
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
	cmp	r3, #256
	bne	.L134
	ldr	r3, .L137
	ldr	r3, [r3, #68]
	ubfx	r3, r3, #0, #15
	str	r3, [r7, #12]
	b	.L135
.L134:
	ldr	r3, .L137
	ldr	r3, [r3, #72]
	ubfx	r3, r3, #0, #15
	str	r3, [r7, #12]
.L135:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L138:
	.align	2
.L137:
	.word	1073752064
	.size	RTC_GetAlarmSubSecond, .-RTC_GetAlarmSubSecond
	.section	.text.RTC_WakeUpClockConfig,"ax",%progbits
	.align	1
	.global	RTC_WakeUpClockConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_WakeUpClockConfig, %function
RTC_WakeUpClockConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L140
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L140
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r3, .L140
	ldr	r3, [r3, #8]
	ldr	r2, .L140
	bic	r3, r3, #7
	str	r3, [r2, #8]
	ldr	r3, .L140
	ldr	r2, [r3, #8]
	ldr	r1, .L140
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, .L140
	movs	r2, #255
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L141:
	.align	2
.L140:
	.word	1073752064
	.size	RTC_WakeUpClockConfig, .-RTC_WakeUpClockConfig
	.section	.text.RTC_SetWakeUpCounter,"ax",%progbits
	.align	1
	.global	RTC_SetWakeUpCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_SetWakeUpCounter, %function
RTC_SetWakeUpCounter:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L143
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L143
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r2, .L143
	ldr	r3, [r7, #4]
	str	r3, [r2, #20]
	ldr	r3, .L143
	movs	r2, #255
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L144:
	.align	2
.L143:
	.word	1073752064
	.size	RTC_SetWakeUpCounter, .-RTC_SetWakeUpCounter
	.section	.text.RTC_GetWakeUpCounter,"ax",%progbits
	.align	1
	.global	RTC_GetWakeUpCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetWakeUpCounter, %function
RTC_GetWakeUpCounter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L147
	ldr	r3, [r3, #20]
	uxth	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L148:
	.align	2
.L147:
	.word	1073752064
	.size	RTC_GetWakeUpCounter, .-RTC_GetWakeUpCounter
	.section	.text.RTC_WakeUpCmd,"ax",%progbits
	.align	1
	.global	RTC_WakeUpCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_WakeUpCmd, %function
RTC_WakeUpCmd:
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
	str	r3, [r7, #16]
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, .L156
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L156
	movs	r2, #83
	str	r2, [r3, #36]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L150
	ldr	r3, .L156
	ldr	r3, [r3, #8]
	ldr	r2, .L156
	orr	r3, r3, #1024
	str	r3, [r2, #8]
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L151
.L150:
	ldr	r3, .L156
	ldr	r3, [r3, #8]
	ldr	r2, .L156
	bic	r3, r3, #1024
	str	r3, [r2, #8]
.L153:
	ldr	r3, .L156
	ldr	r3, [r3, #12]
	and	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #65536
	beq	.L152
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L153
.L152:
	ldr	r3, .L156
	ldr	r3, [r3, #12]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L154
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L151
.L154:
	movs	r3, #1
	strb	r3, [r7, #23]
.L151:
	ldr	r3, .L156
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L157:
	.align	2
.L156:
	.word	1073752064
	.size	RTC_WakeUpCmd, .-RTC_WakeUpCmd
	.section	.text.RTC_DayLightSavingConfig,"ax",%progbits
	.align	1
	.global	RTC_DayLightSavingConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_DayLightSavingConfig, %function
RTC_DayLightSavingConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L159
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L159
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r3, .L159
	ldr	r3, [r3, #8]
	ldr	r2, .L159
	bic	r3, r3, #262144
	str	r3, [r2, #8]
	ldr	r3, .L159
	ldr	r2, [r3, #8]
	ldr	r1, [r7, #4]
	ldr	r3, [r7]
	orrs	r3, r3, r1
	ldr	r1, .L159
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, .L159
	movs	r2, #255
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L160:
	.align	2
.L159:
	.word	1073752064
	.size	RTC_DayLightSavingConfig, .-RTC_DayLightSavingConfig
	.section	.text.RTC_GetStoreOperation,"ax",%progbits
	.align	1
	.global	RTC_GetStoreOperation
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetStoreOperation, %function
RTC_GetStoreOperation:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L163
	ldr	r3, [r3, #8]
	and	r3, r3, #262144
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L164:
	.align	2
.L163:
	.word	1073752064
	.size	RTC_GetStoreOperation, .-RTC_GetStoreOperation
	.section	.text.RTC_OutputConfig,"ax",%progbits
	.align	1
	.global	RTC_OutputConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_OutputConfig, %function
RTC_OutputConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L166
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L166
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r3, .L166
	ldr	r3, [r3, #8]
	ldr	r2, .L166
	bic	r3, r3, #7340032
	str	r3, [r2, #8]
	ldr	r3, .L166
	ldr	r2, [r3, #8]
	ldr	r1, [r7, #4]
	ldr	r3, [r7]
	orrs	r3, r3, r1
	ldr	r1, .L166
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, .L166
	movs	r2, #255
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L167:
	.align	2
.L166:
	.word	1073752064
	.size	RTC_OutputConfig, .-RTC_OutputConfig
	.section	.text.RTC_CoarseCalibConfig,"ax",%progbits
	.align	1
	.global	RTC_CoarseCalibConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_CoarseCalibConfig, %function
RTC_CoarseCalibConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L172
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L172
	movs	r2, #83
	str	r2, [r3, #36]
	bl	RTC_EnterInitMode
	mov	r3, r0
	cmp	r3, #0
	bne	.L169
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L170
.L169:
	ldr	r1, .L172
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	orrs	r3, r3, r2
	str	r3, [r1, #24]
	bl	RTC_ExitInitMode
	movs	r3, #1
	strb	r3, [r7, #15]
.L170:
	ldr	r3, .L172
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L173:
	.align	2
.L172:
	.word	1073752064
	.size	RTC_CoarseCalibConfig, .-RTC_CoarseCalibConfig
	.section	.text.RTC_CoarseCalibCmd,"ax",%progbits
	.align	1
	.global	RTC_CoarseCalibCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_CoarseCalibCmd, %function
RTC_CoarseCalibCmd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L180
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L180
	movs	r2, #83
	str	r2, [r3, #36]
	bl	RTC_EnterInitMode
	mov	r3, r0
	cmp	r3, #0
	bne	.L175
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L176
.L175:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L177
	ldr	r3, .L180
	ldr	r3, [r3, #8]
	ldr	r2, .L180
	orr	r3, r3, #128
	str	r3, [r2, #8]
	b	.L178
.L177:
	ldr	r3, .L180
	ldr	r3, [r3, #8]
	ldr	r2, .L180
	bic	r3, r3, #128
	str	r3, [r2, #8]
.L178:
	bl	RTC_ExitInitMode
	movs	r3, #1
	strb	r3, [r7, #15]
.L176:
	ldr	r3, .L180
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L181:
	.align	2
.L180:
	.word	1073752064
	.size	RTC_CoarseCalibCmd, .-RTC_CoarseCalibCmd
	.section	.text.RTC_CalibOutputCmd,"ax",%progbits
	.align	1
	.global	RTC_CalibOutputCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_CalibOutputCmd, %function
RTC_CalibOutputCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L185
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L185
	movs	r2, #83
	str	r2, [r3, #36]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L183
	ldr	r3, .L185
	ldr	r3, [r3, #8]
	ldr	r2, .L185
	orr	r3, r3, #8388608
	str	r3, [r2, #8]
	b	.L184
.L183:
	ldr	r3, .L185
	ldr	r3, [r3, #8]
	ldr	r2, .L185
	bic	r3, r3, #8388608
	str	r3, [r2, #8]
.L184:
	ldr	r3, .L185
	movs	r2, #255
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L186:
	.align	2
.L185:
	.word	1073752064
	.size	RTC_CalibOutputCmd, .-RTC_CalibOutputCmd
	.section	.text.RTC_CalibOutputConfig,"ax",%progbits
	.align	1
	.global	RTC_CalibOutputConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_CalibOutputConfig, %function
RTC_CalibOutputConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L188
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L188
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r3, .L188
	ldr	r3, [r3, #8]
	ldr	r2, .L188
	bic	r3, r3, #524288
	str	r3, [r2, #8]
	ldr	r3, .L188
	ldr	r2, [r3, #8]
	ldr	r1, .L188
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, .L188
	movs	r2, #255
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L189:
	.align	2
.L188:
	.word	1073752064
	.size	RTC_CalibOutputConfig, .-RTC_CalibOutputConfig
	.section	.text.RTC_SmoothCalibConfig,"ax",%progbits
	.align	1
	.global	RTC_SmoothCalibConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_SmoothCalibConfig, %function
RTC_SmoothCalibConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, .L197
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L197
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r3, .L197
	ldr	r3, [r3, #12]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L191
	b	.L192
.L193:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L192:
	ldr	r3, .L197
	ldr	r3, [r3, #12]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L191
	ldr	r3, [r7, #16]
	cmp	r3, #131072
	bne	.L193
.L191:
	ldr	r3, .L197
	ldr	r3, [r3, #12]
	and	r3, r3, #65536
	cmp	r3, #0
	bne	.L194
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	orrs	r2, r2, r3
	ldr	r1, .L197
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #60]
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L195
.L194:
	movs	r3, #0
	strb	r3, [r7, #23]
.L195:
	ldr	r3, .L197
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L198:
	.align	2
.L197:
	.word	1073752064
	.size	RTC_SmoothCalibConfig, .-RTC_SmoothCalibConfig
	.section	.text.RTC_TimeStampCmd,"ax",%progbits
	.align	1
	.global	RTC_TimeStampCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TimeStampCmd, %function
RTC_TimeStampCmd:
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
	ldr	r3, .L202
	ldr	r3, [r3, #8]
	bic	r3, r3, #2048
	bic	r3, r3, #8
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L200
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	orr	r3, r3, #2048
	str	r3, [r7, #12]
	b	.L201
.L200:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
.L201:
	ldr	r3, .L202
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L202
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r2, .L202
	ldr	r3, [r7, #12]
	str	r3, [r2, #8]
	ldr	r3, .L202
	movs	r2, #255
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L203:
	.align	2
.L202:
	.word	1073752064
	.size	RTC_TimeStampCmd, .-RTC_TimeStampCmd
	.section	.text.RTC_GetTimeStamp,"ax",%progbits
	.align	1
	.global	RTC_GetTimeStamp
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetTimeStamp, %function
RTC_GetTimeStamp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, .L207
	ldr	r3, [r3, #48]
	and	r3, r3, #2139062143
	bic	r3, r3, #2130706432
	str	r3, [r7, #20]
	ldr	r3, .L207
	ldr	r3, [r3, #52]
	bic	r3, r3, #-16777216
	bic	r3, r3, #192
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #63
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #20]
	uxtb	r3, r3
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3, #2]
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3, #3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #3]
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	and	r3, r3, #31
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #16]
	uxtb	r3, r3
	and	r3, r3, #63
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #2]
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #13
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L206
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3, #2]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #2]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_Bcd2ToByte
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
.L206:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L208:
	.align	2
.L207:
	.word	1073752064
	.size	RTC_GetTimeStamp, .-RTC_GetTimeStamp
	.section	.text.RTC_GetTimeStampSubSecond,"ax",%progbits
	.align	1
	.global	RTC_GetTimeStampSubSecond
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetTimeStampSubSecond, %function
RTC_GetTimeStampSubSecond:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L211
	ldr	r3, [r3, #56]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L212:
	.align	2
.L211:
	.word	1073752064
	.size	RTC_GetTimeStampSubSecond, .-RTC_GetTimeStampSubSecond
	.section	.text.RTC_TamperTriggerConfig,"ax",%progbits
	.align	1
	.global	RTC_TamperTriggerConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TamperTriggerConfig, %function
RTC_TamperTriggerConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L214
	ldr	r3, .L217
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #1
	mvns	r3, r3
	ldr	r1, .L217
	ands	r3, r3, r2
	str	r3, [r1, #64]
	b	.L216
.L214:
	ldr	r3, .L217
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #1
	ldr	r1, .L217
	orrs	r3, r3, r2
	str	r3, [r1, #64]
.L216:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L218:
	.align	2
.L217:
	.word	1073752064
	.size	RTC_TamperTriggerConfig, .-RTC_TamperTriggerConfig
	.section	.text.RTC_TamperCmd,"ax",%progbits
	.align	1
	.global	RTC_TamperCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TamperCmd, %function
RTC_TamperCmd:
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
	beq	.L220
	ldr	r3, .L223
	ldr	r2, [r3, #64]
	ldr	r1, .L223
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #64]
	b	.L222
.L220:
	ldr	r3, .L223
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L223
	ands	r3, r3, r2
	str	r3, [r1, #64]
.L222:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L224:
	.align	2
.L223:
	.word	1073752064
	.size	RTC_TamperCmd, .-RTC_TamperCmd
	.section	.text.RTC_TamperFilterConfig,"ax",%progbits
	.align	1
	.global	RTC_TamperFilterConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TamperFilterConfig, %function
RTC_TamperFilterConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L226
	ldr	r3, [r3, #64]
	ldr	r2, .L226
	bic	r3, r3, #6144
	str	r3, [r2, #64]
	ldr	r3, .L226
	ldr	r2, [r3, #64]
	ldr	r1, .L226
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #64]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L227:
	.align	2
.L226:
	.word	1073752064
	.size	RTC_TamperFilterConfig, .-RTC_TamperFilterConfig
	.section	.text.RTC_TamperSamplingFreqConfig,"ax",%progbits
	.align	1
	.global	RTC_TamperSamplingFreqConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TamperSamplingFreqConfig, %function
RTC_TamperSamplingFreqConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L229
	ldr	r3, [r3, #64]
	ldr	r2, .L229
	bic	r3, r3, #1792
	str	r3, [r2, #64]
	ldr	r3, .L229
	ldr	r2, [r3, #64]
	ldr	r1, .L229
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #64]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L230:
	.align	2
.L229:
	.word	1073752064
	.size	RTC_TamperSamplingFreqConfig, .-RTC_TamperSamplingFreqConfig
	.section	.text.RTC_TamperPinsPrechargeDuration,"ax",%progbits
	.align	1
	.global	RTC_TamperPinsPrechargeDuration
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TamperPinsPrechargeDuration, %function
RTC_TamperPinsPrechargeDuration:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L232
	ldr	r3, [r3, #64]
	ldr	r2, .L232
	bic	r3, r3, #24576
	str	r3, [r2, #64]
	ldr	r3, .L232
	ldr	r2, [r3, #64]
	ldr	r1, .L232
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #64]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L233:
	.align	2
.L232:
	.word	1073752064
	.size	RTC_TamperPinsPrechargeDuration, .-RTC_TamperPinsPrechargeDuration
	.section	.text.RTC_TimeStampOnTamperDetectionCmd,"ax",%progbits
	.align	1
	.global	RTC_TimeStampOnTamperDetectionCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TimeStampOnTamperDetectionCmd, %function
RTC_TimeStampOnTamperDetectionCmd:
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
	beq	.L235
	ldr	r3, .L238
	ldr	r3, [r3, #64]
	ldr	r2, .L238
	orr	r3, r3, #128
	str	r3, [r2, #64]
	b	.L237
.L235:
	ldr	r3, .L238
	ldr	r3, [r3, #64]
	ldr	r2, .L238
	bic	r3, r3, #128
	str	r3, [r2, #64]
.L237:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L239:
	.align	2
.L238:
	.word	1073752064
	.size	RTC_TimeStampOnTamperDetectionCmd, .-RTC_TimeStampOnTamperDetectionCmd
	.section	.text.RTC_TamperPullUpCmd,"ax",%progbits
	.align	1
	.global	RTC_TamperPullUpCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TamperPullUpCmd, %function
RTC_TamperPullUpCmd:
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
	beq	.L241
	ldr	r3, .L244
	ldr	r3, [r3, #64]
	ldr	r2, .L244
	bic	r3, r3, #32768
	str	r3, [r2, #64]
	b	.L243
.L241:
	ldr	r3, .L244
	ldr	r3, [r3, #64]
	ldr	r2, .L244
	orr	r3, r3, #32768
	str	r3, [r2, #64]
.L243:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L245:
	.align	2
.L244:
	.word	1073752064
	.size	RTC_TamperPullUpCmd, .-RTC_TamperPullUpCmd
	.section	.text.RTC_WriteBackupRegister,"ax",%progbits
	.align	1
	.global	RTC_WriteBackupRegister
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_WriteBackupRegister, %function
RTC_WriteBackupRegister:
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
	ldr	r3, .L247
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	lsls	r2, r3, #2
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r2, r3
	ldr	r3, [r7]
	str	r3, [r2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L248:
	.align	2
.L247:
	.word	1073752144
	.size	RTC_WriteBackupRegister, .-RTC_WriteBackupRegister
	.section	.text.RTC_ReadBackupRegister,"ax",%progbits
	.align	1
	.global	RTC_ReadBackupRegister
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_ReadBackupRegister, %function
RTC_ReadBackupRegister:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L251
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	lsls	r2, r3, #2
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L252:
	.align	2
.L251:
	.word	1073752144
	.size	RTC_ReadBackupRegister, .-RTC_ReadBackupRegister
	.section	.text.RTC_TamperPinSelection,"ax",%progbits
	.align	1
	.global	RTC_TamperPinSelection
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TamperPinSelection, %function
RTC_TamperPinSelection:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L254
	ldr	r3, [r3, #64]
	ldr	r2, .L254
	bic	r3, r3, #65536
	str	r3, [r2, #64]
	ldr	r3, .L254
	ldr	r2, [r3, #64]
	ldr	r1, .L254
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #64]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L255:
	.align	2
.L254:
	.word	1073752064
	.size	RTC_TamperPinSelection, .-RTC_TamperPinSelection
	.section	.text.RTC_TimeStampPinSelection,"ax",%progbits
	.align	1
	.global	RTC_TimeStampPinSelection
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_TimeStampPinSelection, %function
RTC_TimeStampPinSelection:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L257
	ldr	r3, [r3, #64]
	ldr	r2, .L257
	bic	r3, r3, #131072
	str	r3, [r2, #64]
	ldr	r3, .L257
	ldr	r2, [r3, #64]
	ldr	r1, .L257
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #64]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L258:
	.align	2
.L257:
	.word	1073752064
	.size	RTC_TimeStampPinSelection, .-RTC_TimeStampPinSelection
	.section	.text.RTC_OutputTypeConfig,"ax",%progbits
	.align	1
	.global	RTC_OutputTypeConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_OutputTypeConfig, %function
RTC_OutputTypeConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L260
	ldr	r3, [r3, #64]
	ldr	r2, .L260
	bic	r3, r3, #262144
	str	r3, [r2, #64]
	ldr	r3, .L260
	ldr	r2, [r3, #64]
	ldr	r1, .L260
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #64]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L261:
	.align	2
.L260:
	.word	1073752064
	.size	RTC_OutputTypeConfig, .-RTC_OutputTypeConfig
	.section	.text.RTC_SynchroShiftConfig,"ax",%progbits
	.align	1
	.global	RTC_SynchroShiftConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_SynchroShiftConfig, %function
RTC_SynchroShiftConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L271
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L271
	movs	r2, #83
	str	r2, [r3, #36]
	ldr	r3, .L271
	ldr	r3, [r3, #12]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L263
	b	.L264
.L265:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L264:
	ldr	r3, .L271
	ldr	r3, [r3, #12]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L263
	ldr	r3, [r7, #8]
	cmp	r3, #4096
	bne	.L265
.L263:
	ldr	r3, .L271
	ldr	r3, [r3, #12]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L266
	ldr	r3, .L271
	ldr	r3, [r3, #8]
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L267
	ldr	r1, .L271
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #44]
	bl	RTC_WaitForSynchro
	mov	r3, r0
	cmp	r3, #0
	bne	.L268
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L269
.L268:
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L269
.L267:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L269
.L266:
	movs	r3, #0
	strb	r3, [r7, #15]
.L269:
	ldr	r3, .L271
	movs	r2, #255
	str	r2, [r3, #36]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L272:
	.align	2
.L271:
	.word	1073752064
	.size	RTC_SynchroShiftConfig, .-RTC_SynchroShiftConfig
	.section	.text.RTC_ITConfig,"ax",%progbits
	.align	1
	.global	RTC_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_ITConfig, %function
RTC_ITConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, .L276
	movs	r2, #202
	str	r2, [r3, #36]
	ldr	r3, .L276
	movs	r2, #83
	str	r2, [r3, #36]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L274
	ldr	r3, .L276
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	bic	r3, r3, #4
	ldr	r1, .L276
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, .L276
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #4]
	and	r3, r3, #4
	ldr	r1, .L276
	orrs	r3, r3, r2
	str	r3, [r1, #64]
	b	.L275
.L274:
	ldr	r3, .L276
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	bic	r3, r3, #4
	mvns	r3, r3
	ldr	r1, .L276
	ands	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, .L276
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #4]
	and	r3, r3, #4
	mvns	r3, r3
	ldr	r1, .L276
	ands	r3, r3, r2
	str	r3, [r1, #64]
.L275:
	ldr	r3, .L276
	movs	r2, #255
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L277:
	.align	2
.L276:
	.word	1073752064
	.size	RTC_ITConfig, .-RTC_ITConfig
	.section	.text.RTC_GetFlagStatus,"ax",%progbits
	.align	1
	.global	RTC_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetFlagStatus, %function
RTC_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L282
	ldr	r2, [r3, #12]
	ldr	r3, .L282+4
	ands	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L279
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L280
.L279:
	movs	r3, #0
	strb	r3, [r7, #15]
.L280:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L283:
	.align	2
.L282:
	.word	1073752064
	.word	98175
	.size	RTC_GetFlagStatus, .-RTC_GetFlagStatus
	.section	.text.RTC_ClearFlag,"ax",%progbits
	.align	1
	.global	RTC_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_ClearFlag, %function
RTC_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	uxth	r3, r3
	orr	r3, r3, #128
	mvns	r2, r3
	ldr	r3, .L285
	ldr	r3, [r3, #12]
	and	r3, r3, #128
	ldr	r1, .L285
	orrs	r3, r3, r2
	str	r3, [r1, #12]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L286:
	.align	2
.L285:
	.word	1073752064
	.size	RTC_ClearFlag, .-RTC_ClearFlag
	.section	.text.RTC_GetITStatus,"ax",%progbits
	.align	1
	.global	RTC_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_GetITStatus, %function
RTC_GetITStatus:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L291
	ldr	r3, [r3, #64]
	and	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, .L291
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	lsrs	r1, r3, #15
	ldr	r3, [r7, #16]
	ands	r3, r3, r1
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	lsrs	r1, r3, #16
	ldr	r3, [r7, #16]
	ands	r3, r3, r1
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, .L291
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #4
	ands	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L288
	ldr	r3, [r7, #16]
	uxth	r3, r3
	cmp	r3, #0
	beq	.L288
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L289
.L288:
	movs	r3, #0
	strb	r3, [r7, #23]
.L289:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L292:
	.align	2
.L291:
	.word	1073752064
	.size	RTC_GetITStatus, .-RTC_GetITStatus
	.section	.text.RTC_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	RTC_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_ClearITPendingBit, %function
RTC_ClearITPendingBit:
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
	lsrs	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxth	r3, r3
	orr	r3, r3, #128
	mvns	r2, r3
	ldr	r3, .L294
	ldr	r3, [r3, #12]
	and	r3, r3, #128
	ldr	r1, .L294
	orrs	r3, r3, r2
	str	r3, [r1, #12]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L295:
	.align	2
.L294:
	.word	1073752064
	.size	RTC_ClearITPendingBit, .-RTC_ClearITPendingBit
	.section	.text.RTC_ByteToBcd2,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_ByteToBcd2, %function
RTC_ByteToBcd2:
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
	b	.L297
.L298:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #7]
	subs	r3, r3, #10
	strb	r3, [r7, #7]
.L297:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #9
	bhi	.L298
	ldrb	r3, [r7, #15]
	lsls	r3, r3, #4
	uxtb	r2, r3
	ldrb	r3, [r7, #7]
	orrs	r3, r3, r2
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	RTC_ByteToBcd2, .-RTC_ByteToBcd2
	.section	.text.RTC_Bcd2ToByte,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	RTC_Bcd2ToByte, %function
RTC_Bcd2ToByte:
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
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	mov	r2, r3
	lsls	r2, r2, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #7]
	and	r3, r3, #15
	uxtb	r2, r3
	ldrb	r3, [r7, #15]
	add	r3, r3, r2
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	RTC_Bcd2ToByte, .-RTC_Bcd2ToByte
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
