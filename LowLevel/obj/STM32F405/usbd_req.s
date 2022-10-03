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
	.file	"usbd_req.c"
	.text
	.global	USBD_ep_status
	.section	.bss.USBD_ep_status,"aw",%nobits
	.align	2
	.type	USBD_ep_status, %object
	.size	USBD_ep_status, 4
USBD_ep_status:
	.space	4
	.global	USBD_default_cfg
	.section	.bss.USBD_default_cfg,"aw",%nobits
	.align	2
	.type	USBD_default_cfg, %object
	.size	USBD_default_cfg, 4
USBD_default_cfg:
	.space	4
	.global	USBD_cfg_status
	.section	.bss.USBD_cfg_status,"aw",%nobits
	.align	2
	.type	USBD_cfg_status, %object
	.size	USBD_cfg_status, 4
USBD_cfg_status:
	.space	4
	.global	USBD_StrDesc
	.section	.bss.USBD_StrDesc,"aw",%nobits
	.align	2
	.type	USBD_StrDesc, %object
	.size	USBD_StrDesc, 255
USBD_StrDesc:
	.space	255
	.section	.text.USBD_StdDevReq,"ax",%progbits
	.align	1
	.global	USBD_StdDevReq
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_StdDevReq, %function
USBD_StdDevReq:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #9
	bhi	.L2
	adr	r2, .L4
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L4:
	.word	.L10+1
	.word	.L9+1
	.word	.L2+1
	.word	.L8+1
	.word	.L2+1
	.word	.L7+1
	.word	.L6+1
	.word	.L2+1
	.word	.L5+1
	.word	.L3+1
	.p2align 1
.L6:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_GetDescriptor
	b	.L11
.L7:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_SetAddress
	b	.L11
.L3:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_SetConfig
	b	.L11
.L5:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_GetConfig
	b	.L11
.L10:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_GetStatus
	b	.L11
.L8:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_SetFeature
	b	.L11
.L9:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_ClrFeature
	b	.L11
.L2:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	nop
.L11:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_StdDevReq, .-USBD_StdDevReq
	.section	.text.USBD_StdItfReq,"ax",%progbits
	.align	1
	.global	USBD_StdItfReq
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_StdItfReq, %function
USBD_StdItfReq:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L14
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r3, r3
	cmp	r3, #1
	bhi	.L15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #0
	bne	.L19
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L19
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L19
.L15:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L19
.L14:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L17
.L19:
	nop
.L17:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_StdItfReq, .-USBD_StdItfReq
	.section	.text.USBD_StdEPReq,"ax",%progbits
	.align	1
	.global	USBD_StdEPReq
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_StdEPReq, %function
USBD_StdEPReq:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	strb	r3, [r7, #14]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #96
	cmp	r3, #32
	bne	.L21
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L22
.L21:
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L23
	cmp	r3, #3
	bgt	.L53
	cmp	r3, #0
	beq	.L25
	cmp	r3, #1
	beq	.L26
	b	.L53
.L23:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L27
	cmp	r3, #3
	beq	.L28
	b	.L50
.L27:
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L54
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #128
	beq	.L54
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	DCD_EP_Stall
	b	.L54
.L28:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L32
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #128
	beq	.L32
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	DCD_EP_Stall
.L32:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L31
.L50:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L31
.L54:
	nop
.L31:
	b	.L33
.L26:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L34
	cmp	r3, #3
	beq	.L35
	b	.L51
.L34:
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L55
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #128
	beq	.L55
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	DCD_EP_Stall
	b	.L55
.L35:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L56
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L40
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #128
	beq	.L40
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	DCD_EP_ClrStall
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L40:
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L56
.L51:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L38
.L55:
	nop
	b	.L33
.L56:
	nop
.L38:
	b	.L33
.L25:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L41
	cmp	r3, #3
	beq	.L42
	b	.L52
.L41:
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L57
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #128
	beq	.L57
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	DCD_EP_Stall
	b	.L57
.L42:
	ldrsb	r3, [r7, #14]
	cmp	r3, #0
	bge	.L46
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	and	r2, r3, #127
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	add	r3, r3, #286
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldr	r3, .L58
	movs	r2, #1
	str	r2, [r3]
	b	.L48
.L47:
	ldr	r3, .L58
	movs	r2, #0
	str	r2, [r3]
	b	.L48
.L46:
	ldrsb	r3, [r7, #14]
	cmp	r3, #0
	blt	.L48
	ldrb	r2, [r7, #14]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	addw	r3, r3, #886
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L49
	ldr	r3, .L58
	movs	r2, #1
	str	r2, [r3]
	b	.L48
.L49:
	ldr	r3, .L58
	movs	r2, #0
	str	r2, [r3]
.L48:
	movs	r2, #2
	ldr	r1, .L58
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L45
.L52:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L45
.L57:
	nop
.L45:
	b	.L33
.L53:
	nop
.L33:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L22:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L59:
	.align	2
.L58:
	.word	USBD_ep_status
	.size	USBD_StdEPReq, .-USBD_StdEPReq
	.section	.text.USBD_GetDescriptor,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_GetDescriptor, %function
USBD_GetDescriptor:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	subs	r3, r3, #1
	cmp	r3, #6
	bhi	.L61
	adr	r2, .L63
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L63:
	.word	.L67+1
	.word	.L66+1
	.word	.L65+1
	.word	.L61+1
	.word	.L61+1
	.word	.L64+1
	.word	.L62+1
	.p2align 1
.L67:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1516]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L68
.L66:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	movs	r2, #2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #1520]
	b	.L68
.L65:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r3, r3
	cmp	r3, #5
	bhi	.L69
	adr	r2, .L71
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L71:
	.word	.L76+1
	.word	.L75+1
	.word	.L74+1
	.word	.L73+1
	.word	.L72+1
	.word	.L70+1
	.p2align 1
.L76:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1516]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L75:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1516]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L74:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1516]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L73:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1516]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L72:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1516]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L70:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1516]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L69:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L60
.L77:
	b	.L68
.L64:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L60
.L62:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L60
.L61:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L60
.L68:
	ldrh	r3, [r7, #10]
	cmp	r3, #0
	beq	.L60
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #0
	beq	.L60
	ldr	r3, [r7]
	ldrh	r2, [r3, #6]
	ldrh	r3, [r7, #10]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]
	mov	r2, r3
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
.L60:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_GetDescriptor, .-USBD_GetDescriptor
	.section	.text.USBD_SetAddress,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_SetAddress, %function
USBD_SetAddress:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	bne	.L82
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #0
	bne	.L82
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r3, r3
	and	r3, r3, #127
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L83
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L86
.L83:
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #15]
	strb	r2, [r3, #276]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	DCD_EP_SetAddress
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L85
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #274]
	b	.L86
.L85:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #274]
	b	.L86
.L82:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	nop
.L86:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_SetAddress, .-USBD_SetAddress
	.section	.text.USBD_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_SetConfig, %function
USBD_SetConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r2, r3
	ldr	r3, .L100
	strb	r2, [r3]
	ldr	r3, .L100
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L88
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L99
.L88:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L90
	cmp	r3, #3
	beq	.L91
	b	.L98
.L90:
	ldr	r3, .L100
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L93
	ldr	r3, .L100
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #272]
	ldr	r3, [r7, #4]
	movs	r2, #3
	strb	r2, [r3, #274]
	ldr	r3, .L100
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_SetCfg
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L89
.L93:
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L89
.L91:
	ldr	r3, .L100
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L95
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #274]
	ldr	r3, .L100
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #272]
	ldr	r3, .L100
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_ClrCfg
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L89
.L95:
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #272]	@ zero_extendqisi2
	ldr	r3, .L100
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L97
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #272]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_ClrCfg
	ldr	r3, .L100
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #272]
	ldr	r3, .L100
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_SetCfg
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L89
.L97:
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L89
.L98:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	nop
.L89:
.L99:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L101:
	.align	2
.L100:
	.word	cfgidx.0
	.size	USBD_SetConfig, .-USBD_SetConfig
	.section	.text.USBD_GetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_GetConfig, %function
USBD_GetConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #1
	beq	.L103
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L109
.L103:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L105
	cmp	r3, #3
	beq	.L106
	b	.L108
.L105:
	movs	r2, #1
	ldr	r1, .L110
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L104
.L106:
	ldr	r3, [r7, #4]
	add	r3, r3, #272
	movs	r2, #1
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L104
.L108:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	nop
.L104:
.L109:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L111:
	.align	2
.L110:
	.word	USBD_default_cfg
	.size	USBD_GetConfig, .-USBD_GetConfig
	.section	.text.USBD_GetStatus,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_GetStatus, %function
USBD_GetStatus:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	subs	r3, r3, #2
	cmp	r3, #1
	bhi	.L113
	ldr	r3, .L116
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #280]
	cmp	r3, #0
	beq	.L114
	ldr	r3, .L116
	ldr	r3, [r3]
	orr	r3, r3, #2
	ldr	r2, .L116
	str	r3, [r2]
.L114:
	movs	r2, #2
	ldr	r1, .L116
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L115
.L113:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	nop
.L115:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L117:
	.align	2
.L116:
	.word	USBD_cfg_status
	.size	USBD_GetStatus, .-USBD_GetStatus
	.section	.text.USBD_SetFeature,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_SetFeature, %function
USBD_SetFeature:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #1
	bne	.L119
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #280]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L129
.L119:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #2
	bne	.L129
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L129
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	lsrs	r3, r3, #8
	uxth	r3, r3
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #4
	bhi	.L121
	adr	r2, .L123
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L123:
	.word	.L127+1
	.word	.L126+1
	.word	.L125+1
	.word	.L124+1
	.word	.L122+1
	.p2align 1
.L127:
	ldrb	r3, [r7, #8]
	movs	r2, #1
	bfi	r3, r2, #4, #3
	strb	r3, [r7, #8]
	b	.L128
.L126:
	ldrb	r3, [r7, #8]
	movs	r2, #2
	bfi	r3, r2, #4, #3
	strb	r3, [r7, #8]
	b	.L128
.L125:
	ldrb	r3, [r7, #8]
	movs	r2, #3
	bfi	r3, r2, #4, #3
	strb	r3, [r7, #8]
	b	.L128
.L124:
	ldrb	r3, [r7, #8]
	movs	r2, #4
	bfi	r3, r2, #4, #3
	strb	r3, [r7, #8]
	b	.L128
.L122:
	ldrb	r3, [r7, #8]
	movs	r2, #5
	bfi	r3, r2, #4, #3
	strb	r3, [r7, #8]
	b	.L128
.L121:
	ldrb	r3, [r7, #8]
	movs	r2, #1
	bfi	r3, r2, #4, #3
	strb	r3, [r7, #8]
	nop
.L128:
	ldr	r2, .L130
	ldr	r3, [r7, #8]
	str	r3, [r2]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #278]
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
.L129:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L131:
	.align	2
.L130:
	.word	SET_TEST_MODE
	.size	USBD_SetFeature, .-USBD_SetFeature
	.section	.text.USBD_ClrFeature,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_ClrFeature, %function
USBD_ClrFeature:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	subs	r3, r3, #2
	cmp	r3, #1
	bhi	.L133
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #1
	bne	.L136
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #280]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1508]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L136
.L133:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L135
.L136:
	nop
.L135:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_ClrFeature, .-USBD_ClrFeature
	.section	.text.USBD_ParseSetupRequest,"ax",%progbits
	.align	1
	.global	USBD_ParseSetupRequest
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_ParseSetupRequest, %function
USBD_ParseSetupRequest:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #1484]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #1485]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1486]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1487]	@ zero_extendqisi2
	uxth	r3, r3
	lsls	r3, r3, #8
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1488]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1489]	@ zero_extendqisi2
	uxth	r3, r3
	lsls	r3, r3, #8
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1490]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1491]	@ zero_extendqisi2
	uxth	r3, r3
	lsls	r3, r3, #8
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #320]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #273]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_ParseSetupRequest, .-USBD_ParseSetupRequest
	.section	.text.USBD_CtlError,"ax",%progbits
	.align	1
	.global	USBD_CtlError
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_CtlError, %function
USBD_CtlError:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r1, #128
	ldr	r0, [r7, #4]
	bl	DCD_EP_Stall
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	DCD_EP_Stall
	ldr	r0, [r7, #4]
	bl	USB_OTG_EP0_OutStart
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlError, .-USBD_CtlError
	.section	.text.USBD_GetString,"ax",%progbits
	.align	1
	.global	USBD_GetString
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_GetString, %function
USBD_GetString:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L143
	ldr	r0, [r7, #12]
	bl	USBD_GetLen
	mov	r3, r0
	adds	r3, r3, #1
	uxth	r3, r3
	lsls	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r1, r3, #1
	strb	r1, [r7, #23]
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r2, r3, #1
	strb	r2, [r7, #23]
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #3
	strb	r2, [r3]
	b	.L141
.L142:
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	adds	r1, r2, #1
	strb	r1, [r7, #23]
	mov	r1, r2
	ldr	r2, [r7, #8]
	add	r2, r2, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r2, r3, #1
	strb	r2, [r7, #23]
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L141:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L142
.L143:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_GetString, .-USBD_GetString
	.section	.text.USBD_GetLen,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_GetLen, %function
USBD_GetLen:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L145
.L146:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L145:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L146
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_GetLen, .-USBD_GetLen
	.section	.bss.cfgidx.0,"aw",%nobits
	.type	cfgidx.0, %object
	.size	cfgidx.0, 1
cfgidx.0:
	.space	1
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
