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
	.file	"usbd_hid_cdc_wrapper.c"
	.text
	.global	USBD_HID_CDC_cb
	.section	.data.USBD_HID_CDC_cb,"aw"
	.align	2
	.type	USBD_HID_CDC_cb, %object
	.size	USBD_HID_CDC_cb, 44
USBD_HID_CDC_cb:
	.word	USBD_HID_CDC_Init
	.word	USBD_HID_CDC_DeInit
	.word	USBD_HID_CDC_Setup
	.word	0
	.word	USBD_HID_CDC_EP0_RxReady
	.word	USBD_HID_CDC_DataIn
	.word	USBD_HID_CDC_DataOut
	.word	USBD_HID_CDC_SOF
	.word	0
	.word	0
	.word	USBD_HID_CDC_GetConfigDescriptor
	.section	.data.USBD_HID_CDC_CfgDesc,"aw"
	.align	2
	.type	USBD_HID_CDC_CfgDesc, %object
	.size	USBD_HID_CDC_CfgDesc, 100
USBD_HID_CDC_CfgDesc:
	.ascii	"\011\002d\000\003\001\000\3002\011\004\000\000\001\003"
	.ascii	"\000\000\000\011!\021\001\000\001\"6\000\007\005\203"
	.ascii	"\003\011\000\012\010\013\001\002\002\002\001\000\011"
	.ascii	"\004\001\000\001\002\002\001\000\005$\000\020\001\005"
	.ascii	"$\001\000\002\004$\002\002\005$\006\001\002\007\005"
	.ascii	"\202\003\010\000\377\011\004\002\000\002\012\000\000"
	.ascii	"\000\007\005\001\002@\000\000\007\005\201\002@\000\000"
	.section	.text.USBD_HID_CDC_Init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_CDC_Init, %function
USBD_HID_CDC_Init:
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
	bl	USBD_HID_Init
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	usbd_cdc_Init
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_CDC_Init, .-USBD_HID_CDC_Init
	.section	.text.USBD_HID_CDC_DeInit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_CDC_DeInit, %function
USBD_HID_CDC_DeInit:
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
	bl	USBD_HID_DeInit
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	usbd_cdc_DeInit
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_CDC_DeInit, .-USBD_HID_CDC_DeInit
	.section	.text.USBD_HID_CDC_Setup,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_CDC_Setup, %function
USBD_HID_CDC_Setup:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	beq	.L6
	cmp	r3, #2
	beq	.L7
	b	.L12
.L6:
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	bne	.L9
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_HID_Setup
	mov	r3, r0
	b	.L10
.L9:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	usbd_cdc_Setup
	mov	r3, r0
	b	.L10
.L7:
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	cmp	r3, #131
	bne	.L11
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_HID_Setup
	mov	r3, r0
	b	.L10
.L11:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	usbd_cdc_Setup
	mov	r3, r0
	b	.L10
.L12:
	movs	r3, #0
.L10:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_CDC_Setup, .-USBD_HID_CDC_Setup
	.section	.text.USBD_HID_CDC_GetConfigDescriptor,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_CDC_GetConfigDescriptor, %function
USBD_HID_CDC_GetConfigDescriptor:
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
	movs	r2, #100
	strh	r2, [r3]	@ movhi
	ldr	r3, .L15
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L16:
	.align	2
.L15:
	.word	USBD_HID_CDC_CfgDesc
	.size	USBD_HID_CDC_GetConfigDescriptor, .-USBD_HID_CDC_GetConfigDescriptor
	.section	.text.USBD_HID_CDC_DataIn,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_CDC_DataIn, %function
USBD_HID_CDC_DataIn:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L18
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	usbd_cdc_DataIn
	mov	r3, r0
	b	.L19
.L18:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_HID_DataIn
	mov	r3, r0
.L19:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_CDC_DataIn, .-USBD_HID_CDC_DataIn
	.section	.text.USBD_HID_CDC_DataOut,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_CDC_DataOut, %function
USBD_HID_CDC_DataOut:
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
	bl	usbd_cdc_DataOut
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_CDC_DataOut, .-USBD_HID_CDC_DataOut
	.section	.text.USBD_HID_CDC_SOF,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_CDC_SOF, %function
USBD_HID_CDC_SOF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	usbd_cdc_SOF
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_CDC_SOF, .-USBD_HID_CDC_SOF
	.section	.text.USBD_HID_CDC_EP0_RxReady,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_HID_CDC_EP0_RxReady, %function
USBD_HID_CDC_EP0_RxReady:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	usbd_cdc_EP0_RxReady
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_HID_CDC_EP0_RxReady, .-USBD_HID_CDC_EP0_RxReady
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
