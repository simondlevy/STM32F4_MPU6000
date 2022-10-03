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
	.file	"serial_usb_vcp.c"
	.text
	.section	.rodata.IO_TAG_RX,"a"
	.align	2
	.type	IO_TAG_RX, %object
	.size	IO_TAG_RX, 12
IO_TAG_RX:
	.ascii	"\032\000+\021B7\000\000\000\000\000\000"
	.section	.rodata.IO_TAG_TX,"a"
	.align	2
	.type	IO_TAG_TX, %object
	.size	IO_TAG_TX, 12
IO_TAG_TX:
	.ascii	"\031\000*\020\0006\000\000\000\000\000\000"
	.section	.bss.vcpPort,"aw",%nobits
	.align	2
	.type	vcpPort, %object
	.size	vcpPort, 84
vcpPort:
	.space	84
	.section	.text.usbVcpSetBaudRate,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpSetBaudRate, %function
usbVcpSetBaudRate:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	usbVcpSetBaudRate, .-usbVcpSetBaudRate
	.section	.text.usbVcpSetMode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpSetMode, %function
usbVcpSetMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	usbVcpSetMode, .-usbVcpSetMode
	.section	.text.usbVcpSetCtrlLineStateCb,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpSetCtrlLineStateCb, %function
usbVcpSetCtrlLineStateCb:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #8]
	bl	CDC_SetCtrlLineStateCb
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbVcpSetCtrlLineStateCb, .-usbVcpSetCtrlLineStateCb
	.section	.text.usbVcpSetBaudRateCb,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpSetBaudRateCb, %function
usbVcpSetBaudRateCb:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #8]
	bl	CDC_SetBaudRateCb
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbVcpSetBaudRateCb, .-usbVcpSetBaudRateCb
	.section	.text.isUsbVcpTransmitBufferEmpty,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	isUsbVcpTransmitBufferEmpty, %function
isUsbVcpTransmitBufferEmpty:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	isUsbVcpTransmitBufferEmpty, .-isUsbVcpTransmitBufferEmpty
	.section	.text.usbVcpAvailable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpAvailable, %function
usbVcpAvailable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	CDC_Receive_BytesAvailable
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbVcpAvailable, .-usbVcpAvailable
	.section	.text.usbVcpRead,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpRead, %function
usbVcpRead:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
.L12:
	add	r3, r7, #12
	movs	r1, #1
	mov	r0, r3
	bl	CDC_Receive_DATA
	mov	r3, r0
	cmp	r3, #0
	beq	.L12
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbVcpRead, .-usbVcpRead
	.section	.text.usbVcpWriteBuf,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpWriteBuf, %function
usbVcpWriteBuf:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	bl	usbIsConnected
	mov	r3, r0
	cmp	r3, #0
	beq	.L20
	bl	usbIsConfigured
	mov	r3, r0
	cmp	r3, #0
	beq	.L20
	bl	millis
	str	r0, [r7, #24]
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	b	.L18
.L19:
	ldr	r3, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #28]
	bl	CDC_Send_DATA
	str	r0, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #28]
	bl	millis
	mov	r2, r0
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	cmp	r3, #50
	bhi	.L21
.L18:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L19
	b	.L14
.L20:
	nop
	b	.L14
.L21:
	nop
.L14:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbVcpWriteBuf, .-usbVcpWriteBuf
	.section	.text.usbVcpFlush,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpFlush, %function
usbVcpFlush:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L23
	movs	r3, #1
	b	.L24
.L23:
	bl	usbIsConnected
	mov	r3, r0
	cmp	r3, #0
	beq	.L25
	bl	usbIsConfigured
	mov	r3, r0
	cmp	r3, #0
	bne	.L26
.L25:
	movs	r3, #0
	b	.L24
.L26:
	bl	millis
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	str	r3, [r7, #16]
	b	.L27
.L29:
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #16]
	bl	CDC_Send_DATA
	str	r0, [r7, #8]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #16]
	bl	millis
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	cmp	r3, #50
	bhi	.L30
.L27:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L29
	b	.L28
.L30:
	nop
.L28:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
.L24:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbVcpFlush, .-usbVcpFlush
	.section	.text.usbVcpWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpWrite, %function
usbVcpWrite:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	adds	r2, r3, #1
	uxtb	r1, r2
	ldr	r2, [r7, #8]
	strb	r1, [r2, #80]
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #60]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #81]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L32
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #19
	bls	.L34
.L32:
	ldr	r0, [r7, #8]
	bl	usbVcpFlush
.L34:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbVcpWrite, .-usbVcpWrite
	.section	.text.usbVcpBeginWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpBeginWrite, %function
usbVcpBeginWrite:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r2, #1
	strb	r2, [r3, #81]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	usbVcpBeginWrite, .-usbVcpBeginWrite
	.section	.text.usbTxBytesFree,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbTxBytesFree, %function
usbTxBytesFree:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	CDC_Send_FreeBytes
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbTxBytesFree, .-usbTxBytesFree
	.section	.text.usbVcpEndWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpEndWrite, %function
usbVcpEndWrite:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r2, #0
	strb	r2, [r3, #81]
	ldr	r0, [r7, #8]
	bl	usbVcpFlush
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbVcpEndWrite, .-usbVcpEndWrite
	.section	.rodata.usbVTable,"a"
	.align	2
	.type	usbVTable, %object
	.size	usbVTable, 48
usbVTable:
	.word	usbVcpWrite
	.word	usbVcpAvailable
	.word	usbTxBytesFree
	.word	usbVcpRead
	.word	usbVcpSetBaudRate
	.word	isUsbVcpTransmitBufferEmpty
	.word	usbVcpSetMode
	.word	usbVcpSetCtrlLineStateCb
	.word	usbVcpSetBaudRateCb
	.word	usbVcpWriteBuf
	.word	usbVcpBeginWrite
	.word	usbVcpEndWrite
	.section	.text.usbVcpOpen,"ax",%progbits
	.align	1
	.global	usbVcpOpen
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpOpen, %function
usbVcpOpen:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #8
	movs	r0, #27
	bl	IOGetByTag
	mov	r3, r0
	movs	r2, #0
	movs	r1, #37
	mov	r0, r3
	bl	IOInit
	movs	r0, #28
	bl	IOGetByTag
	mov	r3, r0
	movs	r2, #0
	movs	r1, #37
	mov	r0, r3
	bl	IOInit
	bl	usbGenerateDisconnectPulse
	ldr	r3, .L41
	str	r3, [sp]
	ldr	r3, .L41+4
	ldr	r2, .L41+8
	movs	r1, #1
	ldr	r0, .L41+12
	bl	USBD_Init
	ldr	r3, .L41+16
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L41+20
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L42:
	.align	2
.L41:
	.word	USR_cb
	.word	USBD_CDC_cb
	.word	USR_desc
	.word	USB_OTG_dev
	.word	vcpPort
	.word	usbVTable
	.size	usbVcpOpen, .-usbVcpOpen
	.section	.text.usbVcpGetBaudRate,"ax",%progbits
	.align	1
	.global	usbVcpGetBaudRate
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpGetBaudRate, %function
usbVcpGetBaudRate:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	CDC_BaudRate
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbVcpGetBaudRate, .-usbVcpGetBaudRate
	.section	.text.usbVcpIsConnected,"ax",%progbits
	.align	1
	.global	usbVcpIsConnected
	.syntax unified
	.thumb
	.thumb_func
	.type	usbVcpIsConnected, %function
usbVcpIsConnected:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	usbIsConnected
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
	.size	usbVcpIsConnected, .-usbVcpIsConnected
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
