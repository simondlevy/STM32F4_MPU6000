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
	.file	"usb_dcd_int.c"
	.text
	.section	.text.USBD_OTG_ISR_Handler,"ax",%progbits
	.align	1
	.global	USBD_OTG_ISR_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_OTG_ISR_Handler, %function
USBD_OTG_ISR_Handler:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	bl	USB_OTG_IsDeviceMode
	mov	r3, r0
	cmp	r3, #0
	beq	.L2
	ldr	r0, [r7, #4]
	bl	USB_OTG_ReadCoreItr
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L3
	movs	r3, #0
	b	.L15
.L3:
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	and	r3, r3, #8
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L5
	ldr	r0, [r7, #4]
	bl	DCD_HandleOutEP_ISR
	mov	r2, r0
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L5:
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	and	r3, r3, #4
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L6
	ldr	r0, [r7, #4]
	bl	DCD_HandleInEP_ISR
	mov	r2, r0
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L6:
	ldrb	r3, [r7, #16]	@ zero_extendqisi2
	and	r3, r3, #2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L7
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	orr	r3, r3, #2
	strb	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #20]
.L7:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	bic	r3, r3, #127
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L8
	ldr	r0, [r7, #4]
	bl	DCD_HandleResume_ISR
	mov	r2, r0
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L8:
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	and	r3, r3, #8
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L9
	ldr	r0, [r7, #4]
	bl	DCD_HandleUSBSuspend_ISR
	mov	r2, r0
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L9:
	ldrb	r3, [r7, #16]	@ zero_extendqisi2
	and	r3, r3, #8
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L10
	ldr	r0, [r7, #4]
	bl	DCD_HandleSof_ISR
	mov	r2, r0
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L10:
	ldrb	r3, [r7, #16]	@ zero_extendqisi2
	and	r3, r3, #16
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L11
	ldr	r0, [r7, #4]
	bl	DCD_HandleRxStatusQueueLevel_ISR
	mov	r2, r0
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L11:
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	and	r3, r3, #16
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L12
	ldr	r0, [r7, #4]
	bl	DCD_HandleUsbReset_ISR
	mov	r2, r0
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L12:
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	and	r3, r3, #32
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L13
	ldr	r0, [r7, #4]
	bl	DCD_HandleEnumDone_ISR
	mov	r2, r0
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L13:
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	and	r3, r3, #16
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L14
	ldr	r0, [r7, #4]
	bl	DCD_IsoINIncomplete_ISR
	mov	r2, r0
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L14:
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	and	r3, r3, #32
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L2
	ldr	r0, [r7, #4]
	bl	DCD_IsoOUTIncomplete_ISR
	mov	r2, r0
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L2:
	ldr	r3, [r7, #20]
.L15:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_OTG_ISR_Handler, .-USBD_OTG_ISR_Handler
	.section	.text.DCD_HandleResume_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_HandleResume_ISR, %function
DCD_HandleResume_ISR:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L17
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	bfc	r3, #1, #1
	strb	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	bfc	r3, #0, #1
	strb	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L17:
	movs	r3, #0
	str	r3, [r7, #16]
	ldrb	r3, [r7, #16]
	orr	r3, r3, #1
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #16]
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ands	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, .L19
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #0
	str	r3, [r7, #20]
	ldrb	r3, [r7, #23]
	orr	r3, r3, #128
	strb	r3, [r7, #23]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #20]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L20:
	.align	2
.L19:
	.word	USBD_DCD_INT_fops
	.size	DCD_HandleResume_ISR, .-DCD_HandleResume_ISR
	.section	.text.DCD_HandleUSBSuspend_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_HandleUSBSuspend_ISR, %function
DCD_HandleUSBSuspend_ISR:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #11]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #274]	@ zero_extendqisi2
	strb	r3, [r7, #11]
	ldr	r3, .L24
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	ldrb	r3, [r7, #21]
	orr	r3, r3, #8
	strb	r3, [r7, #21]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L22
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L22
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #277]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L22
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
	cmp	r3, #3
	bne	.L22
	movs	r3, #0
	str	r3, [r7, #16]
	ldrb	r3, [r7, #16]
	orr	r3, r3, #1
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	ldr	r1, [r3]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	orrs	r2, r2, r1
	str	r2, [r3]
	ldrb	r3, [r7, #16]
	orr	r3, r3, #2
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	ldr	r1, [r3]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #268]
	orrs	r2, r2, r1
	str	r2, [r3]
	ldr	r3, .L24+4
	ldr	r3, [r3, #16]
	ldr	r2, .L24+4
	orr	r3, r3, #6
	str	r3, [r2, #16]
.L22:
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	USBD_DCD_INT_fops
	.word	-536810240
	.size	DCD_HandleUSBSuspend_ISR, .-DCD_HandleUSBSuspend_ISR
	.section	.text.DCD_HandleInEP_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_HandleInEP_ISR, %function
DCD_HandleInEP_ISR:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r0, [r7, #4]
	bl	USB_OTG_ReadDevAllInEPItr
	str	r0, [r7, #20]
	b	.L27
.L34:
	ldr	r3, [r7, #20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L28
	ldr	r3, [r7, #16]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	DCD_ReadDevInEP
	mov	r3, r0
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L29
	movs	r2, #1
	ldr	r3, [r7, #16]
	lsl	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3, #52]
	ldr	r3, [r7, #12]
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ands	r2, r2, r1
	str	r2, [r3, #52]
	movs	r3, #0
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	orr	r3, r3, #1
	strb	r3, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, .L36
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #16]
	uxtb	r2, r2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L29
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L29
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #273]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L29
	ldr	r0, [r7, #4]
	bl	USB_OTG_EP0_OutStart
.L29:
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	and	r3, r3, #8
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L30
	movs	r3, #0
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	orr	r3, r3, #8
	strb	r3, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
.L30:
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	and	r3, r3, #16
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L31
	movs	r3, #0
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	orr	r3, r3, #16
	strb	r3, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
.L31:
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	and	r3, r3, #64
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L32
	movs	r3, #0
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	orr	r3, r3, #64
	strb	r3, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
.L32:
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	and	r3, r3, #2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L33
	movs	r3, #0
	str	r3, [r7, #8]
	ldrb	r3, [r7, #8]
	orr	r3, r3, #2
	strb	r3, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
.L33:
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	bic	r3, r3, #127
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L28
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #4]
	bl	DCD_WriteEmptyTxFifo
.L28:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #1
	str	r3, [r7, #20]
.L27:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L34
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L37:
	.align	2
.L36:
	.word	USBD_DCD_INT_fops
	.size	DCD_HandleInEP_ISR, .-DCD_HandleInEP_ISR
	.section	.text.DCD_HandleOutEP_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_HandleOutEP_ISR, %function
DCD_HandleOutEP_ISR:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	bl	USB_OTG_ReadDevAllOutEp_itr
	str	r0, [r7, #20]
	b	.L39
.L44:
	ldr	r3, [r7, #20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r7, #16]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USB_OTG_ReadDevOutEP_itr
	mov	r3, r0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L41
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	orr	r3, r3, #1
	strb	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L42
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	add	r3, r3, #892
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ubfx	r2, r2, #0, #19
	subs	r1, r3, r2
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r3, r3, #908
	str	r1, [r3]
.L42:
	ldr	r3, .L46
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #16]
	uxtb	r2, r2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L41
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L41
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #273]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L41
	ldr	r0, [r7, #4]
	bl	USB_OTG_EP0_OutStart
.L41:
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	and	r3, r3, #2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L43
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	orr	r3, r3, #2
	strb	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
.L43:
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	and	r3, r3, #8
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L40
	ldr	r3, .L46
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	orr	r3, r3, #8
	strb	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
.L40:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #1
	str	r3, [r7, #20]
.L39:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L44
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	USBD_DCD_INT_fops
	.size	DCD_HandleOutEP_ISR, .-DCD_HandleOutEP_ISR
	.section	.text.DCD_HandleSof_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_HandleSof_ISR, %function
DCD_HandleSof_ISR:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L50
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	orr	r3, r3, #8
	strb	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #20]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L51:
	.align	2
.L50:
	.word	USBD_DCD_INT_fops
	.size	DCD_HandleSof_ISR, .-DCD_HandleSof_ISR
	.section	.text.DCD_HandleRxStatusQueueLevel_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_HandleRxStatusQueueLevel_ISR, %function
DCD_HandleRxStatusQueueLevel_ISR:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	ldrb	r3, [r7, #16]
	orr	r3, r3, #16
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #16]
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ands	r2, r2, r1
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #12]
	ubfx	r3, r3, #0, #4
	uxtb	r3, r3
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #880
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldrb	r3, [r7, #14]
	ubfx	r3, r3, #1, #4
	uxtb	r3, r3
	subs	r3, r3, #1
	cmp	r3, #5
	bhi	.L63
	adr	r2, .L55
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L55:
	.word	.L63+1
	.word	.L58+1
	.word	.L63+1
	.word	.L63+1
	.word	.L63+1
	.word	.L54+1
	.p2align 1
.L58:
	ldrh	r2, [r7, #12]
	movw	r3, #32752
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7, #20]
	ldr	r1, [r3, #12]
	ldrh	r3, [r7, #12]	@ movhi
	ubfx	r3, r3, #4, #11
	uxth	r3, r3
	mov	r2, r3
	ldr	r0, [r7, #4]
	bl	USB_OTG_ReadPacket
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldrh	r2, [r7, #12]	@ movhi
	ubfx	r2, r2, #4, #11
	uxth	r2, r2
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	ldrh	r2, [r7, #12]	@ movhi
	ubfx	r2, r2, #4, #11
	uxth	r2, r2
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
	b	.L64
.L54:
	ldr	r3, [r7, #4]
	addw	r3, r3, #1484
	movs	r2, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USB_OTG_ReadPacket
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	ldrh	r2, [r7, #12]	@ movhi
	ubfx	r2, r2, #4, #11
	uxth	r2, r2
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
	b	.L60
.L63:
	nop
	b	.L60
.L64:
	nop
.L60:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r1
	str	r2, [r3, #24]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_HandleRxStatusQueueLevel_ISR, .-DCD_HandleRxStatusQueueLevel_ISR
	.section	.text.DCD_WriteEmptyTxFifo,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_WriteEmptyTxFifo, %function
DCD_WriteEmptyTxFifo:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, #280
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bls	.L66
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
.L66:
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	b	.L67
.L70:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bls	.L68
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
.L68:
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	uxtb	r2, r3
	ldr	r3, [r7, #28]
	uxth	r3, r3
	ldr	r0, [r7, #4]
	bl	USB_OTG_WritePacket
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	cmp	r2, r3
	bne	.L67
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movs	r3, #1
	lsls	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3, #52]
	ldr	r3, [r7, #16]
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ands	r2, r2, r1
	str	r2, [r3, #52]
.L67:
	ldrh	r3, [r7, #12]
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r3, r2
	bcs	.L69
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bcs	.L69
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L70
.L69:
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DCD_WriteEmptyTxFifo, .-DCD_WriteEmptyTxFifo
	.section	.text.DCD_HandleUsbReset_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_HandleUsbReset_ISR, %function
DCD_HandleUsbReset_ISR:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #16]
	orr	r3, r3, #1
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #16]
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ands	r2, r2, r1
	str	r2, [r3, #4]
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	USB_OTG_FlushTxFifo
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L73
.L74:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	movs	r2, #255
	str	r2, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	adds	r3, r3, #20
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	movs	r2, #255
	str	r2, [r3, #8]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L73:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #36]
	cmp	r3, r2
	bcc	.L74
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r2, #-1
	str	r2, [r3, #24]
	movs	r3, #1
	strh	r3, [r7, #32]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #32]
	str	r2, [r3, #28]
	ldrb	r3, [r7, #28]
	orr	r3, r3, #8
	strb	r3, [r7, #28]
	ldrb	r3, [r7, #28]
	orr	r3, r3, #1
	strb	r3, [r7, #28]
	ldrb	r3, [r7, #28]
	orr	r3, r3, #2
	strb	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #28]
	str	r2, [r3, #20]
	ldrb	r3, [r7, #24]
	orr	r3, r3, #1
	strb	r3, [r7, #24]
	ldrb	r3, [r7, #24]
	orr	r3, r3, #8
	strb	r3, [r7, #24]
	ldrb	r3, [r7, #24]
	orr	r3, r3, #2
	strb	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #24]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldrh	r3, [r7, #20]	@ movhi
	bfc	r3, #4, #7
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	USB_OTG_EP0_OutStart
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #13]
	orr	r3, r3, #16
	strb	r3, [r7, #13]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, .L76
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L77:
	.align	2
.L76:
	.word	USBD_DCD_INT_fops
	.size	DCD_HandleUsbReset_ISR, .-DCD_HandleUsbReset_ISR
	.section	.text.DCD_HandleEnumDone_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_HandleEnumDone_ISR, %function
DCD_HandleEnumDone_ISR:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L91
	str	r3, [r7, #36]
	ldr	r0, [r7, #4]
	bl	USB_OTG_EP0Activate
	add	r3, r7, #12
	mov	r0, r3
	bl	RCC_GetClocksFreq
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #28]
	ldrb	r3, [r7, #29]
	bfc	r3, #2, #4
	strb	r3, [r7, #29]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	USB_OTG_GetDeviceSpeed
	mov	r3, r0
	cmp	r3, #3
	bne	.L79
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #2]
	ldr	r3, [r7, #4]
	mov	r2, #512
	strh	r2, [r3, #4]	@ movhi
	ldrb	r3, [r7, #29]
	movs	r2, #9
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
	b	.L80
.L79:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #2]
	ldr	r3, [r7, #4]
	movs	r2, #64
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #36]
	ldr	r2, .L91+4
	cmp	r3, r2
	bcc	.L81
	ldr	r3, [r7, #36]
	ldr	r2, .L91+8
	cmp	r3, r2
	bcs	.L81
	ldrb	r3, [r7, #29]
	movs	r2, #14
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
	b	.L80
.L81:
	ldr	r3, [r7, #36]
	ldr	r2, .L91+8
	cmp	r3, r2
	bcc	.L82
	ldr	r3, [r7, #36]
	ldr	r2, .L91+12
	cmp	r3, r2
	bhi	.L82
	ldrb	r3, [r7, #29]
	movs	r2, #13
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
	b	.L80
.L82:
	ldr	r3, [r7, #36]
	ldr	r2, .L91+12
	cmp	r3, r2
	bls	.L83
	ldr	r3, [r7, #36]
	ldr	r2, .L91+16
	cmp	r3, r2
	bcs	.L83
	ldrb	r3, [r7, #29]
	movs	r2, #12
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
	b	.L80
.L83:
	ldr	r3, [r7, #36]
	ldr	r2, .L91+16
	cmp	r3, r2
	bcc	.L84
	ldr	r3, [r7, #36]
	ldr	r2, .L91+20
	cmp	r3, r2
	bhi	.L84
	ldrb	r3, [r7, #29]
	movs	r2, #11
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
	b	.L80
.L84:
	ldr	r3, [r7, #36]
	ldr	r2, .L91+20
	cmp	r3, r2
	bls	.L85
	ldr	r3, [r7, #36]
	ldr	r2, .L91+24
	cmp	r3, r2
	bhi	.L85
	ldrb	r3, [r7, #29]
	movs	r2, #10
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
	b	.L80
.L85:
	ldr	r3, [r7, #36]
	ldr	r2, .L91+24
	cmp	r3, r2
	bls	.L86
	ldr	r3, [r7, #36]
	ldr	r2, .L91+28
	cmp	r3, r2
	bcs	.L86
	ldrb	r3, [r7, #29]
	movs	r2, #9
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
	b	.L80
.L86:
	ldr	r3, [r7, #36]
	ldr	r2, .L91+28
	cmp	r3, r2
	bcc	.L87
	ldr	r3, [r7, #36]
	ldr	r2, .L91+32
	cmp	r3, r2
	bhi	.L87
	ldrb	r3, [r7, #29]
	movs	r2, #8
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
	b	.L80
.L87:
	ldr	r3, [r7, #36]
	ldr	r2, .L91+32
	cmp	r3, r2
	bls	.L88
	ldr	r3, [r7, #36]
	ldr	r2, .L91+36
	cmp	r3, r2
	bhi	.L88
	ldrb	r3, [r7, #29]
	movs	r2, #7
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
	b	.L80
.L88:
	ldr	r3, [r7, #36]
	ldr	r2, .L91+36
	cmp	r3, r2
	bls	.L89
	ldr	r3, [r7, #36]
	ldr	r2, .L91+40
	cmp	r3, r2
	bhi	.L89
	ldrb	r3, [r7, #29]
	movs	r2, #6
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
	b	.L80
.L89:
	ldrb	r3, [r7, #29]
	movs	r2, #5
	bfi	r3, r2, #2, #4
	strb	r3, [r7, #29]
.L80:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #12]
	movs	r3, #0
	str	r3, [r7, #32]
	ldrb	r3, [r7, #33]
	orr	r3, r3, #32
	strb	r3, [r7, #33]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #20]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L92:
	.align	2
.L91:
	.word	168000000
	.word	15000000
	.word	16000000
	.word	17099999
	.word	18400000
	.word	19999999
	.word	21799999
	.word	24000000
	.word	26599999
	.word	29999999
	.word	34299999
	.size	DCD_HandleEnumDone_ISR, .-DCD_HandleEnumDone_ISR
	.section	.text.DCD_IsoINIncomplete_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_IsoINIncomplete_ISR, %function
DCD_IsoINIncomplete_ISR:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L95
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #4]
	blx	r3
	ldrb	r3, [r7, #14]
	orr	r3, r3, #16
	strb	r3, [r7, #14]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #20]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L96:
	.align	2
.L95:
	.word	USBD_DCD_INT_fops
	.size	DCD_IsoINIncomplete_ISR, .-DCD_IsoINIncomplete_ISR
	.section	.text.DCD_IsoOUTIncomplete_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_IsoOUTIncomplete_ISR, %function
DCD_IsoOUTIncomplete_ISR:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L99
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #4]
	blx	r3
	ldrb	r3, [r7, #14]
	orr	r3, r3, #32
	strb	r3, [r7, #14]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #20]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L100:
	.align	2
.L99:
	.word	USBD_DCD_INT_fops
	.size	DCD_IsoOUTIncomplete_ISR, .-DCD_IsoOUTIncomplete_ISR
	.section	.text.DCD_ReadDevInEP,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	DCD_ReadDevInEP, %function
DCD_ReadDevInEP:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #52]
	str	r3, [r7, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r2, [r7, #16]
	lsr	r3, r2, r3
	lsls	r3, r3, #7
	uxtb	r3, r3
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #20]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DCD_ReadDevInEP, .-DCD_ReadDevInEP
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
