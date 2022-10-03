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
	.file	"usb_dcd.c"
	.text
	.section	.text.DCD_Init,"ax",%progbits
	.align	1
	.global	DCD_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_Init, %function
DCD_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USB_OTG_SelectCore
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #274]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #276]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #280
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r2, #1
	strb	r2, [r3, #1]
	ldr	r3, [r7, #12]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strb	r2, [r3, #3]
	ldr	r3, [r7, #8]
	movs	r2, #64
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r3, r2
	bcc	.L3
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L4
.L5:
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #880
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r2, #0
	strb	r2, [r3, #1]
	ldr	r3, [r7, #12]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strb	r2, [r3, #3]
	ldr	r3, [r7, #8]
	movs	r2, #64
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L4:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r3, r2
	bcc	.L5
	ldr	r0, [r7, #4]
	bl	USB_OTG_DisableGlobalInt
	ldr	r0, [r7, #4]
	bl	USB_OTG_CoreInit
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	USB_OTG_SetCurrentMode
	ldr	r0, [r7, #4]
	bl	USB_OTG_CoreInitDev
	ldr	r0, [r7, #4]
	bl	USB_OTG_EnableGlobalInt
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_Init, .-DCD_Init
	.section	.text.DCD_EP_Open,"ax",%progbits
	.align	1
	.global	DCD_EP_Open
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_EP_Open, %function
DCD_EP_Open:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #3]
	mov	r3, r1	@ movhi
	strh	r3, [r7]	@ movhi
	mov	r3, r2
	strb	r3, [r7, #2]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L7
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #280
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
	b	.L8
.L7:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #880
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L8:
	ldrb	r3, [r7, #3]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	ldrsb	r3, [r7, #3]
	uxtb	r3, r3
	lsrs	r3, r3, #7
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #1]
	ldrh	r2, [r7]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #2]
	strb	r2, [r3, #3]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L9
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #6]	@ movhi
.L9:
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L10
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #4]
.L10:
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	USB_OTG_EPActivate
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_EP_Open, .-DCD_EP_Open
	.section	.text.DCD_EP_Close,"ax",%progbits
	.align	1
	.global	DCD_EP_Close
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_EP_Close, %function
DCD_EP_Close:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L13
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #280
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
	b	.L14
.L13:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #880
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L14:
	ldrb	r3, [r7, #3]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	ldrsb	r3, [r7, #3]
	uxtb	r3, r3
	lsrs	r3, r3, #7
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #1]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	USB_OTG_EPDeactivate
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_EP_Close, .-DCD_EP_Close
	.section	.text.DCD_EP_PrepareRx,"ax",%progbits
	.align	1
	.global	DCD_EP_PrepareRx
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_EP_PrepareRx, %function
DCD_EP_PrepareRx:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1
	strb	r3, [r7, #11]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #880
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #12]
	ldrh	r2, [r7, #8]
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3, #1]
	ldrb	r3, [r7, #11]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L17
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #16]
.L17:
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L18
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	bl	USB_OTG_EP0StartXfer
	b	.L19
.L18:
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	bl	USB_OTG_EPStartXfer
.L19:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_EP_PrepareRx, .-DCD_EP_PrepareRx
	.section	.text.DCD_EP_Tx,"ax",%progbits
	.align	1
	.global	DCD_EP_Tx
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_EP_Tx, %function
DCD_EP_Tx:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #280
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movs	r2, #1
	strb	r2, [r3, #1]
	ldrb	r3, [r7, #11]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L22
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	bl	USB_OTG_EP0StartXfer
	b	.L23
.L22:
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	bl	USB_OTG_EPStartXfer
.L23:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_EP_Tx, .-DCD_EP_Tx
	.section	.text.DCD_EP_Stall,"ax",%progbits
	.align	1
	.global	DCD_EP_Stall
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_EP_Stall, %function
DCD_EP_Stall:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L26
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #280
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
	b	.L27
.L26:
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #880
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L27:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #2]
	ldrb	r3, [r7, #3]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	ldrsb	r3, [r7, #3]
	uxtb	r3, r3
	lsrs	r3, r3, #7
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #1]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	USB_OTG_EPSetStall
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_EP_Stall, .-DCD_EP_Stall
	.section	.text.DCD_EP_ClrStall,"ax",%progbits
	.align	1
	.global	DCD_EP_ClrStall
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_EP_ClrStall, %function
DCD_EP_ClrStall:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L30
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #280
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
	b	.L31
.L30:
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #880
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L31:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #2]
	ldrb	r3, [r7, #3]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	ldrsb	r3, [r7, #3]
	uxtb	r3, r3
	lsrs	r3, r3, #7
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #1]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	USB_OTG_EPClearStall
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_EP_ClrStall, .-DCD_EP_ClrStall
	.section	.text.DCD_EP_Flush,"ax",%progbits
	.align	1
	.global	DCD_EP_Flush
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_EP_Flush, %function
DCD_EP_Flush:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L34
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r3, r3, #127
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USB_OTG_FlushTxFifo
	b	.L35
.L34:
	ldr	r0, [r7, #4]
	bl	USB_OTG_FlushRxFifo
.L35:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_EP_Flush, .-DCD_EP_Flush
	.section	.text.DCD_EP_SetAddress,"ax",%progbits
	.align	1
	.global	DCD_EP_SetAddress
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_EP_SetAddress, %function
DCD_EP_SetAddress:
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
	ldrb	r3, [r7, #3]
	and	r3, r3, #127
	uxtb	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	bfi	r3, r2, #4, #7
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r1
	str	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DCD_EP_SetAddress, .-DCD_EP_SetAddress
	.section	.text.DCD_DevConnect,"ax",%progbits
	.align	1
	.global	DCD_DevConnect
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_DevConnect, %function
DCD_DevConnect:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	bfc	r3, #1, #1
	strb	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	movs	r0, #3
	bl	USB_OTG_BSP_mDelay
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_DevConnect, .-DCD_DevConnect
	.section	.text.DCD_DevDisconnect,"ax",%progbits
	.align	1
	.global	DCD_DevDisconnect
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_DevDisconnect, %function
DCD_DevDisconnect:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	orr	r3, r3, #2
	strb	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	movs	r0, #3
	bl	USB_OTG_BSP_mDelay
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_DevDisconnect, .-DCD_DevDisconnect
	.section	.text.DCD_GetEPStatus,"ax",%progbits
	.align	1
	.global	DCD_GetEPStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_GetEPStatus, %function
DCD_GetEPStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #8]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L41
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #280
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
	b	.L42
.L41:
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #880
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L42:
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	USB_OTG_GetEPStatus
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_GetEPStatus, .-DCD_GetEPStatus
	.section	.text.DCD_SetEPStatus,"ax",%progbits
	.align	1
	.global	DCD_SetEPStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_SetEPStatus, %function
DCD_SetEPStatus:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldrsb	r3, [r7, #11]
	cmp	r3, #0
	bge	.L45
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #280
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	b	.L46
.L45:
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #880
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
.L46:
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	bl	USB_OTG_SetEPStatus
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_SetEPStatus, .-DCD_SetEPStatus
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
