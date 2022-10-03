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
	.file	"usbd_core.c"
	.text
	.global	SET_TEST_MODE
	.section	.bss.SET_TEST_MODE,"aw",%nobits
	.align	2
	.type	SET_TEST_MODE, %object
	.size	SET_TEST_MODE, 4
SET_TEST_MODE:
	.space	4
	.global	USBD_DCD_INT_cb
	.section	.data.USBD_DCD_INT_cb,"aw"
	.align	2
	.type	USBD_DCD_INT_cb, %object
	.size	USBD_DCD_INT_cb, 44
USBD_DCD_INT_cb:
	.word	USBD_DataOutStage
	.word	USBD_DataInStage
	.word	USBD_SetupStage
	.word	USBD_SOF
	.word	USBD_Reset
	.word	USBD_Suspend
	.word	USBD_Resume
	.word	USBD_IsoINIncomplete
	.word	USBD_IsoOUTIncomplete
	.word	0
	.word	0
	.global	USBD_DCD_INT_fops
	.section	.data.USBD_DCD_INT_fops,"aw"
	.align	2
	.type	USBD_DCD_INT_fops, %object
	.size	USBD_DCD_INT_fops, 4
USBD_DCD_INT_fops:
	.word	USBD_DCD_INT_cb
	.section	.text.USBD_Init,"ax",%progbits
	.align	1
	.global	USBD_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_Init, %function
USBD_Init:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1
	strb	r3, [r7, #11]
	ldr	r0, [r7, #12]
	bl	USB_OTG_BSP_Init
	ldr	r0, [r7, #12]
	bl	USBD_DeInit
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #1508]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #1512]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #1516]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	DCD_Init
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1512]
	ldr	r3, [r3]
	blx	r3
	ldr	r0, [r7, #12]
	bl	USB_OTG_BSP_EnableInterrupt
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_Init, .-USBD_Init
	.section	.text.USBD_DeInit,"ax",%progbits
	.align	1
	.global	USBD_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_DeInit, %function
USBD_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_DeInit, .-USBD_DeInit
	.section	.text.USBD_SetupStage,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_SetupStage, %function
USBD_SetupStage:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_ParseSetupRequest
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	and	r3, r3, #31
	cmp	r3, #2
	beq	.L5
	cmp	r3, #2
	bgt	.L6
	cmp	r3, #0
	beq	.L7
	cmp	r3, #1
	beq	.L8
	b	.L6
.L7:
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_StdDevReq
	b	.L9
.L8:
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_StdItfReq
	b	.L9
.L5:
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_StdEPReq
	b	.L9
.L6:
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	bic	r3, r3, #127
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	DCD_EP_Stall
	nop
.L9:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_SetupStage, .-USBD_SetupStage
	.section	.text.USBD_DataOutStage,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_DataOutStage, %function
USBD_DataOutStage:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L12
	ldr	r3, [r7, #4]
	add	r3, r3, #884
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #273]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L13
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L14
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L15
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
.L15:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	uxth	r3, r3
	mov	r2, r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlContinueRx
	b	.L13
.L14:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #4]
	blx	r3
.L16:
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L13
.L12:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L13
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #24]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
.L13:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_DataOutStage, .-USBD_DataOutStage
	.section	.text.USBD_DataInStage,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_DataInStage, %function
USBD_DataInStage:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L19
	ldr	r3, [r7, #4]
	add	r3, r3, #284
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #273]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L20
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L21
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L22
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
.L22:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	uxth	r3, r3
	mov	r2, r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlContinueSendData
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	DCD_EP_PrepareRx
	b	.L20
.L21:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	udiv	r1, r3, r2
	mul	r2, r1, r2
	subs	r3, r3, r2
	cmp	r3, #0
	bne	.L23
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcc	.L23
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcs	.L23
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	USBD_CtlContinueSendData
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	DCD_EP_PrepareRx
	b	.L20
.L23:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #4]
	blx	r3
.L24:
	ldr	r0, [r7, #4]
	bl	USBD_CtlReceiveStatus
.L20:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #278]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L25
	ldr	r0, [r7, #4]
	bl	USBD_RunTestMode
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #278]
	b	.L25
.L19:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L25
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #20]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
.L25:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_DataInStage, .-USBD_DataInStage
	.section	.text.USBD_RunTestMode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_RunTestMode, %function
USBD_RunTestMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, .L29
	ldr	r2, [r2]
	str	r2, [r3, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L30:
	.align	2
.L29:
	.word	SET_TEST_MODE
	.size	USBD_RunTestMode, .-USBD_RunTestMode
	.section	.text.USBD_Reset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_Reset, %function
USBD_Reset:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	movs	r2, #64
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	DCD_EP_Open
	movs	r3, #0
	movs	r2, #64
	movs	r1, #128
	ldr	r0, [r7, #4]
	bl	DCD_EP_Open
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #274]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1512]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_Reset, .-USBD_Reset
	.section	.text.USBD_Resume,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_Resume, %function
USBD_Resume:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1512]
	ldr	r3, [r3, #16]
	blx	r3
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #275]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #274]
	ldr	r3, [r7, #4]
	movs	r2, #3
	strb	r2, [r3, #274]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_Resume, .-USBD_Resume
	.section	.text.USBD_Suspend,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_Suspend, %function
USBD_Suspend:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #274]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #275]
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #274]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1512]
	ldr	r3, [r3, #12]
	blx	r3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_Suspend, .-USBD_Suspend
	.section	.text.USBD_SOF,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_SOF, %function
USBD_SOF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L38
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #4]
	blx	r3
.L38:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_SOF, .-USBD_SOF
	.section	.text.USBD_SetCfg,"ax",%progbits
	.align	1
	.global	USBD_SetCfg
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_SetCfg, %function
USBD_SetCfg:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1512]
	ldr	r3, [r3, #8]
	blx	r3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_SetCfg, .-USBD_SetCfg
	.section	.text.USBD_ClrCfg,"ax",%progbits
	.align	1
	.global	USBD_ClrCfg
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_ClrCfg, %function
USBD_ClrCfg:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #4]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_ClrCfg, .-USBD_ClrCfg
	.section	.text.USBD_IsoINIncomplete,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_IsoINIncomplete, %function
USBD_IsoINIncomplete:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_IsoINIncomplete, .-USBD_IsoINIncomplete
	.section	.text.USBD_IsoOUTIncomplete,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_IsoOUTIncomplete, %function
USBD_IsoOUTIncomplete:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #36]
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_IsoOUTIncomplete, .-USBD_IsoOUTIncomplete
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
