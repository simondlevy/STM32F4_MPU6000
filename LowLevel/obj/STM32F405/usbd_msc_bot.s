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
	.file	"usbd_msc_bot.c"
	.text
	.global	MSC_BOT_DataLen
	.section	.bss.MSC_BOT_DataLen,"aw",%nobits
	.align	1
	.type	MSC_BOT_DataLen, %object
	.size	MSC_BOT_DataLen, 2
MSC_BOT_DataLen:
	.space	2
	.global	MSC_BOT_State
	.section	.bss.MSC_BOT_State,"aw",%nobits
	.type	MSC_BOT_State, %object
	.size	MSC_BOT_State, 1
MSC_BOT_State:
	.space	1
	.global	MSC_BOT_Status
	.section	.bss.MSC_BOT_Status,"aw",%nobits
	.type	MSC_BOT_Status, %object
	.size	MSC_BOT_Status, 1
MSC_BOT_Status:
	.space	1
	.global	MSC_BOT_Data
	.section	.bss.MSC_BOT_Data,"aw",%nobits
	.align	2
	.type	MSC_BOT_Data, %object
	.size	MSC_BOT_Data, 4096
MSC_BOT_Data:
	.space	4096
	.global	MSC_BOT_cbw
	.section	.bss.MSC_BOT_cbw,"aw",%nobits
	.align	2
	.type	MSC_BOT_cbw, %object
	.size	MSC_BOT_cbw, 32
MSC_BOT_cbw:
	.space	32
	.global	MSC_BOT_csw
	.section	.bss.MSC_BOT_csw,"aw",%nobits
	.align	2
	.type	MSC_BOT_csw, %object
	.size	MSC_BOT_csw, 16
MSC_BOT_csw:
	.space	16
	.section	.text.MSC_BOT_Init,"ax",%progbits
	.align	1
	.global	MSC_BOT_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	MSC_BOT_Init, %function
MSC_BOT_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L2+4
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L2+8
	ldr	r3, [r3]
	ldr	r3, [r3]
	movs	r0, #0
	blx	r3
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	DCD_EP_Flush
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	DCD_EP_Flush
	movs	r3, #31
	ldr	r2, .L2+12
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	DCD_EP_PrepareRx
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	MSC_BOT_State
	.word	MSC_BOT_Status
	.word	USBD_STORAGE_fops
	.word	MSC_BOT_cbw
	.size	MSC_BOT_Init, .-MSC_BOT_Init
	.section	.text.MSC_BOT_Reset,"ax",%progbits
	.align	1
	.global	MSC_BOT_Reset
	.syntax unified
	.thumb
	.thumb_func
	.type	MSC_BOT_Reset, %function
MSC_BOT_Reset:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L5
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L5+4
	movs	r2, #1
	strb	r2, [r3]
	movs	r3, #31
	ldr	r2, .L5+8
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	DCD_EP_PrepareRx
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	MSC_BOT_State
	.word	MSC_BOT_Status
	.word	MSC_BOT_cbw
	.size	MSC_BOT_Reset, .-MSC_BOT_Reset
	.section	.text.MSC_BOT_DeInit,"ax",%progbits
	.align	1
	.global	MSC_BOT_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	MSC_BOT_DeInit, %function
MSC_BOT_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L8
	movs	r2, #0
	strb	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	MSC_BOT_State
	.size	MSC_BOT_DeInit, .-MSC_BOT_DeInit
	.section	.text.MSC_BOT_DataIn,"ax",%progbits
	.align	1
	.global	MSC_BOT_DataIn
	.syntax unified
	.thumb
	.thumb_func
	.type	MSC_BOT_DataIn, %function
MSC_BOT_DataIn:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, .L20
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L11
	cmp	r3, #2
	blt	.L17
	subs	r3, r3, #3
	cmp	r3, #1
	bhi	.L17
	b	.L16
.L11:
	ldr	r3, .L20+4
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	ldr	r2, .L20+8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	SCSI_ProcessCmd
	mov	r3, r0
	cmp	r3, #0
	bge	.L18
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
	b	.L18
.L16:
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
	b	.L15
.L17:
	nop
	b	.L19
.L18:
	nop
.L15:
.L19:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L21:
	.align	2
.L20:
	.word	MSC_BOT_State
	.word	MSC_BOT_cbw
	.word	MSC_BOT_cbw+15
	.size	MSC_BOT_DataIn, .-MSC_BOT_DataIn
	.section	.text.MSC_BOT_DataOut,"ax",%progbits
	.align	1
	.global	MSC_BOT_DataOut
	.syntax unified
	.thumb
	.thumb_func
	.type	MSC_BOT_DataOut, %function
MSC_BOT_DataOut:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, .L29
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L23
	cmp	r3, #1
	beq	.L24
	b	.L26
.L23:
	ldr	r0, [r7, #4]
	bl	MSC_BOT_CBW_Decode
	b	.L26
.L24:
	ldr	r3, .L29+4
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	ldr	r2, .L29+8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	SCSI_ProcessCmd
	mov	r3, r0
	cmp	r3, #0
	bge	.L28
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
.L28:
	nop
.L26:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L30:
	.align	2
.L29:
	.word	MSC_BOT_State
	.word	MSC_BOT_cbw
	.word	MSC_BOT_cbw+15
	.size	MSC_BOT_DataOut, .-MSC_BOT_DataOut
	.section	.text.MSC_BOT_CBW_Decode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	MSC_BOT_CBW_Decode, %function
MSC_BOT_CBW_Decode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L38
	ldr	r3, [r3, #4]
	ldr	r2, .L38+4
	str	r3, [r2, #4]
	ldr	r3, .L38
	ldr	r3, [r3, #8]
	ldr	r2, .L38+4
	str	r3, [r2, #8]
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_GetRxCount
	mov	r3, r0
	cmp	r3, #31
	bne	.L32
	ldr	r3, .L38
	ldr	r3, [r3]
	ldr	r2, .L38+8
	cmp	r3, r2
	bne	.L32
	ldr	r3, .L38
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L32
	ldr	r3, .L38
	ldrb	r3, [r3, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	ldr	r3, .L38
	ldrb	r3, [r3, #14]	@ zero_extendqisi2
	cmp	r3, #16
	bls	.L33
.L32:
	ldr	r3, .L38
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	movs	r2, #32
	movs	r1, #5
	mov	r0, r3
	bl	SCSI_SenseCode
	ldr	r3, .L38+12
	movs	r2, #2
	strb	r2, [r3]
	ldr	r0, [r7, #4]
	bl	MSC_BOT_Abort
	b	.L37
.L33:
	ldr	r3, .L38
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	ldr	r2, .L38+16
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	SCSI_ProcessCmd
	mov	r3, r0
	cmp	r3, #0
	bge	.L35
	ldr	r0, [r7, #4]
	bl	MSC_BOT_Abort
	b	.L37
.L35:
	ldr	r3, .L38+20
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L37
	ldr	r3, .L38+20
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L37
	ldr	r3, .L38+20
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L37
	ldr	r3, .L38+24
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L36
	ldr	r3, .L38+24
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r1, .L38+28
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendData
	b	.L37
.L36:
	ldr	r3, .L38+24
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L37
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
.L37:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L39:
	.align	2
.L38:
	.word	MSC_BOT_cbw
	.word	MSC_BOT_csw
	.word	1128420181
	.word	MSC_BOT_Status
	.word	MSC_BOT_cbw+15
	.word	MSC_BOT_State
	.word	MSC_BOT_DataLen
	.word	MSC_BOT_Data
	.size	MSC_BOT_CBW_Decode, .-MSC_BOT_CBW_Decode
	.section	.text.MSC_BOT_SendData,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	MSC_BOT_SendData, %function
MSC_BOT_SendData:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldrh	r2, [r7, #6]
	ldr	r3, .L41
	ldr	r3, [r3, #8]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, .L41+4
	ldr	r2, [r3, #8]
	ldrh	r3, [r7, #6]
	subs	r3, r2, r3
	ldr	r2, .L41+4
	str	r3, [r2, #8]
	ldr	r3, .L41+4
	movs	r2, #0
	strb	r2, [r3, #12]
	ldr	r3, .L41+8
	movs	r2, #4
	strb	r2, [r3]
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #129
	ldr	r0, [r7, #12]
	bl	DCD_EP_Tx
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L42:
	.align	2
.L41:
	.word	MSC_BOT_cbw
	.word	MSC_BOT_csw
	.word	MSC_BOT_State
	.size	MSC_BOT_SendData, .-MSC_BOT_SendData
	.section	.text.MSC_BOT_SendCSW,"ax",%progbits
	.align	1
	.global	MSC_BOT_SendCSW
	.syntax unified
	.thumb
	.thumb_func
	.type	MSC_BOT_SendCSW, %function
MSC_BOT_SendCSW:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, .L44
	ldr	r2, .L44+4
	str	r2, [r3]
	ldr	r2, .L44
	ldrb	r3, [r7, #3]
	strb	r3, [r2, #12]
	ldr	r3, .L44+8
	movs	r2, #0
	strb	r2, [r3]
	movs	r3, #13
	ldr	r2, .L44
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	DCD_EP_Tx
	movs	r3, #31
	ldr	r2, .L44+12
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	DCD_EP_PrepareRx
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	MSC_BOT_csw
	.word	1396855637
	.word	MSC_BOT_State
	.word	MSC_BOT_cbw
	.size	MSC_BOT_SendCSW, .-MSC_BOT_SendCSW
	.section	.text.MSC_BOT_Abort,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	MSC_BOT_Abort, %function
MSC_BOT_Abort:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L50
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L47
	ldr	r3, .L50
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L47
	ldr	r3, .L50+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L47
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	DCD_EP_Stall
.L47:
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	DCD_EP_Stall
	ldr	r3, .L50+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L49
	movs	r3, #31
	ldr	r2, .L50
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	DCD_EP_PrepareRx
.L49:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L51:
	.align	2
.L50:
	.word	MSC_BOT_cbw
	.word	MSC_BOT_Status
	.size	MSC_BOT_Abort, .-MSC_BOT_Abort
	.section	.text.MSC_BOT_CplClrFeature,"ax",%progbits
	.align	1
	.global	MSC_BOT_CplClrFeature
	.syntax unified
	.thumb
	.thumb_func
	.type	MSC_BOT_CplClrFeature, %function
MSC_BOT_CplClrFeature:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, .L56
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L53
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	DCD_EP_Stall
	ldr	r3, .L56
	movs	r2, #0
	strb	r2, [r3]
	b	.L55
.L53:
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L55
	ldr	r3, .L56
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L55
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
.L55:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L57:
	.align	2
.L56:
	.word	MSC_BOT_Status
	.size	MSC_BOT_CplClrFeature, .-MSC_BOT_CplClrFeature
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
