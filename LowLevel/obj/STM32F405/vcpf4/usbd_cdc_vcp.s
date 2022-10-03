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
	.file	"usbd_cdc_vcp.c"
	.text
	.global	USB_OTG_dev
	.section	.bss.USB_OTG_dev,"aw",%nobits
	.align	2
	.type	USB_OTG_dev, %object
	.size	USB_OTG_dev, 1524
USB_OTG_dev:
	.space	1524
	.global	g_lc
	.section	.bss.g_lc,"aw",%nobits
	.align	2
	.type	g_lc, %object
	.size	g_lc, 7
g_lc:
	.space	7
	.global	bDeviceState
	.section	.bss.bDeviceState,"aw",%nobits
	.align	2
	.type	bDeviceState, %object
	.size	bDeviceState, 4
bDeviceState:
	.space	4
	.section	.bss.APP_Tx_Buffer,"aw",%nobits
	.align	2
	.type	APP_Tx_Buffer, %object
	.size	APP_Tx_Buffer, 2048
APP_Tx_Buffer:
	.space	2048
	.section	.bss.APP_Tx_ptr_out,"aw",%nobits
	.align	2
	.type	APP_Tx_ptr_out, %object
	.size	APP_Tx_ptr_out, 4
APP_Tx_ptr_out:
	.space	4
	.section	.bss.APP_Tx_ptr_in,"aw",%nobits
	.align	2
	.type	APP_Tx_ptr_in, %object
	.size	APP_Tx_ptr_in, 4
APP_Tx_ptr_in:
	.space	4
	.section	.bss.ctrlLineStateCb,"aw",%nobits
	.align	2
	.type	ctrlLineStateCb, %object
	.size	ctrlLineStateCb, 4
ctrlLineStateCb:
	.space	4
	.section	.bss.ctrlLineStateCbContext,"aw",%nobits
	.align	2
	.type	ctrlLineStateCbContext, %object
	.size	ctrlLineStateCbContext, 4
ctrlLineStateCbContext:
	.space	4
	.section	.bss.baudRateCb,"aw",%nobits
	.align	2
	.type	baudRateCb, %object
	.size	baudRateCb, 4
baudRateCb:
	.space	4
	.section	.bss.baudRateCbContext,"aw",%nobits
	.align	2
	.type	baudRateCbContext, %object
	.size	baudRateCbContext, 4
baudRateCbContext:
	.space	4
	.global	VCP_fops
	.section	.data.VCP_fops,"aw"
	.align	2
	.type	VCP_fops, %object
	.size	VCP_fops, 20
VCP_fops:
	.word	VCP_Init
	.word	VCP_DeInit
	.word	VCP_Ctrl
	.word	VCP_DataTx
	.word	VCP_DataRx
	.section	.text.VCP_Init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	VCP_Init, %function
VCP_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L3
	movs	r2, #5
	str	r2, [r3]
	ldr	r3, .L3+4
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L3+8
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	bDeviceState
	.word	ctrlLineStateCb
	.word	baudRateCb
	.size	VCP_Init, .-VCP_Init
	.section	.text.VCP_DeInit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	VCP_DeInit, %function
VCP_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	bDeviceState
	.size	VCP_DeInit, .-VCP_DeInit
	.section	.text.ust_cpy,"ax",%progbits
	.align	1
	.global	ust_cpy
	.syntax unified
	.thumb
	.thumb_func
	.type	ust_cpy, %function
ust_cpy:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]	@ unaligned
	ldr	r3, [r7, #4]
	str	r2, [r3]	@ unaligned
	ldr	r3, [r7]
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #4]
	ldr	r3, [r7]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #5]
	ldr	r3, [r7]
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #6]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ust_cpy, .-ust_cpy
	.section	.text.VCP_Ctrl,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	VCP_Ctrl, %function
VCP_Ctrl:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #35
	bhi	.L25
	adr	r2, .L13
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L13:
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L25+1
	.word	.L16+1
	.word	.L15+1
	.word	.L14+1
	.word	.L25+1
	.p2align 1
.L16:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #4]
	cmp	r3, #7
	bne	.L26
	ldr	r3, .L29
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L21
	ldr	r3, .L29
	ldr	r3, [r3]
	ldr	r2, .L29+4
	ldr	r0, [r2]
	ldr	r2, [r7, #20]
	ldr	r2, [r2]	@ unaligned
	mov	r1, r2
	blx	r3
.L21:
	ldr	r1, [r7, #20]
	ldr	r0, .L29+8
	bl	ust_cpy
	b	.L26
.L15:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #4]
	cmp	r3, #7
	bne	.L27
	ldr	r1, .L29+8
	ldr	r0, [r7, #20]
	bl	ust_cpy
	b	.L27
.L14:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L28
	ldr	r3, [r7, #4]
	cmp	r3, #2
	bne	.L28
	ldr	r3, .L29+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L28
	ldr	r3, .L29+12
	ldr	r3, [r3]
	ldr	r2, .L29+16
	ldr	r0, [r2]
	ldr	r2, [r7, #8]
	ldrh	r2, [r2]
	mov	r1, r2
	blx	r3
	b	.L28
.L25:
	nop
	b	.L19
.L26:
	nop
	b	.L19
.L27:
	nop
	b	.L19
.L28:
	nop
.L19:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L30:
	.align	2
.L29:
	.word	baudRateCb
	.word	baudRateCbContext
	.word	g_lc
	.word	ctrlLineStateCb
	.word	ctrlLineStateCbContext
	.size	VCP_Ctrl, .-VCP_Ctrl
	.section	.text.CDC_Send_DATA,"ax",%progbits
	.align	1
	.global	CDC_Send_DATA
	.syntax unified
	.thumb
	.thumb_func
	.type	CDC_Send_DATA, %function
CDC_Send_DATA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	VCP_DataTx
	ldr	r3, [r7]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	CDC_Send_DATA, .-CDC_Send_DATA
	.section	.text.CDC_Send_FreeBytes,"ax",%progbits
	.align	1
	.global	CDC_Send_FreeBytes
	.syntax unified
	.thumb
	.thumb_func
	.type	CDC_Send_FreeBytes, %function
CDC_Send_FreeBytes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L35
	ldr	r2, [r3]
	ldr	r3, .L35+4
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, .L35
	ldr	r1, [r3]
	ldr	r3, .L35+4
	ldr	r3, [r3]
	cmp	r1, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	rsbs	r3, r3, #0
	and	r3, r3, #2048
	add	r3, r3, r2
	subs	r3, r3, #1
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L36:
	.align	2
.L35:
	.word	APP_Rx_ptr_out
	.word	APP_Rx_ptr_in
	.size	CDC_Send_FreeBytes, .-CDC_Send_FreeBytes
	.section	.text.VCP_DataTx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	VCP_DataTx, %function
VCP_DataTx:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	nop
.L38:
	ldr	r3, .L44
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L38
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L39
.L42:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, .L44+4
	ldr	r3, [r3]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L44+8
	strb	r1, [r2, r3]
	ldr	r3, .L44+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ubfx	r3, r3, #0, #11
	ldr	r2, .L44+4
	str	r3, [r2]
	b	.L40
.L41:
	movs	r0, #1
	bl	delay
.L40:
	bl	CDC_Send_FreeBytes
	mov	r3, r0
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L39:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L42
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	USB_Tx_State
	.word	APP_Rx_ptr_in
	.word	APP_Rx_Buffer
	.size	VCP_DataTx, .-VCP_DataTx
	.section	.text.CDC_Receive_DATA,"ax",%progbits
	.align	1
	.global	CDC_Receive_DATA
	.syntax unified
	.thumb
	.thumb_func
	.type	CDC_Receive_DATA, %function
CDC_Receive_DATA:
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
	b	.L47
.L49:
	ldr	r3, .L51
	ldr	r2, [r3]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	ldr	r1, .L51+4
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, .L51
	ldr	r3, [r3]
	adds	r3, r3, #1
	ubfx	r3, r3, #0, #11
	ldr	r2, .L51
	str	r3, [r2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L47:
	ldr	r3, .L51
	ldr	r2, [r3]
	ldr	r3, .L51+8
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L48
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L49
.L48:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L52:
	.align	2
.L51:
	.word	APP_Tx_ptr_out
	.word	APP_Tx_Buffer
	.word	APP_Tx_ptr_in
	.size	CDC_Receive_DATA, .-CDC_Receive_DATA
	.section	.text.CDC_Receive_BytesAvailable,"ax",%progbits
	.align	1
	.global	CDC_Receive_BytesAvailable
	.syntax unified
	.thumb
	.thumb_func
	.type	CDC_Receive_BytesAvailable, %function
CDC_Receive_BytesAvailable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L57
	ldr	r2, [r3]
	ldr	r3, .L57+4
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L54
	ldr	r3, .L57+4
	ldr	r2, [r3]
	ldr	r3, .L57
	ldr	r3, [r3]
	subs	r3, r2, r3
	add	r3, r3, #2048
	b	.L56
.L54:
	ldr	r3, .L57+4
	ldr	r2, [r3]
	ldr	r3, .L57
	ldr	r3, [r3]
	subs	r3, r2, r3
.L56:
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L58:
	.align	2
.L57:
	.word	APP_Tx_ptr_out
	.word	APP_Tx_ptr_in
	.size	CDC_Receive_BytesAvailable, .-CDC_Receive_BytesAvailable
	.section	.text.VCP_DataRx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	VCP_DataRx, %function
VCP_DataRx:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	bl	CDC_Receive_BytesAvailable
	mov	r2, r0
	ldr	r3, [r7]
	add	r3, r3, r2
	cmp	r3, #2048
	bls	.L60
	movs	r3, #2
	b	.L61
.L60:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L62
.L63:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, .L64
	ldr	r3, [r3]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L64+4
	strb	r1, [r2, r3]
	ldr	r3, .L64
	ldr	r3, [r3]
	adds	r3, r3, #1
	ubfx	r3, r3, #0, #11
	ldr	r2, .L64
	str	r3, [r2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L62:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L63
	movs	r3, #0
.L61:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L65:
	.align	2
.L64:
	.word	APP_Tx_ptr_in
	.word	APP_Tx_Buffer
	.size	VCP_DataRx, .-VCP_DataRx
	.section	.text.usbIsConfigured,"ax",%progbits
	.align	1
	.global	usbIsConfigured
	.syntax unified
	.thumb
	.thumb_func
	.type	usbIsConfigured, %function
usbIsConfigured:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L68
	ldr	r3, [r3]
	cmp	r3, #5
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L69:
	.align	2
.L68:
	.word	bDeviceState
	.size	usbIsConfigured, .-usbIsConfigured
	.section	.text.usbIsConnected,"ax",%progbits
	.align	1
	.global	usbIsConnected
	.syntax unified
	.thumb
	.thumb_func
	.type	usbIsConnected, %function
usbIsConnected:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L72
	ldr	r3, [r3]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L73:
	.align	2
.L72:
	.word	bDeviceState
	.size	usbIsConnected, .-usbIsConnected
	.section	.text.CDC_BaudRate,"ax",%progbits
	.align	1
	.global	CDC_BaudRate
	.syntax unified
	.thumb
	.thumb_func
	.type	CDC_BaudRate, %function
CDC_BaudRate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L76
	ldr	r3, [r3]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L77:
	.align	2
.L76:
	.word	g_lc
	.size	CDC_BaudRate, .-CDC_BaudRate
	.section	.text.CDC_SetBaudRateCb,"ax",%progbits
	.align	1
	.global	CDC_SetBaudRateCb
	.syntax unified
	.thumb
	.thumb_func
	.type	CDC_SetBaudRateCb, %function
CDC_SetBaudRateCb:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L79
	ldr	r3, [r7]
	str	r3, [r2]
	ldr	r2, .L79+4
	ldr	r3, [r7, #4]
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L80:
	.align	2
.L79:
	.word	baudRateCbContext
	.word	baudRateCb
	.size	CDC_SetBaudRateCb, .-CDC_SetBaudRateCb
	.section	.text.CDC_SetCtrlLineStateCb,"ax",%progbits
	.align	1
	.global	CDC_SetCtrlLineStateCb
	.syntax unified
	.thumb
	.thumb_func
	.type	CDC_SetCtrlLineStateCb, %function
CDC_SetCtrlLineStateCb:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L82
	ldr	r3, [r7]
	str	r3, [r2]
	ldr	r2, .L82+4
	ldr	r3, [r7, #4]
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L83:
	.align	2
.L82:
	.word	ctrlLineStateCbContext
	.word	ctrlLineStateCb
	.size	CDC_SetCtrlLineStateCb, .-CDC_SetCtrlLineStateCb
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
