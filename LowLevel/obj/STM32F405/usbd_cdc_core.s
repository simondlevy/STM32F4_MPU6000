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
	.file	"usbd_cdc_core.c"
	.text
	.global	usbd_cdc_CfgDesc
	.section	.data.usbd_cdc_CfgDesc,"aw"
	.align	2
	.type	usbd_cdc_CfgDesc, %object
	.size	usbd_cdc_CfgDesc, 67
usbd_cdc_CfgDesc:
	.ascii	"\011\002C\000\002\001\000\3002\011\004\000\000\001\002"
	.ascii	"\002\001\000\005$\000\020\001\005$\001\000\001\004$"
	.ascii	"\002\002\005$\006\000\001\007\005\202\003\010\000\377"
	.ascii	"\011\004\001\000\002\012\000\000\000\007\005\001\002"
	.ascii	"@\000\000\007\005\201\002@\000\000"
	.global	usbd_cdc_OtherCfgDesc
	.section	.bss.usbd_cdc_OtherCfgDesc,"aw",%nobits
	.align	2
	.type	usbd_cdc_OtherCfgDesc, %object
	.size	usbd_cdc_OtherCfgDesc, 67
usbd_cdc_OtherCfgDesc:
	.space	67
	.section	.bss.usbd_cdc_AltSet,"aw",%nobits
	.align	2
	.type	usbd_cdc_AltSet, %object
	.size	usbd_cdc_AltSet, 4
usbd_cdc_AltSet:
	.space	4
	.global	USB_Rx_Buffer
	.section	.bss.USB_Rx_Buffer,"aw",%nobits
	.align	2
	.type	USB_Rx_Buffer, %object
	.size	USB_Rx_Buffer, 64
USB_Rx_Buffer:
	.space	64
	.global	APP_Rx_Buffer
	.section	.bss.APP_Rx_Buffer,"aw",%nobits
	.align	2
	.type	APP_Rx_Buffer, %object
	.size	APP_Rx_Buffer, 2048
APP_Rx_Buffer:
	.space	2048
	.global	CmdBuff
	.section	.bss.CmdBuff,"aw",%nobits
	.align	2
	.type	CmdBuff, %object
	.size	CmdBuff, 8
CmdBuff:
	.space	8
	.global	APP_Rx_ptr_in
	.section	.bss.APP_Rx_ptr_in,"aw",%nobits
	.align	2
	.type	APP_Rx_ptr_in, %object
	.size	APP_Rx_ptr_in, 4
APP_Rx_ptr_in:
	.space	4
	.global	APP_Rx_ptr_out
	.section	.bss.APP_Rx_ptr_out,"aw",%nobits
	.align	2
	.type	APP_Rx_ptr_out, %object
	.size	APP_Rx_ptr_out, 4
APP_Rx_ptr_out:
	.space	4
	.global	APP_Rx_length
	.section	.bss.APP_Rx_length,"aw",%nobits
	.align	2
	.type	APP_Rx_length, %object
	.size	APP_Rx_length, 4
APP_Rx_length:
	.space	4
	.global	USB_Tx_State
	.section	.bss.USB_Tx_State,"aw",%nobits
	.type	USB_Tx_State, %object
	.size	USB_Tx_State, 1
USB_Tx_State:
	.space	1
	.section	.data.cdcCmd,"aw"
	.align	2
	.type	cdcCmd, %object
	.size	cdcCmd, 4
cdcCmd:
	.word	255
	.section	.bss.cdcLen,"aw",%nobits
	.align	2
	.type	cdcLen, %object
	.size	cdcLen, 4
cdcLen:
	.space	4
	.global	USBD_CDC_cb
	.section	.data.USBD_CDC_cb,"aw"
	.align	2
	.type	USBD_CDC_cb, %object
	.size	USBD_CDC_cb, 44
USBD_CDC_cb:
	.word	usbd_cdc_Init
	.word	usbd_cdc_DeInit
	.word	usbd_cdc_Setup
	.word	0
	.word	usbd_cdc_EP0_RxReady
	.word	usbd_cdc_DataIn
	.word	usbd_cdc_DataOut
	.word	usbd_cdc_SOF
	.word	0
	.word	0
	.word	USBD_cdc_GetCfgDesc
	.section	.text.usbd_cdc_Init,"ax",%progbits
	.align	1
	.global	usbd_cdc_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	usbd_cdc_Init, %function
usbd_cdc_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
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
	movs	r3, #3
	movs	r2, #8
	movs	r1, #130
	ldr	r0, [r7, #4]
	bl	DCD_EP_Open
	ldr	r3, .L3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	movs	r2, #2
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L3+4
	ldr	r3, [r3]
	blx	r3
	movs	r3, #64
	ldr	r2, .L3+8
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	DCD_EP_PrepareRx
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L4:
	.align	2
.L3:
	.word	USBD_DeviceDesc
	.word	VCP_fops
	.word	USB_Rx_Buffer
	.size	usbd_cdc_Init, .-usbd_cdc_Init
	.section	.text.usbd_cdc_DeInit,"ax",%progbits
	.align	1
	.global	usbd_cdc_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	usbd_cdc_DeInit, %function
usbd_cdc_DeInit:
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
	movs	r1, #130
	ldr	r0, [r7, #4]
	bl	DCD_EP_Close
	ldr	r3, .L7
	ldr	r3, [r3, #4]
	blx	r3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	VCP_fops
	.size	usbd_cdc_DeInit, .-usbd_cdc_DeInit
	.section	.text.usbd_cdc_Setup,"ax",%progbits
	.align	1
	.global	usbd_cdc_Setup
	.syntax unified
	.thumb
	.thumb_func
	.type	usbd_cdc_Setup, %function
usbd_cdc_Setup:
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
	beq	.L10
	cmp	r3, #32
	bne	.L11
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L13
	ldr	r3, .L23
	ldr	r3, [r3, #8]
	ldr	r2, [r7]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	mov	r0, r2
	ldr	r2, [r7]
	ldrh	r2, [r2, #6]
	ldr	r1, .L23+4
	blx	r3
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r2, r3
	ldr	r1, .L23+4
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L14
.L13:
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L23+8
	str	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r2, r3
	ldr	r3, .L23+12
	str	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r2, r3
	ldr	r1, .L23+4
	ldr	r0, [r7, #4]
	bl	USBD_CtlPrepareRx
	b	.L14
.L12:
	ldr	r3, .L23
	ldr	r3, [r3, #8]
	ldr	r2, [r7]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	mov	r0, r2
	ldr	r2, [r7]
	adds	r1, r2, #2
	movs	r2, #2
	blx	r3
.L14:
	movs	r3, #0
	b	.L15
.L11:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	movs	r3, #2
	b	.L15
.L10:
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #11
	beq	.L16
	cmp	r3, #11
	bgt	.L17
	cmp	r3, #6
	beq	.L18
	cmp	r3, #10
	beq	.L19
	b	.L17
.L18:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	movs	r3, #2
	b	.L15
.L19:
	movs	r2, #1
	ldr	r1, .L23+16
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L17
.L16:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L20
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L23+16
	str	r2, [r3]
	b	.L22
.L20:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
.L22:
	nop
.L17:
	movs	r3, #0
.L15:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	VCP_fops
	.word	CmdBuff
	.word	cdcCmd
	.word	cdcLen
	.word	usbd_cdc_AltSet
	.size	usbd_cdc_Setup, .-usbd_cdc_Setup
	.section	.text.usbd_cdc_EP0_RxReady,"ax",%progbits
	.align	1
	.global	usbd_cdc_EP0_RxReady
	.syntax unified
	.thumb
	.thumb_func
	.type	usbd_cdc_EP0_RxReady, %function
usbd_cdc_EP0_RxReady:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L28
	ldr	r3, [r3]
	cmp	r3, #255
	beq	.L26
	ldr	r3, .L28+4
	ldr	r3, [r3, #8]
	ldr	r2, .L28
	ldr	r0, [r2]
	ldr	r2, .L28+8
	ldr	r2, [r2]
	ldr	r1, .L28+12
	blx	r3
	ldr	r3, .L28
	movs	r2, #255
	str	r2, [r3]
.L26:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L29:
	.align	2
.L28:
	.word	cdcCmd
	.word	VCP_fops
	.word	cdcLen
	.word	CmdBuff
	.size	usbd_cdc_EP0_RxReady, .-usbd_cdc_EP0_RxReady
	.section	.text.usbd_cdc_DataIn,"ax",%progbits
	.align	1
	.global	usbd_cdc_DataIn
	.syntax unified
	.thumb
	.thumb_func
	.type	usbd_cdc_DataIn, %function
usbd_cdc_DataIn:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, .L37
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L31
	ldr	r3, .L37+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L32
	ldr	r3, .L37
	movs	r2, #0
	strb	r2, [r3]
	b	.L31
.L32:
	ldr	r3, .L37+4
	ldr	r3, [r3]
	cmp	r3, #64
	bls	.L33
	ldr	r3, .L37+8
	ldr	r3, [r3]
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #64
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, .L37+8
	ldr	r3, [r3]
	adds	r3, r3, #64
	ldr	r2, .L37+8
	str	r3, [r2]
	ldr	r3, .L37+4
	ldr	r3, [r3]
	subs	r3, r3, #64
	ldr	r2, .L37+4
	str	r3, [r2]
	b	.L34
.L33:
	ldr	r3, .L37+8
	ldr	r3, [r3]
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, .L37+4
	ldr	r3, [r3]
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, .L37+8
	ldr	r2, [r3]
	ldr	r3, .L37+4
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r2, .L37+8
	str	r3, [r2]
	ldr	r3, .L37+4
	movs	r2, #0
	str	r2, [r3]
	ldrh	r3, [r7, #12]
	cmp	r3, #64
	bne	.L34
	ldr	r3, .L37
	movs	r2, #2
	strb	r2, [r3]
.L34:
	ldrh	r3, [r7, #14]
	ldr	r2, .L37+12
	add	r2, r2, r3
	ldrh	r3, [r7, #12]
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	DCD_EP_Tx
	movs	r3, #0
	b	.L35
.L31:
	ldr	r3, .L37
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L36
	movs	r3, #0
	movs	r2, #0
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	DCD_EP_Tx
	ldr	r3, .L37
	movs	r2, #0
	strb	r2, [r3]
.L36:
	movs	r3, #0
.L35:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L38:
	.align	2
.L37:
	.word	USB_Tx_State
	.word	APP_Rx_length
	.word	APP_Rx_ptr_out
	.word	APP_Rx_Buffer
	.size	usbd_cdc_DataIn, .-usbd_cdc_DataIn
	.section	.text.usbd_cdc_DataOut,"ax",%progbits
	.align	1
	.global	usbd_cdc_DataOut
	.syntax unified
	.thumb
	.thumb_func
	.type	usbd_cdc_DataOut, %function
usbd_cdc_DataOut:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
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
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, .L41
	ldr	r3, [r3, #16]
	ldrh	r2, [r7, #14]
	mov	r1, r2
	ldr	r0, .L41+4
	blx	r3
	movs	r3, #64
	ldr	r2, .L41+4
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	DCD_EP_PrepareRx
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L42:
	.align	2
.L41:
	.word	VCP_fops
	.word	USB_Rx_Buffer
	.size	usbd_cdc_DataOut, .-usbd_cdc_DataOut
	.section	.text.usbd_cdc_SOF,"ax",%progbits
	.align	1
	.global	usbd_cdc_SOF
	.syntax unified
	.thumb
	.thumb_func
	.type	usbd_cdc_SOF, %function
usbd_cdc_SOF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L46
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r1, .L46
	str	r2, [r1]
	cmp	r3, #15
	bne	.L44
	ldr	r3, .L46
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	Handle_USBAsynchXfer
.L44:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	FrameCount.0
	.size	usbd_cdc_SOF, .-usbd_cdc_SOF
	.section	.text.Handle_USBAsynchXfer,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Handle_USBAsynchXfer, %function
Handle_USBAsynchXfer:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L57
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L48
	ldr	r3, .L57+4
	ldr	r3, [r3]
	cmp	r3, #2048
	bne	.L50
	ldr	r3, .L57+4
	movs	r2, #0
	str	r2, [r3]
.L50:
	ldr	r3, .L57+4
	ldr	r2, [r3]
	ldr	r3, .L57+8
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L51
	ldr	r3, .L57
	movs	r2, #0
	strb	r2, [r3]
	b	.L48
.L51:
	ldr	r3, .L57+4
	ldr	r2, [r3]
	ldr	r3, .L57+8
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L52
	ldr	r3, .L57+4
	ldr	r3, [r3]
	rsb	r3, r3, #2048
	ldr	r2, .L57+12
	str	r3, [r2]
	b	.L53
.L52:
	ldr	r3, .L57+8
	ldr	r2, [r3]
	ldr	r3, .L57+4
	ldr	r3, [r3]
	subs	r3, r2, r3
	ldr	r2, .L57+12
	str	r3, [r2]
.L53:
	ldr	r3, .L57+12
	ldr	r3, [r3]
	cmp	r3, #64
	bls	.L54
	ldr	r3, .L57+4
	ldr	r3, [r3]
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #64
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, .L57+4
	ldr	r3, [r3]
	adds	r3, r3, #64
	ldr	r2, .L57+4
	str	r3, [r2]
	ldr	r3, .L57+12
	ldr	r3, [r3]
	subs	r3, r3, #64
	ldr	r2, .L57+12
	str	r3, [r2]
	ldr	r3, .L57
	movs	r2, #1
	strb	r2, [r3]
	b	.L55
.L54:
	ldr	r3, .L57+4
	ldr	r3, [r3]
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, .L57+12
	ldr	r3, [r3]
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, .L57+4
	ldr	r2, [r3]
	ldr	r3, .L57+12
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r2, .L57+4
	str	r3, [r2]
	ldr	r3, .L57+12
	movs	r2, #0
	str	r2, [r3]
	ldrh	r3, [r7, #12]
	cmp	r3, #64
	bne	.L56
	ldr	r3, .L57
	movs	r2, #2
	strb	r2, [r3]
	b	.L55
.L56:
	ldr	r3, .L57
	movs	r2, #1
	strb	r2, [r3]
.L55:
	ldrh	r3, [r7, #14]
	ldr	r2, .L57+16
	add	r2, r2, r3
	ldrh	r3, [r7, #12]
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	DCD_EP_Tx
.L48:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L58:
	.align	2
.L57:
	.word	USB_Tx_State
	.word	APP_Rx_ptr_out
	.word	APP_Rx_ptr_in
	.word	APP_Rx_length
	.word	APP_Rx_Buffer
	.size	Handle_USBAsynchXfer, .-Handle_USBAsynchXfer
	.section	.text.USBD_cdc_GetCfgDesc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_cdc_GetCfgDesc, %function
USBD_cdc_GetCfgDesc:
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
	movs	r2, #67
	strh	r2, [r3]	@ movhi
	ldr	r3, .L61
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L62:
	.align	2
.L61:
	.word	usbd_cdc_CfgDesc
	.size	USBD_cdc_GetCfgDesc, .-USBD_cdc_GetCfgDesc
	.section	.bss.FrameCount.0,"aw",%nobits
	.align	2
	.type	FrameCount.0, %object
	.size	FrameCount.0, 4
FrameCount.0:
	.space	4
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
