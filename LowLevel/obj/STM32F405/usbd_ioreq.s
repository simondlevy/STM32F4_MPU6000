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
	.file	"usbd_ioreq.c"
	.text
	.section	.text.USBD_CtlSendData,"ax",%progbits
	.align	1
	.global	USBD_CtlSendData
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_CtlSendData, %function
USBD_CtlSendData:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	ldrh	r2, [r7, #6]
	ldr	r3, [r7, #12]
	str	r2, [r3, #316]
	ldrh	r2, [r7, #6]
	ldr	r3, [r7, #12]
	str	r2, [r3, #312]
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #273]
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	DCD_EP_Tx
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlSendData, .-USBD_CtlSendData
	.section	.text.USBD_CtlContinueSendData,"ax",%progbits
	.align	1
	.global	USBD_CtlContinueSendData
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_CtlContinueSendData, %function
USBD_CtlContinueSendData:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	DCD_EP_Tx
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlContinueSendData, .-USBD_CtlContinueSendData
	.section	.text.USBD_CtlPrepareRx,"ax",%progbits
	.align	1
	.global	USBD_CtlPrepareRx
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_CtlPrepareRx, %function
USBD_CtlPrepareRx:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	ldrh	r2, [r7, #6]
	ldr	r3, [r7, #12]
	str	r2, [r3, #916]
	ldrh	r2, [r7, #6]
	ldr	r3, [r7, #12]
	str	r2, [r3, #912]
	ldr	r3, [r7, #12]
	movs	r2, #3
	strb	r2, [r3, #273]
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	DCD_EP_PrepareRx
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlPrepareRx, .-USBD_CtlPrepareRx
	.section	.text.USBD_CtlContinueRx,"ax",%progbits
	.align	1
	.global	USBD_CtlContinueRx
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_CtlContinueRx, %function
USBD_CtlContinueRx:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	DCD_EP_PrepareRx
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlContinueRx, .-USBD_CtlContinueRx
	.section	.text.USBD_CtlSendStatus,"ax",%progbits
	.align	1
	.global	USBD_CtlSendStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_CtlSendStatus, %function
USBD_CtlSendStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #273]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	DCD_EP_Tx
	ldr	r0, [r7, #4]
	bl	USB_OTG_EP0_OutStart
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlSendStatus, .-USBD_CtlSendStatus
	.section	.text.USBD_CtlReceiveStatus,"ax",%progbits
	.align	1
	.global	USBD_CtlReceiveStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_CtlReceiveStatus, %function
USBD_CtlReceiveStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	movs	r2, #5
	strb	r2, [r3, #273]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	DCD_EP_PrepareRx
	ldr	r0, [r7, #4]
	bl	USB_OTG_EP0_OutStart
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlReceiveStatus, .-USBD_CtlReceiveStatus
	.section	.text.USBD_GetRxCount,"ax",%progbits
	.align	1
	.global	USBD_GetRxCount
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_GetRxCount, %function
USBD_GetRxCount:
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
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	add	r3, r3, #908
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_GetRxCount, .-USBD_GetRxCount
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
