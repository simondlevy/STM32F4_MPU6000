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
	.file	"usbd_msc_core.c"
	.text
	.global	USBD_MSC_CfgDesc
	.section	.data.USBD_MSC_CfgDesc,"aw"
	.align	2
	.type	USBD_MSC_CfgDesc, %object
	.size	USBD_MSC_CfgDesc, 32
USBD_MSC_CfgDesc:
	.ascii	"\011\002 \000\001\001\004\3002\011\004\000\000\002\010"
	.ascii	"\006P\005\007\005\201\002@\000\000\007\005\001\002@"
	.ascii	"\000\000"
	.global	USBD_MSC_cb
	.section	.data.USBD_MSC_cb,"aw"
	.align	2
	.type	USBD_MSC_cb, %object
	.size	USBD_MSC_cb, 44
USBD_MSC_cb:
	.word	USBD_MSC_Init
	.word	USBD_MSC_DeInit
	.word	USBD_MSC_Setup
	.word	0
	.word	0
	.word	USBD_MSC_DataIn
	.word	USBD_MSC_DataOut
	.word	0
	.word	0
	.word	0
	.word	USBD_MSC_GetCfgDesc
	.section	.bss.USBD_MSC_MaxLun,"aw",%nobits
	.type	USBD_MSC_MaxLun, %object
	.size	USBD_MSC_MaxLun, 1
USBD_MSC_MaxLun:
	.space	1
	.section	.bss.USBD_MSC_AltSet,"aw",%nobits
	.type	USBD_MSC_AltSet, %object
	.size	USBD_MSC_AltSet, 1
USBD_MSC_AltSet:
	.space	1
	.section	.text.USBD_MSC_Init,"ax",%progbits
	.align	1
	.global	USBD_MSC_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_MSC_Init, %function
USBD_MSC_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_MSC_DeInit
	movs	r3, #2
	movs	r2, #64
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	DCD_EP_Open
	movs	r3, #2
	movs	r2, #64
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	DCD_EP_Open
	ldr	r0, [r7, #4]
	bl	MSC_BOT_Init
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_MSC_Init, .-USBD_MSC_Init
	.section	.text.USBD_MSC_DeInit,"ax",%progbits
	.align	1
	.global	USBD_MSC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_MSC_DeInit, %function
USBD_MSC_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	DCD_EP_Close
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	DCD_EP_Close
	ldr	r0, [r7, #4]
	bl	MSC_BOT_DeInit
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_MSC_DeInit, .-USBD_MSC_DeInit
	.section	.text.USBD_MSC_Setup,"ax",%progbits
	.align	1
	.global	USBD_MSC_Setup
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_MSC_Setup, %function
USBD_MSC_Setup:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #96
	cmp	r3, #0
	beq	.L6
	cmp	r3, #32
	bne	.L25
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #254
	beq	.L8
	cmp	r3, #255
	beq	.L9
	b	.L24
.L8:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L11
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #1
	bne	.L11
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L11
	ldr	r3, .L27
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	blx	r3
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, .L27+4
	strb	r2, [r3]
	ldr	r3, .L27+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L12
	movs	r2, #1
	ldr	r1, .L27+4
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	nop
	b	.L16
.L12:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	movs	r3, #2
	b	.L14
.L11:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	movs	r3, #2
	b	.L14
.L9:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L17
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #0
	bne	.L17
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L17
	ldr	r0, [r7, #4]
	bl	MSC_BOT_Reset
	b	.L16
.L17:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	movs	r3, #2
	b	.L14
.L24:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	movs	r3, #2
	b	.L14
.L16:
	b	.L18
.L6:
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #11
	beq	.L19
	cmp	r3, #11
	bgt	.L26
	cmp	r3, #1
	beq	.L21
	cmp	r3, #10
	bne	.L26
	movs	r2, #1
	ldr	r1, .L27+8
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L20
.L19:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r2, r3
	ldr	r3, .L27+8
	strb	r2, [r3]
	b	.L20
.L21:
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	DCD_EP_Flush
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	DCD_EP_Close
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L22
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r1, r3
	movs	r3, #2
	movs	r2, #64
	ldr	r0, [r7, #4]
	bl	DCD_EP_Open
	b	.L23
.L22:
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r1, r3
	movs	r3, #2
	movs	r2, #64
	ldr	r0, [r7, #4]
	bl	DCD_EP_Open
.L23:
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	MSC_BOT_CplClrFeature
	nop
.L20:
	b	.L26
.L25:
	nop
	b	.L18
.L26:
	nop
.L18:
	movs	r3, #0
.L14:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	USBD_STORAGE_fops
	.word	USBD_MSC_MaxLun
	.word	USBD_MSC_AltSet
	.size	USBD_MSC_Setup, .-USBD_MSC_Setup
	.section	.text.USBD_MSC_DataIn,"ax",%progbits
	.align	1
	.global	USBD_MSC_DataIn
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_MSC_DataIn, %function
USBD_MSC_DataIn:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	MSC_BOT_DataIn
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_MSC_DataIn, .-USBD_MSC_DataIn
	.section	.text.USBD_MSC_DataOut,"ax",%progbits
	.align	1
	.global	USBD_MSC_DataOut
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_MSC_DataOut, %function
USBD_MSC_DataOut:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	MSC_BOT_DataOut
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_MSC_DataOut, .-USBD_MSC_DataOut
	.section	.text.USBD_MSC_GetCfgDesc,"ax",%progbits
	.align	1
	.global	USBD_MSC_GetCfgDesc
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_MSC_GetCfgDesc, %function
USBD_MSC_GetCfgDesc:
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
	movs	r2, #32
	strh	r2, [r3]	@ movhi
	ldr	r3, .L35
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L36:
	.align	2
.L35:
	.word	USBD_MSC_CfgDesc
	.size	USBD_MSC_GetCfgDesc, .-USBD_MSC_GetCfgDesc
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
