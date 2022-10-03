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
	.file	"usbd_hid_core.c"
	.text
	.global	USBD_HID_cb
	.section	.data.USBD_HID_cb,"aw"
	.align	2
	.type	USBD_HID_cb, %object
	.size	USBD_HID_cb, 44
USBD_HID_cb:
	.word	USBD_HID_Init
	.word	USBD_HID_DeInit
	.word	USBD_HID_Setup
	.word	0
	.word	0
	.word	USBD_HID_DataIn
	.word	0
	.word	0
	.word	0
	.word	0
	.word	USBD_HID_GetCfgDesc
	.section	.bss.USBD_HID_AltSet,"aw",%nobits
	.align	2
	.type	USBD_HID_AltSet, %object
	.size	USBD_HID_AltSet, 4
USBD_HID_AltSet:
	.space	4
	.section	.bss.USBD_HID_Protocol,"aw",%nobits
	.align	2
	.type	USBD_HID_Protocol, %object
	.size	USBD_HID_Protocol, 4
USBD_HID_Protocol:
	.space	4
	.section	.bss.USBD_HID_IdleState,"aw",%nobits
	.align	2
	.type	USBD_HID_IdleState, %object
	.size	USBD_HID_IdleState, 4
USBD_HID_IdleState:
	.space	4
	.section	.data.USBD_HID_CfgDesc,"aw"
	.align	2
	.type	USBD_HID_CfgDesc, %object
	.size	USBD_HID_CfgDesc, 34
USBD_HID_CfgDesc:
	.ascii	"\011\002\"\000\001\001\000\3402\011\004\000\000\001"
	.ascii	"\003\001\002\000\011!\021\001\000\001\"6\000\007\005"
	.ascii	"\203\003\011\000\012"
	.section	.data.HID_MOUSE_ReportDesc,"aw"
	.align	2
	.type	HID_MOUSE_ReportDesc, %object
	.size	HID_MOUSE_ReportDesc, 54
HID_MOUSE_ReportDesc:
	.ascii	"\005\001\011\005\241\001\241\000\005\001\0110\0111\011"
	.ascii	"2\0113\0115\0114\0116\0117\025\201%\177u\010\225\010"
	.ascii	"\201\002\005\011\031\001)\010\025\000%\001\225\010u"
	.ascii	"\001\201\002\300\300"
	.section	.text.USBD_HID_Init,"ax",%progbits
	.align	1
	.global	USBD_HID_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_Init, %function
USBD_HID_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #3
	movs	r2, #9
	movs	r1, #131
	ldr	r0, [r7, #4]
	bl	DCD_EP_Open
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_Init, .-USBD_HID_Init
	.section	.text.USBD_HID_DeInit,"ax",%progbits
	.align	1
	.global	USBD_HID_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_DeInit, %function
USBD_HID_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r1, #131
	ldr	r0, [r7, #4]
	bl	DCD_EP_Close
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_DeInit, .-USBD_HID_DeInit
	.section	.text.USBD_HID_Setup,"ax",%progbits
	.align	1
	.global	USBD_HID_Setup
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_Setup, %function
USBD_HID_Setup:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #96
	cmp	r3, #0
	beq	.L6
	cmp	r3, #32
	bne	.L7
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	subs	r3, r3, #2
	cmp	r3, #9
	bhi	.L8
	adr	r2, .L10
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L10:
	.word	.L13+1
	.word	.L12+1
	.word	.L8+1
	.word	.L8+1
	.word	.L8+1
	.word	.L8+1
	.word	.L8+1
	.word	.L8+1
	.word	.L11+1
	.word	.L9+1
	.p2align 1
.L9:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L24
	str	r2, [r3]
	b	.L14
.L12:
	movs	r2, #1
	ldr	r1, .L24
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L14
.L11:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L24+4
	str	r2, [r3]
	b	.L14
.L13:
	movs	r2, #1
	ldr	r1, .L24+4
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L14
.L8:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	movs	r3, #2
	b	.L15
.L14:
	b	.L16
.L6:
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #11
	beq	.L17
	cmp	r3, #11
	bgt	.L18
	cmp	r3, #6
	beq	.L19
	cmp	r3, #10
	beq	.L20
	b	.L18
.L19:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	cmp	r3, #34
	bne	.L21
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #54
	it	cs
	movcs	r3, #54
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, .L24+8
	str	r3, [r7, #8]
	b	.L22
.L21:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	cmp	r3, #33
	bne	.L22
	ldr	r3, .L24+12
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #9
	it	cs
	movcs	r3, #9
	strh	r3, [r7, #14]	@ movhi
.L22:
	ldrh	r3, [r7, #14]
	mov	r2, r3
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L23
.L20:
	movs	r2, #1
	ldr	r1, .L24+16
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L23
.L17:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L24+16
	str	r2, [r3]
	b	.L23
.L18:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L24+16
	str	r2, [r3]
	nop
.L23:
	b	.L16
.L7:
	movs	r2, #1
	ldr	r1, .L24+16
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	nop
.L16:
	movs	r3, #0
.L15:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	USBD_HID_Protocol
	.word	USBD_HID_IdleState
	.word	HID_MOUSE_ReportDesc
	.word	USBD_HID_CfgDesc+18
	.word	USBD_HID_AltSet
	.size	USBD_HID_Setup, .-USBD_HID_Setup
	.section	.text.USBD_HID_SendReport,"ax",%progbits
	.align	1
	.global	USBD_HID_SendReport
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_SendReport, %function
USBD_HID_SendReport:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L27
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #131
	ldr	r0, [r7, #12]
	bl	DCD_EP_Tx
.L27:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_SendReport, .-USBD_HID_SendReport
	.section	.text.USBD_HID_GetCfgDesc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_GetCfgDesc, %function
USBD_HID_GetCfgDesc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, [r7]
	movs	r2, #34
	strh	r2, [r3]	@ movhi
	ldr	r3, .L31
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L32:
	.align	2
.L31:
	.word	USBD_HID_CfgDesc
	.size	USBD_HID_GetCfgDesc, .-USBD_HID_GetCfgDesc
	.section	.text.USBD_HID_DataIn,"ax",%progbits
	.align	1
	.global	USBD_HID_DataIn
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_DataIn, %function
USBD_HID_DataIn:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r1, #131
	ldr	r0, [r7, #4]
	bl	DCD_EP_Flush
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_DataIn, .-USBD_HID_DataIn
	.section	.text.USBD_HID_GetPollingInterval,"ax",%progbits
	.align	1
	.global	USBD_HID_GetPollingInterval
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_GetPollingInterval, %function
USBD_HID_GetPollingInterval:
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
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L36
	movs	r3, #8
	str	r3, [r7, #12]
	b	.L37
.L36:
	movs	r3, #10
	str	r3, [r7, #12]
.L37:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_HID_GetPollingInterval, .-USBD_HID_GetPollingInterval
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
